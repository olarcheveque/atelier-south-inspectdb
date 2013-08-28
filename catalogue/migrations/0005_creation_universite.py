# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import DataMigration
from django.db import models

class Migration(DataMigration):

    def forwards(self, orm):
        "Write your forwards methods here."
        # Note: Don't use "from appname.models import ModelName". 
        # Use orm.ModelName to refer to models in this application,
        # and orm['appname.ModelName'] for models in other applications.
        for atelier in orm['ancien.Atelier'].objects.all():
            universite, created_flag = orm['catalogue.Universite'].objects.\
                    get_or_create(nom=atelier.universite)
            formation = orm['catalogue.Formation'].objects.get(id=atelier.id_atelier)
            formation.universite = universite
            formation.save()

    def backwards(self, orm):
        "Write your backwards methods here."

    models = {
        'ancien.atelier': {
            'Meta': {'object_name': 'Atelier', 'db_table': "u'atelier'"},
            'commentaire': ('django.db.models.fields.TextField', [], {}),
            'groupe': ('django.db.models.fields.CharField', [], {'max_length': '132'}),
            'id_atelier': ('django.db.models.fields.IntegerField', [], {'primary_key': 'True'}),
            'intitule': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'nb_annees': ('django.db.models.fields.IntegerField', [], {}),
            'niveau': ('django.db.models.fields.CharField', [], {'max_length': '30'}),
            'ref_institution': ('django.db.models.fields.IntegerField', [], {}),
            'universite': ('django.db.models.fields.CharField', [], {'max_length': '450'})
        },
        'catalogue.formation': {
            'Meta': {'object_name': 'Formation'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'titre': ('django.db.models.fields.CharField', [], {'max_length': '300'}),
            'universite': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['catalogue.Universite']", 'null': 'True'})
        },
        'catalogue.universite': {
            'Meta': {'object_name': 'Universite'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'nom': ('django.db.models.fields.CharField', [], {'max_length': '450'})
        }
    }

    complete_apps = ['ancien', 'catalogue']
    symmetrical = True
