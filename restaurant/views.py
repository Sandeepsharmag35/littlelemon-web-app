# from django.http import HttpResponse
from django.shortcuts import render, redirect
from .forms import BookingForm
from .models import Menu
from django.core import serializers
from .models import Booking
from datetime import datetime
import json
from django.views.decorators.csrf import csrf_exempt
from django.http import HttpResponse
from django.core.mail import send_mail, BadHeaderError
from django.conf import settings
from django.contrib import messages


# Create your views here.
def home(request):
    return render(request, "index.html")


def about(request):
    return render(request, "about.html")


def reservations(request):
    date = request.GET.get("date", datetime.today().date())
    bookings = Booking.objects.all()
    booking_json = serializers.serialize("json", bookings)
    return render(request, "bookings.html", {"bookings": booking_json})


def book(request):
    form = BookingForm()
    if request.method == "POST":
        form = BookingForm(request.POST)
        if form.is_valid():
            form.save()
    context = {"form": form}
    return render(request, "book.html", context)


# Add your code here to create new views
def menu(request):
    menu_data = Menu.objects.all()
    main_data = {"menu": menu_data}
    return render(request, "menu.html", {"menu": main_data})


def display_menu_item(request, pk=None):
    if pk:
        menu_item = Menu.objects.get(pk=pk)
    else:
        menu_item = ""
    return render(request, "menu_item.html", {"menu_item": menu_item})


@csrf_exempt
def bookings(request):
    if request.method == "POST":
        data = json.load(request)
        exist = (
            Booking.objects.filter(reservation_date=data["reservation_date"])
            .filter(reservation_slot=data["reservation_slot"])
            .exists()
        )
        if exist == False:
            booking = Booking(
                first_name=data["first_name"],
                reservation_date=data["reservation_date"],
                reservation_slot=data["reservation_slot"],
            )
            booking.save()
        else:
            return HttpResponse("{'error':1}", content_type="application/json")

    date = request.GET.get("date", datetime.today().date())

    bookings = Booking.objects.all().filter(reservation_date=date)
    booking_json = serializers.serialize("json", bookings)

    return HttpResponse(booking_json, content_type="application/json")


def contact(request):
    if request.method == "POST":
        full_name = request.POST("full_name")
        sender = request.POST("email")
        phone = request.POST("phone")
        subject = request.POST("subject")
        message = request.POST("message")
        if subject and message and sender:
            email_message = f"{message}\n\nName: {full_name}\nSender Email: {sender}\nPhone Number: {phone}"
            try:
                # Send email
                send_mail(
                    subject,
                    email_message,
                    sender,
                    [settings.EMAIL_HOST_USER],
                    fail_silently=False,
                )
                success_message = "Message sent successfully"
                messages.success(request, success_message)
                return redirect("contact")
            except BadHeaderError:
                error_message = "Message failed to send"
                messages.error(request, error_message)
                return redirect("contact")
    return render(request, "contact.html")
