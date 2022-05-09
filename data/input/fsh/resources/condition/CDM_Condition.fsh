Profile:        CDMCondition
Parent:         Condition
Id:             cdm-condition
Title:          "CDM Condition"
Description:    "Health Data Connect Common Data Model definition of what fields we currently define for a condition"

// Adding inline resources as contained resources for references
* contained 0..*
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

* extension contains ProblemType named problemType 0..1 
* extension[problemType] ^short      = "Problem type code"
* extension[problemType] ^definition = "Problem type code"

* extension contains ProblemPriority named problemPriority 0..1
* extension[problemPriority] ^short      = "Problem priority code"
* extension[problemPriority] ^definition = "Problem priority code"

* extension contains ProblemClinicalCourse named problemClinicalCourse 0..1
* extension[problemClinicalCourse] ^short      = "Problem clinical course code"
* extension[problemClinicalCourse] ^definition = "Problem clinical course code"

* extension contains RecorderFacility named recorderFacility 0..1 
* extension[recorderFacility] ^short      = "Facility where condition was recorded"
* extension[recorderFacility] ^definition = "Facility where condition was recorded"
