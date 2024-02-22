from django.urls import path
from . import views
from etrdjango.urls import admin

from django.conf import settings
from django.contrib.staticfiles.urls import static

urlpatterns = [
    path('', views.index, name='index'),
    path('', views.gallery, name='gallery'),
    path('', views.about, name='about'),
    path('nosotros/', views.nosotros, name='nosotros'),
    path('bicicletas/', views.bicicletas, name='bicicletas'),
    path('bicicletas/crear/', views.crear, name='crear'),
    path('bicicletas/editar/<int:id>/', views.editar, name='editar'),
    path('bicicletas/eliminar/<int:id>/', views.eliminar, name='eliminar'),
    path('admin/', admin.site.urls, name="admin"),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
