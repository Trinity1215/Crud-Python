from django.db import models

class Bicicleta(models.Model):
    id = models.AutoField(primary_key=True)
    marca = models.CharField(max_length=100, verbose_name='Marca')
    imagen = models.ImageField(upload_to='imagenes/', verbose_name='Imagen', null=True)
    descripcion = models.TextField(verbose_name='Descripcion', null=True)

    def __str__(self):
        fila = 'Marca: ' + self.marca + ' - ' + 'Descripcion: ' + self.descripcion
        return fila 
    

    def delete(self, using=None, keep_parets=False):
        self.imagen.storage.delete(self.imagen.name)
        super().delete()
