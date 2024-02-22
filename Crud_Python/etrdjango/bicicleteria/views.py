from django.shortcuts import render, redirect
from django.http import HttpResponse
from .models import Bicicleta
from .forms import BicicletaForm
from django.urls import reverse
# Create your views here.

def index (request):
    return render(request, 'speed/index.html')

def gallery (request):
    return render(request, 'speed/gallery.html')

def about (request):
    return render(request, 'speed/about.html')

def nosotros(request):
    return render(request, 'nosotros.html')

def bicicletas(request):
    bicicletas = Bicicleta.objects.all()
    return render(request, 'Bicicletas/index.html', {'bicicletas': bicicletas})

def crear(request):
    formulario = BicicletaForm(request.POST or None, request.FILES or None)
    if formulario.is_valid():
        formulario.save()
        return redirect('bicicletas')
    return render(request, 'Bicicletas/crear.html', {'formulario': formulario})

def editar(request, id):
    bicicleta = Bicicleta.objects.get(id=id)
    formulario = BicicletaForm(request.POST or None, request.FILES or None, instance=bicicleta)
    if formulario.is_valid() and request.POST:
        formulario.save()
        return redirect('bicicletas')
    return render(request, 'Bicicletas/editar.html', {'formulario': formulario})

def eliminar(request, id):
    bicicleta = Bicicleta.objects.get(id=id)
    bicicleta.delete()
    return redirect ('bicicletas')
