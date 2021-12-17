Instance:       CDMPractitionerRole-Payer
InstanceOf:     CDMPractitionerRole
Title:          "CDM PractitionerRole - Payer"
Description:    "Sample CDM PractitionerRole ingested from Payer system"
Usage:          #example

* meta.source = "http://acme-health.com/payment"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-practitioner-role"

* meta.extension[tenantId].valueString = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"

* identifier[0].use    = #official
* identifier[0].type   = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/payment/practitioner-role"
* identifier[0].value  = "000000000000000000019723078"
* identifier[0].assigner.display = "Acme Health - Claims Payment Center"

* active = true
* practitioner = Reference(DrJones)
* location = Reference(JonesFamilyMedical)

* code =  SNOMED#59058001 "General physician"
* specialty = SNOMED#394814009 "General practice (specialty)"

Instance:   DrJones
InstanceOf: Practitioner
Usage:      #inline

Instance:   JonesFamilyMedical
InstanceOf: Location
Usage:      #inline
