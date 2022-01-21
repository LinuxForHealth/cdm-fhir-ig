Profile:        CDMMatchPractitioner
Parent:         Practitioner
Id:             cdm-match-practitioner
Title:          "CDM Match Practitioner"
Description:    "Match practitioner record created when matched practitioners are found, containing links to the source practitioner resources that were matched"
* contained 0..0
* meta only ProcessMeta

* active 0..0
* telecom 0..0
* address 0..0
* gender 0..0
* birthDate 0..0
* photo 0..0
* qualification 0..0
* communication 0..0

// Require at least one identifier
// Require identifiers to have one system and value 
// Type from extended set 
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type from IdentifierTypeValueSet (extensible)

* name 0..1

// Add seealso link for practitioner matching references
* extension contains SeeAlso named seeAlso 0..*
* extension[seeAlso].extension[matchSourceReference].valueReference only Reference(Practitioner)
* extension[seeAlso].extension[matchDetail].extension[matchComparedTo].valueReference only Reference(Practitioner)
* extension[seeAlso] ^short      = "References matched source practitioners. Links a CDMMatchPractitioner to one or more source CDMPractitioner resources that refer the same person."
* extension[seeAlso] ^definition = "References matched source practitioners. Links a CDMMatchPractitioner to one or more source CDMPractitioner resources that refer the same person."
