from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello, world!")


def hello_world(request):
    return HttpResponse("Hello, World!")

# Create your views here.
