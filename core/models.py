from django.db import models
from django.utils import timezone
import datetime
from django.contrib.auth.models import User, AbstractUser


# Create your models here.

class TipoProducto(models.Model):
    descripcion = models.CharField(max_length=25)

    def __str__(self):
        return self.descripcion

class Producto(models.Model):
    id = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=30)
    precio = models.IntegerField()
    stock = models.IntegerField()
    descripcion = models.CharField(max_length=250)
    tipo = models.ForeignKey(TipoProducto, on_delete=models.CASCADE)
    imagen = models.ImageField(null=True, blank=True)

    def __str__(self):
        return self.nombre

class Carrito(models.Model):
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    items = models.ManyToManyField('ItemCarrito', related_name='cart')
    total = models.DecimalField(max_digits=10, decimal_places=2, default=0)

class ItemCarrito(models.Model):
    carrito = models.ForeignKey(Carrito, on_delete=models.CASCADE)
    i_producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField(default=1)
    cantidad_inicial = models.PositiveIntegerField(default=0)
    precio_total = models.DecimalField(max_digits=10, decimal_places=2, default=0)

class Compra(models.Model):
    usuario = models.ForeignKey(User, on_delete=models.CASCADE)
    fecha = models.DateTimeField(auto_now_add=True)
    seguimiento = models.CharField(max_length=100)
    # Otros campos de información de la compra

    def __str__(self):
        return f"Compra #{self.id} - {self.usuario.username}"

class ItemCompra(models.Model):
    compra = models.ForeignKey(Compra, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    cantidad = models.PositiveIntegerField(default=1)
    # Otros campos relevantes para el producto en la compra

    def __str__(self):
        return f"ItemCompra #{self.id} - {self.producto.nombre}"

## Seguimiento
class Seguimiento(models.Model):
    ESTADOS = (
        ('validacion', 'Validación'),
        ('preparacion', 'Preparación'),
        ('reparto', 'Reparto'),
        ('entregado', 'Entregado'),
    )
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    estado = models.CharField(max_length=20, choices=ESTADOS, default='validacion')
    fecha_actualizacion = models.DateTimeField(auto_now=True)

    def __str__(self):
        return f"Seguimiento {self.id} - {self.get_estado_display()}"
    
class Suscripcion(models.Model):
    usuario = models.OneToOneField(User, on_delete=models.CASCADE)
    descuento = models.DecimalField(max_digits=5, decimal_places=0)
    
    def get_descuento(self):
        return self.descuento

    def __str__(self):
        return f"Suscripcion de {self.usuario.username}"
    
############
