Profile:        CDMCondition
Parent:         Condition
Id:             cdm-condition
Title:          "CDM Condition"
Description:    "LinuxForHealth Common Data Model definition of what fields we currently define for a condition"

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

* extension contains ConditionDiseaseCourse named conditionDiseaseCourse 0..1
* extension[conditionDiseaseCourse].valueCodeableConcept from ConditionCourseValueSet (example)
* extension[conditionDiseaseCourse] ^short      = "Clinical course of the disease (how the disease behaves over time), such as acute versus chronic"
* extension[conditionDiseaseCourse] ^definition = "Clinical course of the disease (how the disease behaves over time), such as acute versus chronic"

* extension contains ProblemType named problemType 0..1 
* extension[problemType] ^short      = "Problem type code"
* extension[problemType] ^definition = "Problem type code"

* extension contains ProblemPriority named problemPriority 0..1
* extension[problemPriority] ^short      = "Problem priority code"
* extension[problemPriority] ^definition = "Problem priority code"

* extension contains RecorderFacility named recorderFacility 0..1 
* extension[recorderFacility] ^short      = "Facility where condition was recorded"
* extension[recorderFacility] ^definition = "Facility where condition was recorded"
