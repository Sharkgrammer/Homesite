from django.conf.urls import url
from django.urls import path
from django.contrib.staticfiles.storage import staticfiles_storage
from django.views import static
from django.views.generic.base import RedirectView

from HomeSite import settings
from home import views

app_name = "home"
urlpatterns = [
    url(r'^favicon.ico$', RedirectView.as_view(url=staticfiles_storage.url('images/favicon.ico'), ), name="favicon"),
    url(r'^stored/(?P<path>.*)$', static.serve, {'document_root': settings.BASE_DIR + "/stored"}),
    path('', views.index, name='index'),
    path('mail', views.email, name='email'),
    path('test', views.test, name='test'),
]
