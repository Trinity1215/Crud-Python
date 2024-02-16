# Generated by Django 5.0.2 on 2024-02-16 04:59

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Bicicleta',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('marca', models.CharField(max_length=100, verbose_name='Marca')),
                ('imagen', models.ImageField(null=True, upload_to='imagenes/', verbose_name='Imagen')),
                ('descripcion', models.TextField(null=True, verbose_name='Descripcion')),
            ],
        ),
    ]