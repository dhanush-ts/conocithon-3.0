from django.urls import path
from features.api.views import CategoryListAV, UserListAV, UserDetailAV, TransactionAV, Login, ParkingAV, CategoryDataDetails, TransactionUser

urlpatterns = [
    path('user/<int:pk>/', UserDetailAV.as_view(), name='user-detail'),
    path('user/', UserListAV.as_view(), name='user-list'),
    path('login/', Login.as_view(), name='login'),
    ]