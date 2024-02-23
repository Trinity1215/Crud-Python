from django import forms
from .models import Bicicleta

class BicicletaForm(forms.ModelForm):
    descripcion = forms.CharField(label='Descripción', widget=forms.Textarea(attrs={'rows': 5, 'cols': 50}))

    class Meta:
        model = Bicicleta
        fields = ['marca', 'imagen', 'descripcion']
        widgets = {
            'fecha': forms.DateInput(attrs={'type': 'date'})
        }
