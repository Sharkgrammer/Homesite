from django.contrib import admin
from .models import Project


class ProjectAdmin(admin.ModelAdmin):
    fields = ['']
    #list_display = ("title", "content", "logo", "big_image", "low_image_1", "low_image_2")


admin.site.register(Project)
