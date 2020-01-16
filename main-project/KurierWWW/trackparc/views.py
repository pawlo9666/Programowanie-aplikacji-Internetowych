from django.shortcuts import render
from rest_framework import status, generics
from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework.generics import RetrieveAPIView
from .models import *
from .serializers import *
from django.contrib.auth.models import User
from rest_framework import permissions


def track(request):
    return render(request, 'trackparc/track.html')


# @api_view(['GET', 'POST'])
# def adres_list(request, format=None):
#         if request.method == 'GET':
#             adres = Adres.objects.all()
#             serializer = AdresSerializer(adres, many=True)
#             return Response(serializer.data)
#         elif request.method == 'POST':
#             serializer = AdresSerializer(data=request.data)
#             if serializer.is_valid():
#                 serializer.save()
#                 return Response(serializer.data, status=status.HTTP_201_CREATED)
#             return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class AdresList(generics.ListCreateAPIView):
    queryset = Adres.objects.all()
    serializer_class = AdresSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly]

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)


class AdresDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Adres.objects.all()
    serializer_class = AdresSerializer

class KlientList(generics.ListCreateAPIView):
    queryset = Klient.objects.all()
    serializer_class = AdresSerializer

class KlientDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Klient.objects.all()
    serializer_class = AdresSerializer


class DaneKlientList(generics.ListCreateAPIView):
    queryset = DaneKlient.objects.all()
    serializer_class = AdresSerializer


class DaneKlientDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = DaneKlient.objects.all()
    serializer_class = AdresSerializer

class KierowcyList(generics.ListCreateAPIView):
    queryset = Kierowcy.objects.all()
    serializer_class = AdresSerializer


class KierowcyDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Kierowcy.objects.all()
    serializer_class = AdresSerializer

class PrzydzialList(generics.ListCreateAPIView):
    queryset = Przydzial.objects.all()
    serializer_class = AdresSerializer


class PrzydzialDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Przydzial.objects.all()
    serializer_class = AdresSerializer

class ZlecenieList(generics.ListCreateAPIView):
    queryset = Zlecenie.objects.all()
    serializer_class = AdresSerializer


class ZlecenieDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Zlecenie.objects.all()
    serializer_class = AdresSerializer

class UserList(generics.ListAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class UserDetail(generics.RetrieveAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer












