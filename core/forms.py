from django import forms
from django.forms import ModelForm
from .models import *
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
## Para crear un template de un formulario

class ProductosForm(ModelForm):
    nombre = forms.CharField(min_length=4, widget=forms.TextInput(attrs={"placeholder": "Ingrese Nombre"}))
    precio = forms.IntegerField(min_value=0, widget=forms.NumberInput(attrs={"placeholder": "Ingrese Precio"}))
    stock = forms.IntegerField(min_value=0, widget=forms.NumberInput(attrs={"placeholder": "Ingrese Stock"}))
    descripcion = forms.CharField(min_length=10, max_length=200, widget=forms.Textarea(attrs={"rows": 4}))

    class Meta:
        model = Producto
        fields = '__all__'
    


# Create your forms here.

class NewUserForm(UserCreationForm):
	email = forms.EmailField(required=True)

	class Meta:
		model = User
		fields = ("username", "email", "password1", "password2")

	def save(self, commit=True):
		user = super(NewUserForm, self).save(commit=False)
		user.email = self.cleaned_data['email']
		if commit:
			user.save()
		return user




#####################


