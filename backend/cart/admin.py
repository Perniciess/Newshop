from django.contrib import admin
from cart.models import Cart, CartItem
# Register your models here.

@admin.register(Cart)
class CartAdmin(admin.ModelAdmin):
    list_display = ('user', 'display_products')

    def display_products(self, obj):
        return ", ".join([str(product) for product in obj.products.all()])
    display_products.short_description = 'Products'