Profile:        CDMCommunication
Parent:         Communication
Id:             cdm-communication
Title:          "CDM Communication"
Description:    "IBM Health Data Connect Common Data Model definition of what fields we currently define for a communication"
* contained 0..0
* meta only ProcessMeta

* extension contains CommunicationProduct named communicationProduct 0..1
* extension[communicationProduct].valueCodeableConcept from EngagementProductValueSet (extensible)
* extension[communicationProduct] ^short      = "Product generating the communication"
* extension[communicationProduct] ^definition = "Product generating the communication"

* extension contains CommunicationOnBehalfOf named communicationOnBehalfOf 0..1
* extension[communicationOnBehalfOf] ^short      = "Attributed provider, location, or organization communication is on-behalf of"
* extension[communicationOnBehalfOf] ^definition = "Attributed provider, location, or organization communication is on-behalf of"

* extension contains CommunicationContact named communicationContact 1..1 MS
* extension[communicationContact] ^short      = "Phone number, email, or address to contact"
* extension[communicationContact] ^definition = "Phone number, email, or address to contact"

* extension contains CommunicationMeasure named communicationMeasure 0..1
* extension[communicationMeasure] ^short      = "Reference to the measure that resulted in the communication"
* extension[communicationMeasure] ^definition = "Reference to the measure that resulted in the communication"

* extension contains CommunicationCareGap named communicationCareGap 0..1
* extension[communicationCareGap] ^short      = "ID of care gap for which we are communicating"
* extension[communicationCareGap] ^definition = "ID of care gap for which we are communicating"

* extension contains CommunicationPrioritySequence named communicationPrioritySequence 0..1
* extension[communicationPrioritySequence] ^short      = "Priority of the communication request (1 = highest)"
* extension[communicationPrioritySequence] ^definition = "Priority of the communication request (1 = highest)"

* extension contains CommunicationLanguage named communicationLanguage 0..1
* extension[communicationLanguage].valueCode from http://hl7.org/fhir/ValueSet/all-languages (preferred)
* extension[communicationLanguage] ^short      = "Language used for communication messaging content"
* extension[communicationLanguage] ^definition = "Language used for communication messaging content"

* extension contains CommunicationTemplate named communicationTemplate 0..1
* extension[communicationTemplate] ^short      = "ID or url reference to template to be used for communication"
* extension[communicationTemplate] ^definition = "ID or url reference to template to be used for communication"

* extension contains CommunicationPayloadData named communicationPayloadData 0..1
* extension[communicationPayloadData] ^short      = "Contains dynamic data elements and vendor / medium specific elements to be included in the message payload"
* extension[communicationPayloadData] ^definition = "Contains dynamic data elements and vendor / medium specific elements to be included in the message payload"

* extension contains CommunicationVendor named communicationVendor 0..1
* extension[communicationVendor] ^short      = "Vendor used to send the communication"
* extension[communicationVendor] ^definition = "Vendor used to send the communication"
