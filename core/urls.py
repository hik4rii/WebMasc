##VIEWS - URL - HTML
from django.urls import path, include
from .views import *
from rest_framework import routers
from django.contrib.auth.views import LoginView, LogoutView
from . import views


# para crear el api
router = routers.DefaultRouter()
router.register('productos', ProductoViewset)
router.register('Tipos de producto', TipoProductoViewset)
router.register('suscripciones', SuscripcionViewset)
router.register('seguimientos', SeguimientoViewSet)

urlpatterns = [
    path('', index, name="index"),
    path('shop/', shop, name="shop"),
    path('worker/', worker, name="trabajador"),
    path('about/', about, name="about"),
    path('perro/', perro, name="perro"),
    path('cart/', cart, name="cart"),
    path('contact/', contact, name="contact"),
    path('checkout/', checkout, name="checkout"),
    path('gato/', gato, name="gato"),
    path('exotico/', exotico, name="exotico"),
    path('thankyou/', thankyou, name="thankyou"),
    path("register/", register, name="register"),
    #CRUD
    path('add/', add, name="add"),
    path('update/<id>/', update, name="update"),
    path('delete/<id>/', delete, name="delete"),
    #api
    path('api/', include(router.urls)),
    path('shop-api/', shop_api, name="shop-api"),
    ## CRUD CARRO
    path('añadir_carro/<int:producto_id>/', añadir_carro, name='añadir_carro'),
    path('remover_carro/<int:producto_id>/', remover_carro, name='remover_carro'),
    path('decrementar_item/<int:producto_id>/', decrementar_item, name='decrementar_item'),
    path('borrar_todo/', borrar_todo, name='borrar_todo'),
    #############
    path('error404/', error404, name='error404'),
     #seguimiento
    path('crear_seguimiento/', crear_seguimiento, name='crear_seguimiento'),
    path('seguimiento/', views.seguimiento_list, name='seguimiento_list'),
    path('seguimiento/<int:seguimiento_id>/', views.cambiar_estado, name='cambiar_estado'),
    #suscripcion
    path('subscripcion/', subscripcion, name='subscripcion'),
    path('crear_suscripcion/', crear_suscripcion, name='crear_suscripcion'),
    path('cancelar_suscripcion/', cancelar_suscripcion, name='cancelar_suscripcion'),
    path('crear_compra/', views.crear_compra, name='crear_compra'),
    path('historial_compras/', historial_compras, name='historial_compras'),
]