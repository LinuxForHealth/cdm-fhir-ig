Profile:        CDMPractitionerBundle
Parent:         Bundle
Id:             cdm-practitioner-bundle
Title:          "CDM Practitioner Bundle"
Description:    "Health Data Connect bundle used to package Common Data Model practitioner resources for data ingestion"
* meta.profile 1..1
* entry ^slicing.ordered = true
* entry ^slicing.description = "Slice based on entry element type"
* entry ^slicing.rules = #open
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry contains
      Practitioner 1..1 and
      PractitionerRole 1..1
* entry[Practitioner].resource only CDMPractitioner
* entry[PractitionerRole].resource only CDMPractitionerRole
