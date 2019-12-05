from django.shortcuts import render
from rest_framework import status, generics
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.generics import RetrieveAPIView
from .models import *
from .serializers import *


def track(request):
    return render(request, 'trackparc/track.html')


@api_view(['GET', 'POST'])
def adres_list(request, format=None):
        if request.method == 'GET':
            adres = Adres.objects.all()
            serializer = AdresSerializer(adres, many=True)
            return Response(serializer.data)
        elif request.method == 'POST':
            serializer = AdresSerializer(data=request.data)
            if serializer.is_valid():
                serializer.save()
                return Response(serializer.data, status=status.HTTP_201_CREATED)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


class adres_detail(generics.RetrieveAPIView):
    queryset = Adres.objects.all()
    serializer_class = AdresSerializer

