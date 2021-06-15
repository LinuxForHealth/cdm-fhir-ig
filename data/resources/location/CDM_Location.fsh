Profile:          CDMLocation
Parent:           Location
Id:               cdm-location
Title:            "CDM Location"
Description:      "IBM Health Data Connect Common Data Model definition of what fields we currently define for a location"
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
      Tax 0..1 and      // TAX
      NPI 0..1          // NPI
* identifier[Source].use = #official
* identifier[Source].type = IdentifierTypeCodeSystem#SSRI
* identifier[Source].system 1..1
* identifier[Source].value 1..1
* identifier[Tax].use = #secondary
* identifier[Tax].type = ID-TYPE#TAX
* identifier[Tax].system 1..1
* identifier[Tax].value 1..1
* identifier[NPI].use = #secondary
* identifier[NPI].type = ID-TYPE#NPI
* identifier[NPI].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[NPI].value 1..1

* name 1..1

* type from ServiceDeliveryLocationTypeValueSet (extensible)

* address only CDMAddress
* telecom only CDMContactPoint
