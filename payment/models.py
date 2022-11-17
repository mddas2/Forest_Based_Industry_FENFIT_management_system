from django.db import models

class States(models.Model):
    province_id = models.IntegerField(null=True)
    name = models.CharField(max_length=255)
    alt_name = models.CharField(max_length=255)

class Districts(models.Model):
    district_id = models.IntegerField(null=True)
    name = models.CharField(max_length=255)
    alt_name = models.CharField(max_length=255)
    state = models.ForeignKey(States, related_name="districts",on_delete=models.CASCADE,null=True)

class Municipality(models.Model):
    municipality_id = models.IntegerField(null=True)
    name = models.CharField(max_length=255)
    alt_name = models.CharField(max_length=255,null=True)
    state = models.ForeignKey(States, related_name="municipalities",on_delete=models.CASCADE,null=True)
    district = models.ForeignKey(Districts, related_name="municipalities",on_delete=models.CASCADE,null=True)
    

