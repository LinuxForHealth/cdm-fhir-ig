
Profile:          CDMObservation
Parent:           Observation
Id:               cdm-observation
Title:            "CDM Observation"
Description:      "Health Data Connect Common Data Model definition of what fields we currently define for an observation"
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
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier contains
      Source 0..1 
* identifier[Source].use = #official
* identifier[Source].type = IdentifierTypeCodeSystem#SSRI
* identifier[Source].system 1..1
* identifier[Source].value 1..1

* value[x] only QuantityWithConversion or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period 
* component.value[x] only QuantityWithConversion or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period 
