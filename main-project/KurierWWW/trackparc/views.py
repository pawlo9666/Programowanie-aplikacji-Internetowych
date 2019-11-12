from django.shortcuts import render
from django.http import HttpResponse


def track(request):
    return render(request, 'trackparc/track.html')