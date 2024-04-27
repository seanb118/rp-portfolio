from django.shortcuts import render

# Create your views here.
# pages/views.py

def home(request):
    return render(request, "pages/home.html", {})