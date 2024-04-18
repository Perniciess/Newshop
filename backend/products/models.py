from django.db import models


class Type(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name

class Brand(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class Product(models.Model):
    name = models.CharField(max_length=100)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    img = models.ImageField(upload_to='products_images/', height_field=None, width_field=None)
    type = models.ForeignKey(Type, on_delete=models.CASCADE)
    brand = models.ForeignKey(Brand, on_delete=models.CASCADE)

# pip install django-cleanup

    def __str__(self):
        return self.name
    
    def to_dict(self):
        return {
            'name': self.name,
            'type': self.type.name,
            'brand': self.brand.name,
            'price': str(self.price),
            'img': self.img.url if self.img else None,
        }