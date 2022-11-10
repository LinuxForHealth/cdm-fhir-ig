Profile:        CDMPerson
Parent:         Person
Id:             cdm-person
Title:          "CDM Person"
Description:    "LinuxForHealth Common Data Model definition of what fields we currently define for a person"
* contained 0..0
* meta only ProcessMeta

* identifier 0..*
* identifier.value 1..1
* identifier.type from IdentifierTypeValueSet (extensible)
* identifier only CDMIdentifier

* extension contains CitizenStatus named citizenStatus 0..1
* extension[citizenStatus] ^short      = "Customer-specific code for the citizenship status of the person"
* extension[citizenStatus] ^definition = "Customer-specific code for the citizenship status of the person"
