from django.urls import path
from .views import ProductListView, ProductCreateView, ProductDetailView, ProductDelete

urlpatterns = [
    path('products/', ProductListView.as_view()),
    path('products/add/', ProductCreateView.as_view()),
    path('products/<int:pk>/', ProductDetailView.as_view()),
	path('products/<int:pk>/delete/', ProductDelete.as_view()),
]

