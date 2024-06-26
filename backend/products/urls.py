from django.urls import path
from .views import ProductListView, ProductCreateView, ProductDetailView, ProductDelete, ListTypeView, ListBrandView

urlpatterns = [
    path('products/', ProductListView.as_view()),
    path('products/add/', ProductCreateView.as_view()),
    path('products/<int:pk>/', ProductDetailView.as_view()),
	path('products/<int:pk>/delete/', ProductDelete.as_view()),
	path('products/<int:type_id>/type/', ListTypeView.as_view()),
	path('products/<int:brand_id>/brand/', ListBrandView.as_view()),
]

