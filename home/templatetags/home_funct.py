from django import template
from home.models import Project

register = template.Library()


@register.simple_tag
def get_recent_projects():
    all_entries = Project.objects.all()#[:3]
    return all_entries


@register.simple_tag
def testytest():
    print("test")
    return "hey bud"


@register.simple_tag
def listTest():
    dict = []
    dict.append("shark")
    dict.append("boop")
    dict.append("pizza")
    return dict