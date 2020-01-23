from django.urls import path
from . import views
from rest_framework.urlpatterns import format_suffix_patterns

urlpatterns = [
    path('', views.track, name='trace-home'),
    # path('adres/', views.adres_list),
    path('adres/', views.AdresList.as_view()),
    path('adres/<int:pk>/', views.AdresDetail.as_view()),
    path('kierowcy', views.KierowcyList.as_view()),
    path('kierowcy/<int:pk>/', views.KierowcyDetail.as_view()),
    path('przydzial/', views.PrzydzialList.as_view()),
    path('przydzial/<int:pk>/', views.PrzydzialDetail.as_view()),
    path('klient/', views.KlientList.as_view()),
    path('klient/<int:pk>/', views.KlientDetail.as_view()),
    path('daneklient/', views.DaneKlientList.as_view()),
    path('daneklient/<int:pk>/', views.DaneKlientDetail.as_view()),
    path('users/', views.UserList.as_view()),
    path('users/<int:pk>/', views.UserDetail.as_view()),
    path('zlecenie/' , views.ZlecenieList.as_view()),
    path('zlecenie/<int:pk>/' , views.ZlecenieDetail.as_view())

]
