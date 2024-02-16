from django.urls import path
from . import views

from django.conf import settings
from django.contrib.staticfiles.urls import static

urlpatterns = [
    path('', views.inicio, name='inicio'),
    path('nosotros/', views.nosotros, name='nosotros'),
    path('bicicletas/', views.bicicletas, name='bicicletas'),
    path('bicicletas/crear/', views.crear, name='crear'),
    path('bicicletas/editar/<int:id>/', views.editar, name='editar'),
    path('bicicletas/eliminar/<int:id>/', views.eliminar, name='eliminar'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
