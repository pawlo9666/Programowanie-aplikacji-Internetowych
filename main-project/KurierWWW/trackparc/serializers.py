import re
from rest_framework import serializers
from .models import *
# from django.contrib.auth.model import User
#
# class Adres(serializers.Serializer):
#         idAdres = serializers.IntegerField(primary_key=True)
#         ulica = serializers.CharField(max_length=200)
#         nrdomu = serializers.IntegerField()
#         nrmieszkania = serializers.IntegerField()
#         kodpocztowy = serializers.CharField(max_length=6)
#         miasto = serializers.CharField(max_length=45)
#         poczta = serializers.CharField(max_length=45)
#
#         def validate_kodpocztowy(self , value):
#             pat = re.compile("[0-9][0-9]-[0-9][0-9][0-9]")
#             if not (re.search(pat , value)):
#                 raise serializers.ValidationError("Stary ten kod jest 2/10")
#             return value
#
#


class AdresSerializer(serializers.ModelSerializer):
    class Meta:
        model = Adres
        fields = '__all__'

    def validate_kodpocztowy(self, value):
            pat = re.compile("[0-9][0-9]-[0-9][0-9][0-9]")
            if not (re.search(pat, value)):
                raise serializers.ValidationError("Stary ten kod jest 2/10")
            return value


class KlientSerializer(serializers.ModelSerializer):
    class Meta:
        model = Klient
        fields = '__all__'


class DaneKlientSerializer(serializers.ModelSerializer):
    class Meta:
        model = DaneKlient
        fields = '__all__'


class ZlecenieSerializer(serializers.ModelSerializer):
    class Meta:
        model = Zlecenie
        fields = '__all__'


class KierowcySerializer(serializers.ModelSerializer):
    class Meta:
        model = Kierowcy
        fields = '__all__'


class PrzydzialSerializer(serializers.ModelSerializer):
    class Meta:
        model = Przydzial
        fields = '__all__'

#
# class UserSerializer(serializers.ModelSerializer):
#     questions = serializers.PrimaryKeyRelatedField(many=True , queryset=Question.objects.all())
#
#     class Maeta:
#         model = User
#         fields = ['id' , 'username' , 'questions']