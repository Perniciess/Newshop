from django.urls import path
from .views import AddToCartView, CartView, RemoveFromCartView

urlpatterns = [
    path('cart/add/<int:product_id>/', AddToCartView.as_view()),
	path('cart/user/', CartView.as_view()),
    path('cart/<int:product_id>/delete/', RemoveFromCartView.as_view()),
]