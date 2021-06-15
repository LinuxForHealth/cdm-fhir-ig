Instance:       CDMPatientInstance-CommOptOut
InstanceOf:     CDMPatient
Title:          "CDM Patient - Communication Opt-Out"
Description:    "Sample CDM Patient showing multiple opt-out modes"
Usage:          #example

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-patient"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/patient"
* identifier[0].value = "1c1751b9-fc28-4615-b09e-f594649dc7bf"
* identifier[0].assigner.display = "Acme Health - EMR1"

* identifier[1].use = #secondary
* identifier[1].type =  IdentifierTypeCodeSystem#MDI
* identifier[1].system = "http://ibm.com/fhir/primary/patient-match-identifier"
* identifier[1].value = "82587288-b8d8-4c3a-a3a6-4f3ba901cc7e"
* identifier[1].assigner.display = "IBM"

* name.given = "Frasier"
* name.family = "Crane"
* birthDate = "1955-02-21"

* gender = #male
* extension[sexAssignedAtBirth].valueCodeableConcept = SexAssignedAtBirthCodeSystem#male

* extension[communicationOptOut][0].extension[statedReason].valueCodeableConcept = EngagementOptOutReasonCodeSystem#other
* extension[communicationOptOut][0].extension[statedReason].valueCodeableConcept.text = "Global opt-out example: all products, all communication modes, all conversation types"
* extension[communicationOptOut][0].extension[effectivePeriod].valuePeriod.start = "2020-01-01T00:00:00Z"
* extension[communicationOptOut][0].extension[2].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* extension[communicationOptOut][0].extension[2].valueString = "IBM"
* extension[communicationOptOut][0].extension[3].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* extension[communicationOptOut][0].extension[3].valueString = "Patient Portal"
* extension[communicationOptOut][0].extension[4].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* extension[communicationOptOut][0].extension[4].valueString = "IHE"
* extension[communicationOptOut][0].extension[5].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* extension[communicationOptOut][0].extension[5].valueString = "1.0"
* extension[communicationOptOut][0].extension[6].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* extension[communicationOptOut][0].extension[6].valueDateTime = "2020-01-01T13:01:00Z"

* extension[communicationOptOut][1].extension[statedReason].valueCodeableConcept = EngagementOptOutReasonCodeSystem#other
* extension[communicationOptOut][1].extension[statedReason].valueCodeableConcept.text = "Product-specific opt-out example: IHE only, all modes, health reminders only)"
* extension[communicationOptOut][1].extension[communicationProduct].valueCodeableConcept = EngagementProductCodeSystem#ihe
* extension[communicationOptOut][1].extension[conversationType].valueCodeableConcept = EngagementConversationTypeCodeSystem#gap-in-care
* extension[communicationOptOut][1].extension[effectivePeriod].valuePeriod.start = "2020-01-01T00:00:00Z"
* extension[communicationOptOut][1].extension[4].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* extension[communicationOptOut][1].extension[4].valueString = "IBM"
* extension[communicationOptOut][1].extension[5].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* extension[communicationOptOut][1].extension[5].valueString = "Patient Portal"
* extension[communicationOptOut][1].extension[6].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* extension[communicationOptOut][1].extension[6].valueString = "IHE"
* extension[communicationOptOut][1].extension[7].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* extension[communicationOptOut][1].extension[7].valueString = "1.0"
* extension[communicationOptOut][1].extension[8].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* extension[communicationOptOut][1].extension[8].valueDateTime = "2020-01-01T13:01:00Z"

* extension[communicationOptOut][2].extension[statedReason].valueCodeableConcept = EngagementOptOutReasonCodeSystem#other
* extension[communicationOptOut][2].extension[statedReason].valueCodeableConcept.text = "Product-specific opt-out example: IHE only, all modes, appointment reminders only)"
* extension[communicationOptOut][2].extension[communicationProduct].valueCodeableConcept = EngagementProductCodeSystem#ihe
* extension[communicationOptOut][2].extension[conversationType].valueCodeableConcept = EngagementConversationTypeCodeSystem#appointment-reminder 
* extension[communicationOptOut][2].extension[effectivePeriod].valuePeriod.start = "2020-01-01T00:00:00Z"
* extension[communicationOptOut][2].extension[4].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* extension[communicationOptOut][2].extension[4].valueString = "IBM"
* extension[communicationOptOut][2].extension[5].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* extension[communicationOptOut][2].extension[5].valueString = "Patient Portal"
* extension[communicationOptOut][2].extension[6].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* extension[communicationOptOut][2].extension[6].valueString = "IHE"
* extension[communicationOptOut][2].extension[7].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* extension[communicationOptOut][2].extension[7].valueString = "1.0"
* extension[communicationOptOut][2].extension[8].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* extension[communicationOptOut][2].extension[8].valueDateTime = "2020-01-01T13:01:00Z"

* extension[communicationOptOut][3].extension[statedReason].valueCodeableConcept = EngagementOptOutReasonCodeSystem#other
* extension[communicationOptOut][3].extension[statedReason].valueCodeableConcept.text = "Product-specific opt-out example: IHE only, sms text only, limited to one care gap)"
* extension[communicationOptOut][3].extension[communicationProduct].valueCodeableConcept = EngagementProductCodeSystem#ihe
* extension[communicationOptOut][3].extension[communicationMode].valueCodeableConcept = EngagementCommunicationModeCodeSystem#sms
* extension[communicationOptOut][3].extension[effectivePeriod].valuePeriod.start = "2020-01-01T00:00:00Z"
//* extension[communicationOptOut][3].extension[communicationCareGap].valueString = "dm-hba1c-caregap-poor-control"
* extension[communicationOptOut][3].extension[4].url = "http://hl7.org/fhir/StructureDefinition/communication-care-gap"
* extension[communicationOptOut][3].extension[4].valueString = "dm-hba1c-caregap-poor-control"
* extension[communicationOptOut][3].extension[5].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* extension[communicationOptOut][3].extension[5].valueString = "IBM"
* extension[communicationOptOut][3].extension[6].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* extension[communicationOptOut][3].extension[6].valueString = "Patient Portal"
* extension[communicationOptOut][3].extension[7].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* extension[communicationOptOut][3].extension[7].valueString = "IHE"
* extension[communicationOptOut][3].extension[8].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* extension[communicationOptOut][3].extension[8].valueString = "1.0"
* extension[communicationOptOut][3].extension[9].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* extension[communicationOptOut][3].extension[9].valueDateTime = "2020-01-01T13:01:00Z"


* extension[communicationOptOut][4].extension[statedReason].valueCodeableConcept = EngagementOptOutReasonCodeSystem#other
* extension[communicationOptOut][4].extension[statedReason].valueCodeableConcept.text = "TEMPORARY product-specific opt-out example: IHE only, all modes, all conversation types, all care gaps"
* extension[communicationOptOut][4].extension[communicationProduct].valueCodeableConcept = EngagementProductCodeSystem#ihe
* extension[communicationOptOut][4].extension[effectivePeriod].valuePeriod.start = "2020-01-01T00:00:00Z"
* extension[communicationOptOut][4].extension[effectivePeriod].valuePeriod.end = "2020-03-30T00:00:00Z"
* extension[communicationOptOut][4].extension[3].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* extension[communicationOptOut][4].extension[3].valueString = "IBM"
* extension[communicationOptOut][4].extension[4].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* extension[communicationOptOut][4].extension[4].valueString = "Patient Portal"
* extension[communicationOptOut][4].extension[5].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* extension[communicationOptOut][4].extension[5].valueString = "IHE"
* extension[communicationOptOut][4].extension[6].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* extension[communicationOptOut][4].extension[6].valueString = "1.0"
* extension[communicationOptOut][4].extension[7].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* extension[communicationOptOut][4].extension[7].valueDateTime = "2020-01-01T13:01:00Z"
