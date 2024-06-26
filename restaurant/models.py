from django.db import models


# Create your models here.
class Booking(models.Model):
    first_name = models.CharField(max_length=200)
    reservation_date = models.DateField()
    reservation_slot = models.SmallIntegerField(default=10)

    def __str__(self): 
        return self.first_name


# Add code to create Menu model
class Menu(models.Model):
   name = models.CharField(max_length=200) 
   price = models.DecimalField(max_digits=10, null=False, decimal_places=2) 
   menu_item_description = models.TextField(max_length=1000, default='') 
   image = models.ImageField(upload_to="menu_items", blank=True)

   def __str__(self):
      return self.name