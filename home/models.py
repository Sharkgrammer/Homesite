from django.db import models


class Project(models.Model):
    title = models.CharField(max_length=100, default="")
    content = models.TextField(default="")
    link = models.TextField(default="")
    logo = models.ImageField(upload_to="stored/projects/logo", default=None)
    big_image = models.ImageField(upload_to="stored/projects/big", default=None)
    low_image_1 = models.ImageField(upload_to="stored/projects/low", default=None)
    low_image_2 = models.ImageField(upload_to="stored/projects/low", default=None)

    def __str__(self):
        return self.title
