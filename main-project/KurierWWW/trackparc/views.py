from django.shortcuts import render
from rest_framework import status, generics
from .serializers import *
from django.contrib.auth.models import User
from .permissions import *


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
    permission_classes = [permissions.IsAuthenticatedOrReadOnly, IsOwnerOrReadOnly]


# class KlientList(generics.ListCreateAPIView):
#     queryset = Klient.objects.all()
#     serializer_class = KlientSerializer
#
#
# class KlientDetail(generics.RetrieveUpdateDestroyAPIView):
#     queryset = Klient.objects.all()
#     serializer_class = KlientSerializer


class DaneKlientList(generics.ListCreateAPIView):
    queryset = DaneKlient.objects.all()
    serializer_class = DaneKlientSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly]

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)


class DaneKlientDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = DaneKlient.objects.all()
    serializer_class = DaneKlientSerializer
    permission_classes = [permissions.IsAuthenticatedOrReadOnly, IsOwnerOrReadOnly]


class KierowcyList(generics.ListCreateAPIView):
    queryset = Kierowcy.objects.all()
    serializer_class = KierowcySerializer
    permission_classes = [permissions.IsAdminUser]


class KierowcyDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Kierowcy.objects.all()
    serializer_class = KierowcySerializer
    permission_classes = [permissions.IsAdminUser]


class PrzydzialList(generics.ListCreateAPIView):
    queryset = Przydzial.objects.all()
    serializer_class = PrzydzialSerializer
    permission_classes = [permissions.IsAdminUser]


class PrzydzialDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Przydzial.objects.all()
    serializer_class = PrzydzialSerializer
    permission_classes = [permissions.IsAdminUser]


class ZlecenieList(generics.ListCreateAPIView):
    queryset = Zlecenie.objects.all()
    serializer_class = ZlecenieSerializer
    permission_classes = [permissions.IsAdminUser]

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)


class ZlecenieDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Zlecenie.objects.all()
    serializer_class = ZlecenieSerializer
    permission_classes = [IsOwnerOrAdmin]


class UserList(generics.ListAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = [permissions.IsAdminUser]


class UserDetail(generics.RetrieveAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = [IsUser]










