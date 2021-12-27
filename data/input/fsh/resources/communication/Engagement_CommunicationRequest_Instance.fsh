Instance:       EngagementCommunicationRequestExample
InstanceOf:     EngagementCommunicationRequest
Usage:          #example
Title:          "Engagement Communication Request Example"
Description:    "Example of an engagement communication request to send an Outreach text to a patient concerning a care gap"

* meta.source = "http://ibm.com/fhir/engagement"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/engagement-communication-request"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"
* meta.extension[processOrganization].valueString = "IBM"
* meta.extension[processType].valueString = "Engagement Communication"
* meta.extension[processName].valueString = "ATC"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-03-01T03:05:00Z"
* meta.tag = ProcessMetaSourceClassification#derived

* identifier[0].type = IdentifierTypeCodeSystem#DRI
* identifier[0].system = "http://ibm.com/fhir/cdm/engagement-communication-request"
* identifier[0].value = "0bd930b0-e2fc-4967-957d-a6719ecde9b4"
* identifier[0].assigner.display = "IBM"

* status = #completed
* statusReason = EngagementCommunicationRequestStatusReasonCodeSystem#request-complete "In-Process - Communication request complete"
* statusReason.extension[0].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* statusReason.extension[0].valueDateTime = "2020-03-01T03:06:01Z"

* priority = #routine
* category = COMMUNICATION-CATEGORY#notification

* extension[communicationProduct].valueCodeableConcept = EngagementProductCodeSystem#ihe
* extension[conversationType].valueCodeableConcept = EngagementConversationTypeCodeSystem#gap-in-care 
* extension[communicationOnBehalfOf].valueReference = Reference(CDMPractitionerRole-Attributed-PCP)

* extension[communicationMeasure].valueReference = Reference(QualityMeasureExample)
* extension[communicationCareGap].valueString = "dm-hba1c-caregap-poor-control"
* extension[communicationPrioritySequence].valueDecimal = 1.0
* medium = EngagementCommunicationModeCodeSystem#sms

* extension[communicationContact].valueContactPoint.system = #sms
* extension[communicationContact].valueContactPoint.use = #mobile
* extension[communicationContact].valueContactPoint.value = "808-248-8689"

* extension[communicationReengagement].extension[reengagementValue].valueUnsignedInt = 1
* extension[communicationReengagement].extension[reengagementDisplay].valueString = "1st reengagement"

* extension[communicationLanguage].valueCode = LANGUAGE#en-US
* extension[communicationTemplate].valueString = "dm-template"
* extension[communicationRetryLimit].valueString = "5"

* subject = Reference(CDMPatient)
* about = Reference(CareGapDetectedIssueExample)

* payload.contentString = "Our records indicate you are overdue for a medical appointment.  Please contact [PRACTIIONER-NAME] at [FACILITY-NAME], [FACILTY-PHONE] to schedule an appointment."
* extension[communicationPayloadData].valueString = "{shortCode = '888-111'}"

* occurrencePeriod.start = "2020-06-16T09:00:00Z"
* occurrencePeriod.end = "2020-06-16T20:00:00Z"
* authoredOn = "2020-06-16T03:00:00Z"

* requester = Reference(IBM)
* recipient = Reference(CDMPatientInstance)
* sender = Reference(IBM)
* extension[communicationVendor].valueReference = Reference(CommunicationVendor1)
