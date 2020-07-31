from django.db import models


class Project(models.Model):
    title = models.CharField(max_length=100, default="")
    content = models.TextField(default="")
    link = models.TextField(default="")
    logo = models.ImageField(upload_to="stored/projects/logo", default=None)

    def __str__(self):
        return self.title


class Personal(models.Model):
    title = models.CharField(max_length=100, default="")
    content = models.TextField(default="")
    img = models.ImageField(upload_to="stored/site/me", default=None)

    def __str__(self):
        return self.title


class Experience(models.Model):
    title = models.CharField(max_length=100, default="")
    content = models.TextField(default="")
    img = models.ImageField(upload_to="stored/site/exp", default=None)

    def __str__(self):
        return self.title
