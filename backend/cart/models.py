from django.db import models
from products.models import Product
from users.models import UserAccount

class Cart(models.Model):
    user = models.OneToOneField(UserAccount, on_delete=models.CASCADE)
    products = models.ManyToManyField(Product, through='CartItem')
    
    def to_dict(self):
        return {
            'id': self.id,
            'user_id': self.user.id,
            'products': [product.to_dict() for product in self.products.all()]
        }


class CartItem(models.Model):
    cart = models.ForeignKey(Cart, on_delete=models.CASCADE)
    product = models.ForeignKey(Product, on_delete=models.CASCADE)
    quantity = models.PositiveIntegerField(default=1)

    def to_dict(self):
        return {
            'id': self.id,
            'cart_id': self.cart.id,
            'product_id': self.product.id,
            'quantity': self.quantity
        }

