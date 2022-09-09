Instance:       CDMPractitionerRole-Enrollment
InstanceOf:     CDMPractitionerRole
Title:          "CDM PractitionerRole - Enrollment"
Description:    "Sample CDM PractitionerRole ingested from Enrollment or Payer system"
Usage:          #example

* meta.source = "http://acme-health.com/payment"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-practitioner-role"

* meta.extension[tenantId].valueString = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"

* identifier[0].use    = #official
* identifier[0].type   = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/payment/practitioner-role"
* identifier[0].value  = "000000000000000000019723078"
* identifier[0].assigner.display = "Acme Health - Claims Payment Center"

* active = true
* practitioner = Reference(DrKelly)
* location = Reference(KellyClinic)

* code =  SNOMED#59058001 "General physician"
* specialty = SNOMED#394814009 "General practice (specialty)"
