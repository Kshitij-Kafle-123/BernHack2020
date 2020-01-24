from django.shortcuts import render
from django.views.generic import *

class HomeView(TemplateView):
	template_name='home.html'

