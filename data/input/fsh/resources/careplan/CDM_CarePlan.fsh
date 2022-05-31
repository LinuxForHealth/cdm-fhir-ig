Profile:        CDMCarePlan
Parent:         CarePlan
Id:             cdm-careplan
Title:          "CDM CarePlan"
Description:    "Health Data Connect Common Data Model definition of what fields we currently define for a care plan"
* contained 0..0
* meta only ProcessMeta

// Require at least one identifier
// Require identifiers to have one system and value 
// Type and assigner are optional
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type from IdentifierTypeValueSet (extensible)
