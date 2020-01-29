# Generated by Django 2.2.7 on 2020-01-29 17:30

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('trackparc', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='daneklient',
            name='owner',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='DaneKlient', to=settings.AUTH_USER_MODEL),
            preserve_default=False,
        ),
    ]
