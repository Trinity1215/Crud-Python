from django.db import models
from django.core.validators import MinValueValidator
from django.utils import timezone

class EstadoBicicleta(models.Model):
    PENDIENTE = 'Pendiente'
    EN_PROCESO = 'En proceso'
    TERMINADO = 'Terminado'
    
    ESTADOS_CHOICES = [
        (PENDIENTE, 'Pendiente'),
        (EN_PROCESO, 'En proceso'),
        (TERMINADO, 'Terminado'),
    ]

    nombre = models.CharField(max_length=50, choices=ESTADOS_CHOICES, verbose_name='Nombre del Estado')
    def __str__(self):
        return self.nombre
class Bicicleta(models.Model):
    id = models.AutoField(primary_key=True)
    marca = models.CharField(max_length=100, verbose_name='Marca')
    imagen = models.ImageField(upload_to='imagenes/', verbose_name='Imagen', null=True)
    descripcion = models.TextField(verbose_name='Descripcion', null=True)
    precio = models.DecimalField(max_digits=10, decimal_places=3, validators=[MinValueValidator(0)], verbose_name='Precio')
    fecha = models.DateField(default=timezone.now, verbose_name='Fecha de ingreso')
    estado = models.ForeignKey(EstadoBicicleta, on_delete=models.SET_NULL, null=True)
    def __str__(self):
        return f"Marca: {self.marca} - Descripcion: {self.descripcion}"
    
    def fecha_terminacion_garantia(self):
        if self.estado_id == 3: 
            return self.fecha
        return None
    
class Garantia(models.Model):
    idGarantia = models.AutoField(primary_key=True)
    fecha_inicio = models.DateField(verbose_name='Fecha de inicio')
    fecha_terminacion = models.DateField(verbose_name='Fecha de terminación')
    bicicleta = models.ForeignKey('Bicicleta', on_delete=models.CASCADE, verbose_name='Bicicleta')

    def __str__(self):
        return f"Garantía de Bicicleta {self.bicicleta.id}"

