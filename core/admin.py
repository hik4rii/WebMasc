from django.contrib import admin
from .models import *
from django.contrib.auth.admin import UserAdmin as BaseUserAdmin
from django.contrib.auth.models import User
from .forms import *

class CustomUserAdmin(BaseUserAdmin):
    list_display = ('username', 'email', 'first_name', 'last_name',  'get_groups')

    def get_groups(self, obj):
        return ", ".join([group.name for group in obj.groups.all()])
    get_groups.short_description = 'Grupo'


class ProductoAdmin(admin.ModelAdmin):
    list_display = ['id', 'nombre', 'precio', 'stock', 'descripcion', 'tipo']
    search_fields = ['nombre']
    list_per_page = 10
    list_filter = ['id', 'tipo']
    list_editable = ['precio', 'stock', 'descripcion', 'tipo']
    ordering = ['id']

class SeguimientoAdmin(admin.ModelAdmin):
    list_display=['id','estado', 'fecha_actualizacion']
    list_editable = ['estado']

class ItemCarritoInline(admin.TabularInline):
    model = ItemCarrito
    fk_name = 'carrito'  # Utiliza el nombre correcto del campo que representa la relación
    fk_namec = 'producto'

class CarritoAdmin(admin.ModelAdmin):
    inlines = [ItemCarritoInline]

admin.site.unregister(User)
admin.site.register(User, CustomUserAdmin)
admin.site.register(Carrito, CarritoAdmin)
admin.site.register(Producto, ProductoAdmin)
admin.site.register(TipoProducto)
admin.site.register(Seguimiento, SeguimientoAdmin)
admin.site.register(Suscripcion)
admin.site.site_header = 'PetStoreDuoc'
