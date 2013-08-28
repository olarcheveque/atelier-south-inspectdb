from django.db import models

class Formation(models.Model):
    titre = models.CharField(max_length=300)
    universite = models.ForeignKey('catalogue.Universite', null=True)

    def __unicode__(self):
        return self.titre


class Universite(models.Model):
    nom = models.CharField(max_length=450)

    def __unicode__(self):
        return self.nom
