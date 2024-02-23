from django.db import models
from django.core.validators import MinValueValidator
from django.utils import timezone

class Bicicleta(models.Model):
    id = models.AutoField(primary_key=True)
    marca = models.CharField(max_length=100, verbose_name='Marca')
    imagen = models.ImageField(upload_to='imagenes/', verbose_name='Imagen', null=True)
    descripcion = models.TextField(verbose_name='Descripcion', null=True)
    precio = models.DecimalField(max_digits=10, decimal_places=3, validators=[MinValueValidator(0)], verbose_name='Precio')
    fecha = models.DateField(default=timezone.now, verbose_name='Fecha de ingreso')

    def __str__(self):
        return f"Marca: {self.marca} - Descripcion: {self.descripcion}"
