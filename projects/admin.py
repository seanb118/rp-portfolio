from django.contrib import admin

# Register your models here.
# projects/admin.py

from django.contrib import admin
from projects.models import Project

class ProjectAdmin(admin.ModelAdmin):
    pass

admin.site.register(Project, ProjectAdmin)