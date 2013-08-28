class AncienRouter(object):
    """
    Dans quelle BD trouver les modeles 'ancien'
    """
    def db_for_read(self, model, **hints):
        if model._meta.app_label == 'ancien':
            return 'consultation-ancien'
        return None

    def db_for_write(self, model, **hints):
        if model._meta.app_label == 'ancien':
            return False
        return None
