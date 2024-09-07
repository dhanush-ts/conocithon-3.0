from django.db import models
from django.core.validators import MinValueValidator, MaxValueValidator

class User(models.Model):
    name = models.CharField(max_length=200)
    email = models.EmailField(unique=True)
    password = models.CharField(max_length=200)
    phone_number = models.CharField(max_length=20)
    address = models.CharField(max_length=200)
    
    def __str__(self) -> str:
        return f"{self.name}"
    
class NumberPlate(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE, related_name='numberUser')
    number_plate = models.CharField(max_length=10)
    
    def __str__(self) -> str:
        return f"{self.number_plate}"

    
class Category(models.Model):
    name = models.CharField(max_length=200)
    
    def __str__(self) -> str:
        return self.name
    