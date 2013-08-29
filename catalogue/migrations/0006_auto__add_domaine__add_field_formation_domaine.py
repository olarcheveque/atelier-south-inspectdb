# -*- coding: utf-8 -*-
import datetime
from south.db import db
from south.v2 import SchemaMigration
from django.db import models


class Migration(SchemaMigration):

    def forwards(self, orm):
        # Adding model 'Domaine'
        db.create_table('catalogue_domaine', (
            ('id', self.gf('django.db.models.fields.AutoField')(primary_key=True)),
            ('nom', self.gf('django.db.models.fields.CharField')(max_length=450)),
        ))
        db.send_create_signal('catalogue', ['Domaine'])

        # Adding field 'Formation.domaine'
        db.add_column('catalogue_formation', 'domaine',
                      self.gf('django.db.models.fields.related.ForeignKey')(to=orm['catalogue.Domaine'], null=True),
                      keep_default=False)


    def backwards(self, orm):
        # Deleting model 'Domaine'
        db.delete_table('catalogue_domaine')

        # Deleting field 'Formation.domaine'
        db.delete_column('catalogue_formation', 'domaine_id')


    models = {
        'catalogue.domaine': {
            'Meta': {'object_name': 'Domaine'},
            'id': ('django.db.models.fields.AutoField', [], {'primary_key': 'True'}),
            'nom': ('django.db.models.fields.CharField', [], {'max_length': '450'})
        },
        'catalogue.formation': {
            'Meta': {'object_name': 'Formation'},
            'domaine': ('django.db.models.fields.related.ForeignKey', [], {'to': "orm['catalogue.Domaine']", 'null': 'True'}),
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