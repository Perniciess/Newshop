from decimal import Decimal
from django.http import JsonResponse
from .models import Product, Type, Brand
from rest_framework.views import APIView
from .serializers import ProductSerializer
from rest_framework import generics
from rest_framework.permissions import IsAdminUser, AllowAny



class ProductListView(generics.ListAPIView): # фулл список продукта
    permission_classes = [AllowAny] 
    queryset = Product.objects.all()
    serializer_class = ProductSerializer


class ProductCreateView(APIView):# добавление нового продукта
#    permission_classes = [IsAdminUser] убрано из-за проблем с axios, спрятал страничку добавления товара с помощью isModer?
    def post(self, request):
        product = request.data.copy()
        type_name = product.pop('type')[0]
        product_type, _ = Type.objects.get_or_create(name=type_name)

        brand_name = product.pop('brand')[0]
        product_brand, _ = Brand.objects.get_or_create(name=brand_name)
  
        price = product.pop('price')[0]
        product_decimal = Decimal(price)

        image = request.data.get('img')
        name = request.data.get('name')
        product = Product.objects.create(name=name, type=product_type, brand=product_brand, price=product_decimal,img=image)
        return JsonResponse(data={'product': product.to_dict()}, status=201)



    
class ProductDetailView(APIView): # получение конкретного продукта по Id
    permission_classes = [AllowAny]
    def get(self, request, pk):
        product = Product.objects.get(id=pk)
        return JsonResponse({'product': product.to_dict()})


class ProductDelete(generics.RetrieveUpdateDestroyAPIView): # удаление продукта
    permission_classes = [IsAdminUser] 
    queryset = Product.objects.all()
    serializer_class = ProductSerializer

    def destroy(self, request, pk):
       print(request.data)
       self.perform_destroy(self.get_object())
       return JsonResponse({ 'success' : True, 'message': "Deleted"})

