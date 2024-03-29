import time

from django.shortcuts import render_to_response

from app.banner.models import Banner


def index(request):
    current_day = time.strftime('%Y-%m-%d')
    current_hour = int(time.strftime('%H'))
    available_banners = list(Banner.objects.filter(is_enabled=True, start_date__lte=current_day,
                                                   end_date__gte=current_day,
                                                   dayparting__hour=current_hour).values())

    return render_to_response('banner/index.html', {'banner_list': available_banners})
