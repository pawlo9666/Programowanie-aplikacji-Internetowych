from django.shortcuts import render
from django.http import HttpResponse


def track(request):
    return HttpResponse('<h1>Śledź paczkę!</h1>')