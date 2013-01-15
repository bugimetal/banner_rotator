from django import template
from django.conf import settings

register = template.Library()

@register.filter(name='get_full_media_path')
def get_full_media_path(dict_):
    return '%s%s' % (settings.MEDIA_URL, dict_.get('file', ''))