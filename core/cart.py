import json
from decimal import Decimal
from django.conf import settings
from .models import Producto, Suscripcion

DISCOUNT_PERCENTAGE = Decimal(5)

def decimal_serializer(obj):
    if isinstance(obj, Decimal):
        return str(obj)
    raise TypeError(f"Object of type {obj.__class__.__name__} is not JSON serializable")

class Cart:
    def __init__(self, request):
        self.request = request
        self.session = request.session
        cart = self.session.get("cart")
        if cart:
            if isinstance(cart, str):  # Verificar si cart es una cadena de texto
                cart = json.loads(cart)  # Convertir JSON a diccionario
            self.cart = cart
        else:
            self.cart = {}

    def add(self, producto):
        producto_id = str(producto.id)
        if producto_id not in self.cart:
            self.cart[producto_id] = {  
                "producto_id": producto.id,
                "nombre": producto.nombre,
                "stock": 1,
                "precio": Decimal(str(producto.precio)),
                "imagen": producto.imagen.url,
            }    
        else:
            self.cart[producto_id]["stock"] += 1
        self.save()

        
    def save(self):
        json_cart = json.dumps(self.cart, default=decimal_serializer)
        self.request.session["cart"] = json_cart
        self.request.session.modified = True

    def remove(self, producto_id):
        producto_id = str(producto_id)
        if producto_id in self.cart:
            del self.cart[producto_id]
            self.save()

    def decrement(self, producto_id):
        producto_id = str(producto_id)
        if producto_id in self.cart:
            self.cart[producto_id]["stock"] -= 1
            if self.cart[producto_id]["stock"] <= 0:
                self.remove(producto_id)
            else:
                self.save()

    def clear(self):
        self.session["cart"] = {}
        self.session.modified = True

    def __iter__(self):
        producto_ids = self.cart.keys()
        productos = Producto.objects.filter(id__in=producto_ids)
        cart = self.cart.copy()
        for producto in productos:
            cart[str(producto.id)]["producto"] = producto
        for item in cart.values():
            item["precio"] = Decimal(item["precio"])
            item["total"] = item["precio"] * item["stock"]
            yield item

    def __len__(self):
        return sum(item["stock"] for item in self.cart.values())

    def get_total_price(self):
        return sum(
            Decimal(item["precio"]) * item["stock"] for item in self.cart.values()
        )
    


    def get_total_final(self):
        total = sum(
            Decimal(item["precio"]) * item["stock"] for item in self.cart.values()
        )

        if self.request.user.is_authenticated:
            if hasattr(self.request.user, 'suscripcion'):
                descuento = self.request.user.suscripcion.descuento
                total = total - (total * (descuento / 100))
            else:
            # No hay suscripción, devuelve el total sin descuento
                pass

        return total

    def get_descuento(self):
        total = self.get_total_price()

        if self.request.user.is_authenticated and self.request.user.suscripcion:
            descuento = self.request.user.suscripcion.descuento
            total = total * descuento / 100
        else:
        # No está autenticado, devuelve 0 de descuento
            total = 0

        return total
