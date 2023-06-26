from django.shortcuts import render, redirect, get_object_or_404
from .models import *
from .forms import *
from django.contrib import messages
from django.core.paginator import Paginator
from django.contrib.auth.decorators import login_required, user_passes_test
from django.views.decorators.csrf import csrf_exempt
from decimal import Decimal
import requests
from rest_framework import viewsets
from .serializers import *
from .cart import Cart
from .forms import NewUserForm
from django.contrib.auth import login
from django.contrib import messages
from django.http import HttpResponseNotFound
from django.http import JsonResponse
from django.http import HttpResponse
import time
from django.contrib.auth.views import LoginView, LogoutView

class ProductoViewset(viewsets.ModelViewSet):
    queryset = Producto.objects.all()
    serializer_class = ProductoSerializer
class SuscripcionViewset(viewsets.ModelViewSet):
    queryset = Suscripcion.objects.all()
    serializer_class = SuscripcionSerializer
class TipoProductoViewset(viewsets.ModelViewSet):
    queryset = TipoProducto.objects.all()
    serializer_class = TipoProductoSerializer
class SeguimientoViewSet(viewsets.ModelViewSet):
    queryset = Seguimiento.objects.all()
    serializer_class = SeguimientoSerializer

######### VALIDADOR
def es_vendedor_o_admin(user):
    return user.groups.filter(name__in=['Vendedor', 'Administrador']).exists()
def solo_admin(user):
    return user.groups.filter(name__in=['Administrador']).exists()
##########3


def index(request):
    productosAll = Producto.objects.all() ## SELECT * FROM producto
    page = request.GET.get('page', 1) # OBTENEMOS LA VARIABLE DE LA URL, SI NO EXISTE NADA DEVUELVE 1
    response = requests.get('https://dog.ceo/api/breeds/image/random')
    data = response.json()
    try:
        paginator = Paginator(productosAll, 3)
        productosAll = paginator.page(page)
    except:
        raise 

    data = {
        'listado': productosAll,
        'paginator': paginator,
        'imagen' : data
    }

    return render(request, 'core/index.html', data )

#CRUD
@login_required
@user_passes_test(es_vendedor_o_admin, login_url='error404')
def add(request):
    if request.method == 'POST':
        formulario = ProductosForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Producto almacenado correctamente") # Redirige a la página de lista de productos
    else:
        formulario = ProductosForm()

    data = {
        'form': formulario
    }

    return render(request, 'core/add-product.html', data)

@login_required
@user_passes_test(es_vendedor_o_admin)
def update(request, id):
    producto = Producto.objects.get(id=id) ## ESTO ES UN SELECT CON UN WHERE 
    data = {
        'form' : ProductosForm(instance=producto)
    }
    if request.method == 'POST' :
        formulario = ProductosForm(data=request.POST, instance=producto, files=request.FILES) ## CAPTURAMOS LA INFO DEL FORMULARIO
        if formulario.is_valid():
            formulario.save() ## INSERT INTO producto VALUES ()
            #data['msj'] = "Producto actualizado Correctamente"
            messages.success(request, "Producto modificado correctamente")
            data['form'] = formulario ## PARA MOSTRAR EN LA VISTA LOS CAMBIOS

    return render(request, 'core/update-product.html', data)

@login_required
@user_passes_test(es_vendedor_o_admin, login_url='error404')
def delete(request, id):
    producto = Producto.objects.get(id=id) ## ESTO ES UN SELECT CON UN WHERE 
    messages.success(request, "Producto Eliminado Correctamente")
    producto.delete()
    
    return redirect(to='trabajador')
# Create your views here.

### productos de la tienda
@login_required
def shop(request):
    response = requests.get('http://127.0.0.1:8000/api/productos/')
    data = response.json()
    data = {
        'listado' : data
    }
    return render(request, 'core/shop.html', data)


@login_required
def perro(request):
    productosAll = Producto.objects.all() ## SELECT * FROM producto
    data = {
        'listado' : productosAll
    }

    return render(request, 'core/perro.html',data)

@login_required
def gato(request):
    productosAll = Producto.objects.all() ## SELECT * FROM producto
    data = {
        'listado' : productosAll
    }
    return render(request, 'core/gato.html',data)

@login_required
def exotico(request):
    productosAll = Producto.objects.all() ## SELECT * FROM producto
    data = {
        'listado' : productosAll
    }
    return render(request, 'core/exotico.html',data)


############################################################################################

####### TRABAJADOR ############
@login_required
@user_passes_test(es_vendedor_o_admin, login_url='error404')
def worker(request):
    productosAll = Producto.objects.all() ## SELECT * FROM producto
    data = {
        'listado' : productosAll
    }
    return render(request, 'core/worker.html', data)

def error404(request):
    return render(request, 'core/error404.html')
###### FIN TRABAJADOR #########

def about(request):
    return render(request, ('core/about.html'))


@login_required
def cart(request):
    response = requests.get('https://mindicador.cl/api/dolar')
    moneda = response.json()
    valor_dolar = moneda['serie'][0]['valor']  # Valor del dólar actual

    cart = Cart(request)
    cart_items = []

    for item in cart.cart.values():
        cart_items.append({
            'image': item['image'],
            'nombre': item['nombre'],
            'precio': item['precio'],
            'stock': item['stock'],
            'total': float(item['precio']) * item['stock']
        })

    total_carrito = sum(item['total'] for item in cart_items)
    valor = total_carrito / valor_dolar
    valor = round(valor, 2)

    context = {
        'cart_items': cart_items,
        'valor': valor
    }

    return render(request, ('core/cart.html', context))

def contact(request):
    return render(request, ('core/contact.html'))

@login_required
def checkout(request):
    return render(request, ('core/checkout.html'))

@login_required
def thankyou(request):
    return render(request, ('core/thankyou.html'))

def register(request):
	if request.method == "POST":
		form = NewUserForm(request.POST)
		if form.is_valid():
			user = form.save()
			login(request, user)
			messages.success(request, "Registration successful." )
			return redirect('index')
		messages.error(request, "Unsuccessful registration. Invalid information.")
	form = NewUserForm()
	return render (request=request, template_name="registration/register.html", context={"register_form":form})


#############################
def shop_api(request):
    #realizamos solicitud al api
    response = requests.get('http://127.0.0.1:8000/api/productos/')
    response2 = requests.get('https://mindicador.cl/api/')
    response3 = requests.get('https://rickandmortyapi.com/api/character')
    
    data = response.json()
    data2 = response2.json()
    aux = response3.json()
    personajes = aux['results']
        #productosAll = Producto.objects.all() ## SELECT * FROM producto
    data = {
        'listado' : data,
        'moneda' : data2,
        'personajes' : personajes,
    }
    return render(request, 'core/shop-api.html', data)



#################################
@login_required
def añadir_carro(request, producto_id):
    cart = Cart(request)
    producto = get_object_or_404(Producto, id=producto_id)
    cart.add(producto)
    cart.save() 
    return redirect("cart")
@login_required
def remover_carro(request, producto_id):
    cart = Cart(request)
    cart.remove(producto_id)
    cart.save() 
    return redirect("cart")
@login_required
def decrementar_item(request, producto_id):
    cart = Cart(request)
    cart.decrement(producto_id)
    cart.save() 
    return redirect("cart")
@login_required
def borrar_todo(request):
    cart = Cart(request)
    cart.clear()
    return redirect("cart")

@login_required
def cart(request):
    cart = Cart(request)
    response2 = requests.get('https://mindicador.cl/api/')
    data2 = response2.json()

    total_final = cart.get_total_final()
    total_paypal = cart.get_total_final() / Decimal(str(data2['dolar']['valor']))
    data = {
        'moneda': data2,
        'cart': cart,
        'total_final': total_final,
        'total_paypal' : total_paypal,
    }
    return render(request, "core/cart.html", data)


################  Seguimiento ################################

    
## Seguimiento
@login_required
def crear_seguimiento(request): 
    usuario = request.user

    # Verificar si el usuario ya tiene un seguimiento
    if Seguimiento.objects.filter(usuario=usuario).exists():
        return redirect('seguimiento_list')

    # Crear un nuevo seguimiento para el usuario con estado de validación
    seguimiento = Seguimiento(usuario=usuario, estado='validacion')
    seguimiento.save()

    return redirect('seguimiento_list')

@login_required 
def seguimiento_list(request):
    seguimientos = Seguimiento.objects.all()
    return render(request, 'seguimiento/list.html', {'seguimientos': seguimientos})

@login_required
@user_passes_test(solo_admin, login_url='error404')
def cambiar_estado(request, seguimiento_id):
    seguimiento = get_object_or_404(Seguimiento, id=seguimiento_id)

    if request.method == 'POST':
        nuevo_estado = request.POST.get('nuevo_estado')
        seguimiento.estado = nuevo_estado
        seguimiento.save()
        return redirect('seguimiento_list')

    return render(request, 'seguimiento/cambiar_estado.html', {'seguimiento': seguimiento})

@login_required
def crear_suscripcion(request):
    usuario = request.user

    # Verificar si el usuario ya tiene una suscripción
    if Suscripcion.objects.filter(usuario=usuario).exists():
        return redirect('subscripcion')

    # Crear una nueva suscripción para el usuario
    suscripcion = Suscripcion(usuario=usuario, descuento=10)
    suscripcion.save()

    return redirect('subscripcion')

@login_required
def subscripcion (request):
    response2 = requests.get('https://mindicador.cl/api/')
    data2 = response2.json()

    data = {
        'moneda' : data2,
    }
    return render(request, 'core/subscripcion.html', data)

@login_required
def cancelar_suscripcion(request):
    usuario = request.user

    # Verificar si el usuario tiene una suscripción
    try:
        suscripcion = Suscripcion.objects.get(usuario=usuario)
    except Suscripcion.DoesNotExist:
        return redirect('subscripcion')

    # Cancelar la suscripción
    suscripcion.delete()

    return redirect('subscripcion')

class CustomLoginView(LoginView):
    def form_valid(self, form):
        # Verificar si hay un carrito guardado en la sesión
        if 'cart' in self.request.session:
            cart_data = self.request.session['cart']
            # Restaurar el carrito desde los datos guardados
            cart = Cart(self.request)
            cart.cart = cart_data
        else:
            # Si no hay un carrito guardado, crear uno nuevo
            cart = Cart(self.request)

        # Lógica adicional de inicio de sesión si es necesario

        # Guardar el carrito en la sesión antes de iniciar sesión
        self.request.session['cart'] = cart.cart

        return super().form_valid(form)

class CustomLogoutView(LogoutView):
    def dispatch(self, request, *args, **kwargs):
        # Guardar el carrito en la sesión antes de cerrar sesión
        cart = Cart(request)
        request.session['cart'] = cart.cart

        return super().dispatch(request, *args, **kwargs)

###### COMPRAS Y SEGUIMIENTO JUNTOS   
@login_required
def historial_compras(request):
    compras = Compra.objects.filter(usuario=request.user)
    data = {
        'compras': compras,
    }
    return render(request, "core/historial_compras.html", data)

@login_required
def crear_compra(request):
    usuario = request.user
    cart = request.session.get("cart")
    
    if cart and isinstance(cart, dict):  # Verificar que cart sea un diccionario
        productos_carrito = []
        for item in cart.values():
            producto = Producto.objects.get(id=item["producto_id"])
            productos_carrito.append({
                'producto': producto,
                'cantidad': item.get("stock", 0), 
                # Otros campos relevantes del producto en la compra
            })

        # Crear la compra con estado de validación
        compra = Compra(usuario=usuario, estado='Validación')
        compra.save()

        for producto_carrito in productos_carrito:
            # Guardar el producto en la base de datos
            producto = producto_carrito['producto']
            cantidad = producto_carrito['cantidad']
            # Otros campos relevantes del producto en la compra

            # Asociar el producto a la compra
            compra.productos.add(producto, through_defaults={'cantidad': cantidad})
            # También puedes crear instancias de ItemCompra si necesitas más campos específicos

        # Limpiar el carrito
        request.session["cart"] = {}
        request.session.modified = True

        return redirect("historial_compras")

    return redirect("pago_fallido")
