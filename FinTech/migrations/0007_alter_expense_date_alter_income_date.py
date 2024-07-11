# Generated by Django 4.2.5 on 2024-07-07 06:55

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('FinTech', '0006_alter_expensecategory_name_alter_incomecategory_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='expense',
            name='date',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
        migrations.AlterField(
            model_name='income',
            name='date',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
    ]