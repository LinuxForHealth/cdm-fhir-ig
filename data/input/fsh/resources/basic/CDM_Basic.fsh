Profile:        CDMBasic
Parent:         Basic
Id:             cdm-basic
Title:          "CDM Basic"
Description:    "Basic is a special type of resource that doesn't correspond to a specific pre-defined HL7 concept. The CDMBasic profile extends the base FHIR Basic resource with support for additional code types." 

* contained 0..0
* meta only ProcessMeta

// Must support at least one identifier
// Identifiers to have one system and value 
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type  from IdentifierTypeValueSet (extensible) 

* code                    from BasicResourceTypeValueSet (preferred)
