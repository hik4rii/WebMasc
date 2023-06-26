from .models import *
from rest_framework import serializers
from django.contrib.auth.models import User

class TipoProductoSerializer(serializers.ModelSerializer):
    class Meta:
        model = TipoProducto
        fields = '__all__'

class ProductoSerializer(serializers.ModelSerializer):
        # agregar las claves foraneas
    tipo = TipoProductoSerializer(read_only=True)

    class Meta:
        model = Producto
        fields = '__all__'

class SuscripcionSerializer(serializers.ModelSerializer):
    usuario = serializers.SerializerMethodField()

    def get_usuario(self, obj):
        return obj.usuario.username

    class Meta:
        model = Suscripcion
        fields = ['id', 'descuento', 'usuario']

class SeguimientoSerializer(serializers.ModelSerializer):
    usuario = serializers.CharField(source='usuario.username')
    fecha_actualizacion = serializers.DateTimeField(format='%d-%m-%y %H:%M')

    class Meta:
        model = Seguimiento
        fields = ['id', 'usuario', 'estado', 'fecha_actualizacion']