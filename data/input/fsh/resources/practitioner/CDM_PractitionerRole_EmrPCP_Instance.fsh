Instance:       CDMPractitionerRole-EMR-PCP
InstanceOf:     CDMPractitionerRole
Title:          "CDM PractitionerRole - EMR PCP"
Description:    "Sample CDM PractitionerRole ingested from EMR or PMS system"
Usage:          #example

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-practitioner-role"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/practitioner-role"
* identifier[0].value = "5870c580-0d87-4237-a86b-a49ef4637b31"
* identifier[0].assigner.display = "Acme Health - EMR1"

* active = true
* practitioner = Reference(DrKelly)
* location = Reference(KellyClinic)

* code =  SNOMED#59058001 "General physician"
* specialty = SNOMED#394814009 "General practice (specialty)"

Instance:   DrDoug
InstanceOf: Practitioner
Usage:      #inline

Instance:   DougFamilyMedical
InstanceOf: Location
Usage:      #inline
