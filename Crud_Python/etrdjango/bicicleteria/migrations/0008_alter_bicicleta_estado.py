# Generated by Django 5.0.2 on 2024-02-28 19:28

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bicicleteria', '0007_estadobicicleta'),
    ]

    operations = [
        migrations.AlterField(
            model_name='bicicleta',
            name='estado',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.SET_NULL, to='bicicleteria.estadobicicleta'),
        ),
    ]
