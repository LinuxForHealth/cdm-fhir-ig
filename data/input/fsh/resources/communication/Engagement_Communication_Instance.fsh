Instance:       EngagementCommunicationExample
InstanceOf:     EngagementCommunication
Usage:          #example
Title:          "Engagement Communication Example"
Description:    "Example of an engagement communication to send a SMS text to a patient concerning a care gap"

* meta.source = "http://ibm.com/fhir/engagement"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/engagement-communication"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"
* meta.extension[processOrganization].valueString = "HDC"
* meta.extension[processType].valueString = "Engagement Communication"
* meta.extension[processName].valueString = "ATC"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-03-01T10:01:00Z"
* meta.tag = ProcessMetaSourceClassification#derived

* identifier.type = IdentifierTypeCodeSystem#DRI
* identifier.system = "http://ibm.com/fhir/cdm/engagement-communication"
* identifier.value = "de25d288-120e-47c1-bb76-caac8bc3f439"
* identifier.assigner.display = "HDC"

* basedOn = Reference(EngagementCommunicationRequestExample)

* status = #in-progress
* statusReason.coding[0] = EngagementCommunicationStatusReasonCodeSystem#sms-queued "In-Process - SMS text queued"
* statusReason.coding[0].extension[0].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* statusReason.coding[0].extension[0].valueDateTime = "2020-03-01T10:01:01Z"
* statusReason.coding[1] = EngagementCommunicationStatusReasonCodeSystem#sms-sending "In-Process - Sending SMS text"
* statusReason.coding[1].extension[0].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* statusReason.coding[1].extension[0].valueDateTime = "2020-03-01T10:02:02Z"

* priority = #routine
* category = COMMUNICATION-CATEGORY#notification

* extension[communicationProduct].valueCodeableConcept = EngagementProductCodeSystem#care-gap
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

* subject = Reference(CDMPatientInstance)
* about = Reference(CareGapDetectedIssueExample)

* payload.contentString = "Our records indicate you are overdue for a medical appointment.  Please contact [PRACTIIONER-NAME] at [FACILITY-NAME], [FACILTY-PHONE] to schedule an appointment."
* extension[communicationPayloadData].valueString = "{shortCode = '888-111'}"
* extension[communicationVendor].valueReference = Reference(Genesis)

* recipient = Reference(CDMPatientInstance)
* sender = Reference(HDC)
* extension[communicationVendor].valueReference = Reference(CommunicationVendor1)
