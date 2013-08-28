# -*- coding: utf-8 -*-

from django.contrib import admin

from .models import Atelier

class AtelierAdmin(admin.ModelAdmin):
    list_display = ('id_atelier', 'intitule', 'groupe', 'universite', 'ref_institution',
            'commentaire',)

admin.site.register(Atelier, AtelierAdmin)
