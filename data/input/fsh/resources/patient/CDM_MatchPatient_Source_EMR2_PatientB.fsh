Instance:       MatchedPatientSource-EMR2-PatientB
InstanceOf:     CDMPatient
Usage:          #example
Title:          "Matched Patient Source Example - EMR2 Patient B"
Description:    "Sample of a matched source patient with reference to the match patient. Used to demonstrate patient matching."

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-patient"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr2/patient"
* identifier[0].value = "emr2-patientB"

* identifier[1].use = #secondary
* identifier[1].type =  IdentifierTypeCodeSystem#MDI
* identifier[1].system = "http://ibm.com/fhir/primary/patient-match-identifier"
* identifier[1].value = "c82a8fce-11db-4396-b10c-1150abd1a222"
* identifier[1].assigner.display = "IBM"

* active = true

* name.given = "Maggie"
* name.family = "Match"
* birthDate = "1990-01-04"

* gender = #female
* extension[sexAssignedAtBirth].valueCodeableConcept = SexAssignedAtBirthCodeSystem#female

* telecom[0].system = #sms
* telecom[0].use = #mobile
* telecom[0].value = "214-555-6767"
* telecom[0].rank = 1
* telecom[0].extension[contactPointCountry].valueString = "1"
* telecom[0].extension[telAddress].valueUrl = "tel:+12145556767"
