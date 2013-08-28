# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Formation'
        db.create_table('catalogue_formation', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('titre', self.gf('django.db.models.fields.CharField')(max_length=300)),
        ))
        db.send_create_signal('catalogue', ['Formation'])


    def backwards(self, orm):
        # Deleting model 'Formation'
        db.delete_table('catalogue_formation')


    models = {
        'catalogue.formation': {
            'Meta': {'object_name': 'Formation'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'titre': ('django.db.models.fields.CharField', [], {'max_length': '300'})
        }
    }

    complete_apps = ['catalogue']