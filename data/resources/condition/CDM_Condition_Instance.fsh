Instance:       CDMConditionExample
InstanceOf:     CDMCondition
Usage:          #example
Title:          "CDM Condition Example"
Description:    "Sample of a hypertension condition diagnosed by a condition record"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-condition"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/condition"
* identifier[0].value = "46706977-907b-453a-87bc-76002d7076ef"
* identifier[0].assigner.display = "Acme Health - EMR1"

* clinicalStatus = CLINICAL-STATUS#active
* verificationStatus = CLINICAL-VERIFICATION-STATUS#confirmed
* category = CONDITION-CATEGORY#encounter-diagnosis
* severity = SNOMED#6736007 "Moderate"
* code = SNOMED#1201005  "Benign essential hypertension"
* subject = Reference(CDMPatientInstance)
* encounter = Reference(CDMEncounterExample)

* recordedDate = "2020-01-04"
* recorder = Reference(DrKelly)
* asserter = Reference(DrKelly)
