Instance:       MatchedPatientSource-EMR3-PatientD
InstanceOf:     CDMPatient
Usage:          #example
Title:          "Matched Patient Source Example - EMR3 Patient D"
Description:    "Sample of a matched source patient with a reference to the a different match patient due to a fuzzy low-confidence match and a manaul user split. Used to demonstrate patient matching."

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-patient"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr3/patient"
* identifier[0].value = "emr3-patientC"

* identifier[1].use = #secondary
* identifier[1].type =  IdentifierTypeCodeSystem#MDI
* identifier[1].system = "http://linuxforhealth.org/platform/patient-match-identifier"
* identifier[1].value = "e00e79d2-684e-4a1a-8f2b-858b2ff9db36"
* identifier[1].assigner.display = "HDC"

* active = true

* name.given = "Margaret B"
* name.family = "Match"
* birthDate = "1990-01-04"

* gender = #female
* extension[sexAssignedAtBirth].valueCodeableConcept = SexAssignedAtBirthCodeSystem#female
