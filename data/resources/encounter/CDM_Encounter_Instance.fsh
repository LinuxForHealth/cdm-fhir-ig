Instance:       CDMEncounterExample
InstanceOf:     CDMEncounter
Usage:          #example
Title:          "CDM Encounter Example"
Description:    "Sample encounter"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-encounter"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/encounter"
* identifier[0].value = "e17be8c4-07be-43d2-a53c-9487881f6f70"
* identifier[0].assigner.display = "Acme Health - EMR1"

* status = #finished

* class = ENCOUNTER-CLASS#AMB "ambulatory"
* type = SNOMED#270427003 "Patient-initiated encounter"
* serviceType = SERVICE-TYPE#367 "Hypertension"

* priority = ENCOUNTER-PRIORITY#R "routine"

* subject = Reference(CDMPatientInstance)

* participant.type = PARTICIPANT-TYPE#PPRF "primary performer"
* participant.individual = Reference(DrKelly)
* participant.period.start = "2020-04-15T09:00:00Z"
* participant.period.end = "2020-04-15T09:15:00Z"

* appointment = Reference(AppointmentExample)
* period.start = "2020-04-15T09:00:00Z"
* period.end = "2020-04-15T09:15:00Z"

* reasonCode = SNOMED#1201005  "Benign essential hypertension" 

* diagnosis.condition = Reference(CDMConditionExample)
* diagnosis.use = ENCOUNTER-DIAGNOSIS-USE#billing "Billing"
* diagnosis.rank = 1

* location.location = Reference(KellyClinic)
* location.status = #completed
* location.physicalType = LOCATION-PHYSICAL-TYPE#bu "Building"
* location.period.start = "2020-04-15T09:00:00Z"
* location.period.end = "2020-04-15T09:15:00Z"

* serviceProvider = Reference(Organization1)

Instance:   Organization1
InstanceOf: Organization
Usage:      #inline
