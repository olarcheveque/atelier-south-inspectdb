from django.db import models

class Formation(models.Model):
    titre = models.CharField(max_length=300)

    def __unicode__(self):
        return self.titre
