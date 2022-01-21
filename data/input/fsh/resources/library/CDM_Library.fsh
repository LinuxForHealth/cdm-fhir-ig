Profile:        CDMLibrary
Parent:         Library 
Id:             cdm-library
Title:          "CDM Library"
Description:    "IBM Health Data Connect Common Data Model definition of what fields we currently define for a library"

* contained 0..0
* meta only ProcessMeta

// Require at least one identifier
// Require identifiers to have one system and value 
// Type from extended set 
* identifier 0..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type from IdentifierTypeValueSet (extensible)

* parameter only ParameterDefinitionWithDefault
