from rest_framework import serializers
from .models import Product, Type, Brand

class ProductSerializer(serializers.ModelSerializer):
    brand_name = serializers.SerializerMethodField()
    type_name = serializers.SerializerMethodField()

    class Meta:
        model = Product
        fields = ['id', 'name', 'price', 'img', 'brand_name', 'type_name', 'type_id', 'brand_id']

    def get_brand_name(self, obj):
        return obj.brand.name

    def get_type_name(self, obj):
        return obj.type.name
    
    def get_type_id(self, obj):
        return obj.type.id
    
    def get_brand_id(self, obj):
        return obj.brand.id
    
class TypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = Type
        fields = ['id', 'name']


class BrandSerializer(serializers.ModelSerializer):
    class Meta:
        model = Brand
        fields = ['id', 'name']