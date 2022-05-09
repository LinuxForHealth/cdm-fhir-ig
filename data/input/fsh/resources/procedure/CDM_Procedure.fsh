Profile:        CDMProcedure
Parent:         Procedure
Id:             cdm-procedure
Title:          "CDM Procedure"
Description:    "Health Data Connect Common Data Model definition of what fields we currently define for a procedure"
* contained 0..0
* meta only ProcessMeta

// Require at least one identifier
// Require identifiers to have one system and value 
// Type from extended set 
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type from IdentifierTypeValueSet (extensible)

// Slice Identifiers by type
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on entry system"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier contains
      Source 0..1 
* identifier[Source].use = #official
* identifier[Source].type = IdentifierTypeCodeSystem#SSRI
* identifier[Source].system 1..1
* identifier[Source].value 1..1

* extension contains ProcedureModifier named procedureModifier 0..*
* extension[procedureModifier] ^short      = "Modifier codes used either to supplement information, or to adjust procedure care descriptions"
* extension[procedureModifier] ^definition = "Modifier codes used either to supplement information, or to adjust procedure care descriptions"
