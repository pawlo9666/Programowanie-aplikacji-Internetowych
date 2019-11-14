from django.db import models
from django import forms


# class Adres(models.Model):
#     idAdres = models.IntegerField(primary_key=True)
#     ulica = models.CharField(max_length=200)
#     nrdomu = models.IntegerField()
#     nrmieszkania = models.IntegerField()
#     kodpocztowy = models.CharField(max_length=6)
#     miasto = models.CharField(max_length=45)
#     poczta = models.CharField(max_length=45)
#
#     def __str__(self):
#         return self.idAdres
#
#
# class Klient(models.Model):
#     idKlient = models.IntegerField(primary_key=True)
#     idAdres = models.ForeignKey(Adres, on_delete=models.CASCADE)    # cascade zmienic
#
#     def __str__(self):
#         return self.idKlienta   # tutaj mozna chyba dodać jakoś fajnie żeby wywalałoz... nwm
#
#
# class DaneKlient(models.Model):
#     idKlient = models.ForeignKey(Klient, on_delete=models.CASCADE)  #cascade zmienić
#     indiwid = "IND"
#     firmowy = "FIRM"
#     typ = [
#         (indiwid, 'Indywidualny'),
#         (firmowy, 'Firmowy')
#     ]
#     email = models.EmailField(max_length=254)
#     nazwa = models.CharField(max_length=200)
#     nip = models.CharField(max_length=200)
#     login = models.CharField(max_length=200)
#     haslo = models.CharField(widget=forms.PasswordInput)    # to pewnie trezbabędzie poprawić
#
#     def __str__(self):
#         return self.nazwa
#
#
# class Zlecenie(models.Model):
#     idPaczka = models.IntegerField(primary_key=True)
#     idAdresNadawca = models.ForeignKey(Adres, on_delete=models.CASCADE)
#     idAdresOdbiorca = models.ForeignKey(Adres, on_delete=models.CASCADE)
#     stanZlecenie = models.CharField(max_length=150)
#     typPaczka = models.CharField(max_length=150)
#     komentarz = models.TextField(max_length=500)
#
#     def __str__(self):
#         return self.idPaczka
#
#
# class Kierowcy(models.Model):
#     idKierowcy = models.IntegerField(primary_key=True)
#     imie = models.CharField(max_length=200)
#     nazwisko = models.CharField(max_length=200)
#     dataZatrudnienia = models.DateField(auto_now=True)
#     dataBadanie = models.DateField()
#
#
# class Przydzial(models.Model):
#     idPaczka = models.ForeignKey(Zlecenie, on_delete=models.CASCADE)
#     idKierowcy = models.ForeignKey(Kierowcy, on_delete=models.CASCADE)
