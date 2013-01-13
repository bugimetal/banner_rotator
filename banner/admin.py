__author__ = 'bugi'

from django.contrib import admin
from django import forms
from models import Banner
from models import DayParting


class DayPartingInline(admin.StackedInline):
    model = DayParting
    extra = 1
    max_num = 23


class BannerAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Name', {'fields': ['name']}),
        ('Config', {'fields': ['is_enabled', 'file', 'click_tag', 'start_date', 'end_date']}),
    ]
    #fields = ['name', 'is_enabled', 'file', 'click_tag', 'start_date', 'end_date']
    list_display = ('name', 'is_enabled', 'start_date', 'end_date')
    search_fields = ['name']
    inlines = [DayPartingInline]


admin.site.register(Banner, BannerAdmin)
