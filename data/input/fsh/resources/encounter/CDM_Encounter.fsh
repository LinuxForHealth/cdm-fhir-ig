Profile:        CDMEncounter
Parent:         Encounter
Id:             cdm-encounter
Title:          "CDM Encounter"
Description:    "LinuxForHealth Common Data Model definition of what fields we currently define for an encounter"
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

* class from EncounterClassValueSet (extensible)

* extension contains ClaimType named claimType 0..1
* extension[claimType].valueCodeableConcept from ClaimTypeValueSet (extensible)
* extension[claimType] ^short      = "Type of claim determined from the clinical source and not adjudicated claim"
* extension[claimType] ^definition = "Type of claim determined from the clinical source and not adjudicated claim"

* extension contains Insured named insured 0..*
* extension[insured] ^short      = "Insurance context for the encounter"
* extension[insured] ^definition = "Insurance context for the encounter"

* reasonReference only ReferenceWithSequence
