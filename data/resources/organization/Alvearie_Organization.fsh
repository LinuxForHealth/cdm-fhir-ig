Profile:          AlvearieOrganization
Parent:           Organization
Id:               alvearie-organization
Title:            "Alvearie Organization"
Description:      "Alvearie definition of what fields are needed for a organization"
* contained 0..0
* meta only ProcessMeta

// Require at least one identifier
// Require identifiers to have one system and value 
// Type and assigner are optional
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type from IdentifierTypeValueSet (extensible)

// Slice Identifiers by type
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on entry system"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern
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

* telecom.extension contains ContactPointCountry named contactPointCountry 0..1
* telecom.extension[contactPointCountry] ^short = "The country code as defined by the ITU. This extension is used when a system wishes to designate specific parts of a phone number"
* telecom.extension contains ContactPointExt named contactPointExt 0..1
* telecom.extension[contactPointExt] ^short = "The number that may be dialed within a private phone network or after successfully connecting to a private phone network."
