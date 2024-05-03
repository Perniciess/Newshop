from django.db import models
from users.models import UserAccount
from cart.models import CartItem
# Create your models here.


class Payment(models.Model):
    transaction = models.CharField(max_length=255)
    date = models.DateField()

    
class Order(models.Model):
    STATUS_CHOICES = (
        ('Pending', 'Pending'),
        ('Processing', 'Processing'),
        ('Completed', 'Completed'),
        ('Cancelled', 'Cancelled'),
    )
    
    user_id = models.ForeignKey(UserAccount, on_delete=models.CASCADE)
    status = models.CharField(max_length=100, choices=STATUS_CHOICES, default='Pending')
    address = models.CharField(max_length=255)
    payment = models.ForeignKey(Payment, on_delete=models.CASCADE)
    
	
class Order_item(models.Model):
    order_id = models.ForeignKey(Order, on_delete=models.CASCADE)
    product_id = models.ForeignKey(CartItem, on_delete=models.CASCADE)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    quantity = models.PositiveIntegerField()

