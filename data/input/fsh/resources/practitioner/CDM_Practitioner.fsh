Profile:          CDMPractitioner
Parent:           Practitioner
Id:               cdm-practitioner
Title:            "CDM Practitioner"
Description:      "IBM Health Data Connect Common Data Model definition of what fields we currently define for a practitioner"
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
      Source 0..1 and   // SSRI 
      NPI 0..1 and      // NPI as PRN type
      Tax 0..1 and      // TIN
      MDI 0..1          // MDI
* identifier[Source].use = #official
* identifier[Source].type = IdentifierTypeCodeSystem#SSRI
* identifier[Source].system 1..1
* identifier[Source].value 1..1
* identifier[NPI].use = #official
* identifier[NPI].type = ID-TYPE#PRN
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value 1..1
* identifier[Tax].use = #secondary
* identifier[Tax].type = ID-TYPE#TAX
* identifier[Tax].system 1..1
* identifier[Tax].value 1..1
* identifier[MDI].use = #secondary
* identifier[MDI].type = IdentifierTypeCodeSystem#MDI
* identifier[MDI].system 1..1
* identifier[MDI].value 1..1

* address only CDMAddress
* telecom only CDMContactPoint
