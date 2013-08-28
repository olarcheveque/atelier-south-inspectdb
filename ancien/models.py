# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#     * Rearrange models' order
#     * Make sure each model has one field with primary_key=True
# Feel free to rename the models, but don't rename db_table values or field names.
#
# Also note: You'll have to insert the output of 'django-admin.py sqlcustom [appname]'
# into your database.

from django.db import models

class Atelier(models.Model):
    id_atelier = models.IntegerField(primary_key=True)
    ref_institution = models.IntegerField()
    groupe = models.CharField(max_length=132)
    niveau = models.CharField(max_length=30)
    nb_annees = models.IntegerField()
    intitule = models.CharField(max_length=300)
    universite = models.CharField(max_length=450)
    commentaire = models.TextField()

    class Meta:
        db_table = u'atelier'

    def __unicode__(self):
        return self.intitule
