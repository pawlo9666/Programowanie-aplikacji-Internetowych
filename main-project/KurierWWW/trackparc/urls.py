from django.urls import path
from . import views
from rest_framework.urlpatterns import format_suffix_patterns

urlpatterns = [
    path('', views.track, name='trace-home'),
    path('adres/', views.adres_list),
]
