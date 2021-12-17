Profile:        CDMMatchLocation
Parent:         Location
Id:             cdm-match-location
Title:          "Location Matching - Match Location"
Description:    "Match location record created when matched locations are found, containing links to the source location resources that were matched"
* contained 0..0
* meta only ProcessMeta

* status 0..0
* operationalStatus 0..0
* alias 0..0
* description 0..0
* mode 0..0
* type 0..0
* telecom 0..0
* address 0..0
* physicalType 0..0
* position 0..0
* managingOrganization 0..0
* partOf 0..0
* hoursOfOperation 0..0
* availabilityExceptions 0..0
* endpoint 0..0

// Require at least one identifier
// Require identifiers to have one system and value 
// Type from extended set 
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type from IdentifierTypeValueSet (extensible)

* name 0..1

// Add seealso link for location matching references
* extension contains SeeAlso named seeAlso 0..*
* extension[seeAlso].extension[matchSourceReference].valueReference only Reference(Location)
* extension[seeAlso].extension[matchDetail].extension[matchComparedTo].valueReference only Reference(Location)
* extension[seeAlso] ^short      = "References matched source locations. Links a CDMMatchLocation to one or more source CDMLocation resources that refer the same physical location." 
* extension[seeAlso] ^definition = "References matched source locations. Links a CDMMatchLocation to one or more source CDMLocation resources that refer the same physical location."
