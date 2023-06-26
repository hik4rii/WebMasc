from django.contrib.auth.models import User, Group
from django.db.models.signals import post_save, m2m_changed
from django.dispatch import receiver

@receiver(post_save, sender=User)
def assign_user_to_groups(sender, instance, created, **kwargs):
    if created:
        # Nuevo usuario registrado, asignarlo al grupo de clientes por defecto
        group = Group.objects.get(name='cliente')
        instance.groups.add(group)

        # Verificar si el usuario es staff
        if instance.is_staff:
            # Usuario con permisos de staff, asignarlo al grupo de vendedores
            group = Group.objects.get(name='vendedor')
            instance.groups.add(group)

        # Verificar si el usuario es superusuario
        if instance.is_superuser:
            # Usuario con permisos de superusuario, asignarlo al grupo de administradores
            group = Group.objects.get(name='administrador')
            instance.groups.add(group)

