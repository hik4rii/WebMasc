# Generated by Django 3.1.2 on 2023-06-25 02:56

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_itemcompra'),
    ]

    operations = [
        migrations.RenameField(
            model_name='itemcarrito',
            old_name='producto',
            new_name='i_producto',
        ),
    ]
