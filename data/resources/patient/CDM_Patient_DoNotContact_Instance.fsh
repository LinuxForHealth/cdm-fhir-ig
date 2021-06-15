Instance:       CDMPatientInstance-DoNotContact
InstanceOf:     CDMPatient
Title:          "CDM Patient - Do Not Contact"
Description:    "Sample CDM Patient showing customer-specific privacy and derived Health Data Connect VIP and DO-NOT-CONTACT codes"
Usage:          #example

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-patient"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/patient"
* identifier[0].value = "35e4aa64-fdf8-4ef9-8acd-066aec45f63b"
* identifier[0].assigner.display = "Acme Health - EMR1"

* identifier[1].use = #secondary
* identifier[1].type =  IdentifierTypeCodeSystem#MDI
* identifier[1].system = "http://ibm.com/fhir/primary/patient-match-identifier"
* identifier[1].value = "4fd6049c-59c5-4c7b-81b1-88869044535d"
* identifier[1].assigner.display = "IBM"

* name.given = "Norm"
* name.family = "Peterson"
* birthDate = "1948-10-17"

* extension[statusCode][0].valueCodeableConcept = PatientStatusCodeSystem#collection
* extension[statusCode][1].valueCodeableConcept = PatientStatusCodeSystem#confidential
* extension[statusCode][2].valueCodeableConcept = PatientStatusCodeSystem#test

* extension[patientImportance][0].valueCodeableConcept = PatientImportanceCodeSystem#bad-debt
* extension[patientImportance][1].valueCodeableConcept = PatientImportanceCodeSystem#do-not-contact

* gender = #male
* extension[sexAssignedAtBirth].valueCodeableConcept = SexAssignedAtBirthCodeSystem#male
