from django.contrib import admin
from .models import Bicicleta
from .models import Garantia
from .models import Marca
# Register your models here.
admin.site.register(Bicicleta)
admin.site.register(Garantia)