# Generated by Django 3.0.8 on 2020-07-31 15:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0008_auto_20200731_1447'),
    ]

    operations = [
        migrations.CreateModel(
            name='Experience',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='', max_length=100)),
                ('content', models.TextField(default='')),
                ('img', models.ImageField(default=None, upload_to='stored/site/exp')),
            ],
        ),
        migrations.CreateModel(
            name='Personal',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='', max_length=100)),
                ('content', models.TextField(default='')),
                ('img', models.ImageField(default=None, upload_to='stored/site/me')),
            ],
        ),
    ]
