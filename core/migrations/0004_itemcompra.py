# Generated by Django 3.1.2 on 2023-06-25 02:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_auto_20230624_2201'),
    ]

    operations = [
        migrations.CreateModel(
            name='ItemCompra',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cantidad', models.PositiveIntegerField(default=1)),
                ('compra', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.compra')),
                ('producto', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.producto')),
            ],
        ),
    ]
