from settings import SUPPORTED_IMAGE_TYPES
from django.db import models
from django.core.exceptions import ValidationError
from django.db.models.fields.files import ImageFieldFile


# I don't know if i should use validator here. Maybe i need to create form?
def image_validator(image):
    # This validator works only if image is instance of ImageFieldFile class
    if not image or not isinstance(image, models.fields.files.ImageFieldFile):
        raise ValidationError('Image required.')

    image_type = image.name.split('.')[-1].lower()
    if image_type not in SUPPORTED_IMAGE_TYPES:
        raise ValidationError('Supported image formats are jpg and png only')

    width, height = image.width, image.height
    if width != 240:
        raise ValidationError('Image width should be 240 pixels, not: %s' % width)
    if height != 320:
        raise ValidationError('Image height should be 320 pixels, not: %s' % height)


class Banner(models.Model):
    name = models.CharField('Banner name', max_length=255, default='')
    is_enabled = models.BooleanField('Is enabled')
    file = models.ImageField('Banner image', upload_to='images', max_length=255, validators=[image_validator])
    click_tag = models.URLField(default='')
    start_date = models.DateField()
    end_date = models.DateField()


class DayParting(models.Model):
    banner_id = models.ForeignKey(Banner)
    hour = models.CharField(max_length=2, choices=[(repr(i), i) for i in xrange(24)])
