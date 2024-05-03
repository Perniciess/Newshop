
from django.http import JsonResponse
from .models import Cart, CartItem
from products.models import Product
from products.serializers import ProductSerializer
from django.shortcuts import get_object_or_404
from rest_framework.views import APIView
from .models import Cart, CartItem, Product
from rest_framework.permissions import IsAuthenticated
from .serializers import CartItemSerializer
from rest_framework import generics

class AddToCartView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, product_id):
        quantity = request.data.get('quantity', 1) # По умолчанию 1 товар
        product = get_object_or_404(Product, pk=product_id)
        user = request.user
        cart, created = Cart.objects.get_or_create(user=user)
        cart_item, created = CartItem.objects.get_or_create(cart=cart, product=product)
        return JsonResponse(data={'cartitem': cart.to_dict()}, status=201)


class CartView(APIView):
    permission_classes = [IsAuthenticated]
    def get(self, request, *args, **kwargs):
        user = request.user
        cart, created = Cart.objects.get_or_create(user=user)
        cart_items = CartItem.objects.filter(cart=cart)
        products = [item.product for item in cart_items]
        serializer = ProductSerializer(products, many=True)
        data = serializer.data
        for product in data:
            product['img'] = "http://localhost:8000" + product['img']
        return JsonResponse(data=data, safe=False)
    


class RemoveFromCartView(APIView):
    permission_classes = [IsAuthenticated]

    def post(self, request, product_id):
        cart = Cart.objects.get(user=request.user)
        cart_item = CartItem.objects.get(cart=cart, product_id=product_id)
        cart_item.delete()
        return JsonResponse({ 'success' : True, 'message': "Deleted"})