from django.db import models
from django.core.validators import MinValueValidator
from django.utils import timezone
from django.db.models.signals import post_save
from django.dispatch import receiver

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
        if self.estado.nombre == EstadoBicicleta.TERMINADO: 
            return self.fecha
        return None

@receiver(post_save, sender=Bicicleta)
def crear_garantia_si_terminado(sender, instance, created, **kwargs):
    if instance.estado.nombre == EstadoBicicleta.TERMINADO and created:
        Garantia.objects.create(
            fecha_inicio=instance.fecha,
            fecha_terminacion=instance.fecha_terminacion_garantia(),
            bicicleta=instance
        )

class Garantia(models.Model):
    idGarantia = models.AutoField(primary_key=True)
    fecha_inicio = models.DateField(verbose_name='Fecha de inicio', auto_now_add=True)
    fecha_terminacion = models.DateField(verbose_name='Fecha de terminación')
    bicicleta = models.ForeignKey(Bicicleta, on_delete=models.CASCADE, verbose_name='Bicicleta')

    def __str__(self):
        return f"Garantía de Bicicleta {self.bicicleta.id}"
