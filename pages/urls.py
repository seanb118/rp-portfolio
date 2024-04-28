# pages/urls.py

from django.urls import path
from pages import views
from projects import views as projects_views

urlpatterns = [
    path("", views.home, name='home'),
    path("projects/", projects_views.project_index, name="projects"),
]

