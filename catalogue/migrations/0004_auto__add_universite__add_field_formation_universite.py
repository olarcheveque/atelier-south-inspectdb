# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Universite'
        db.create_table('catalogue_universite', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('nom', self.gf('django.db.models.fields.CharField')(max_length=450)),
        ))
        db.send_create_signal('catalogue', ['Universite'])

        # Adding field 'Formation.universite'
        db.add_column('catalogue_formation', 'universite',
                      self.gf('django.db.models.fields.related.ForeignKey')(to=orm['catalogue.Universite'], null=True),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting model 'Universite'
        db.delete_table('catalogue_universite')

        # Deleting field 'Formation.universite'
        db.delete_column('catalogue_formation', 'universite_id')


    models = {
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

    complete_apps = ['catalogue']