from django.urls import path
from .views import (
    CustomTokenObtainPairView,
    CustomTokenRefreshView,
    CustomTokenVerifyView,
    LogoutView,
	AccessTokenView,
    RegisterView
)

urlpatterns = [
    path('jwt/create/', CustomTokenObtainPairView.as_view()),
    path('jwt/refresh/', CustomTokenRefreshView.as_view()),
    path('jwt/verify/', CustomTokenVerifyView.as_view()),
    path('logout/', LogoutView.as_view()),
	path('register/', RegisterView.as_view()),
	path('jwt/token/', AccessTokenView.as_view()),
]