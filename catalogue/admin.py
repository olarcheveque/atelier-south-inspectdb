# -*- coding: utf-8 -*-

from django.contrib import admin

from .models import Formation, Universite


class FormationAdmin(admin.ModelAdmin):
    list_display = ('titre', 'universite', )
    list_filter = ('domaine', 'universite', )

admin.site.register(Formation, FormationAdmin)
admin.site.register(Universite)
