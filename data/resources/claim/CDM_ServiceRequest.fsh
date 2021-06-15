Profile:        CDMServiceRequest
Parent:         ServiceRequest
Id:             cdm-service-request
Title:          "CDM Service Request"
Description:    "A record of a request for service such as diagnostic investigations, treatments, or operations to be performed. The CDMServiceRequest profile extends the base FHIR ServiceRequest resource with additional details."
* contained 0..0
* meta only ProcessMeta

// Must support at least one identifier
// Identifiers to have one system and value 
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type  from IdentifierTypeValueSet (extensible) 
