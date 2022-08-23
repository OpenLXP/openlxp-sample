# Generated by Django 3.2.14 on 2022-07-15 15:51

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='XSRConfiguration',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('xsr_api_endpoint', models.CharField(help_text='Enter the XSR API endpoint', max_length=200)),
            ],
        ),
    ]