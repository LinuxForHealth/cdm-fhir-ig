Alias: IdentifierExtension = http://hl7.org/fhir/StructureDefinition/elementdefinition-identifier

Profile:          FFVInitiative
Parent:           Contract
Id:               ffv-initative-resource
Title:            "Fee for Value Initative"
Description:      "IBM Health Data Connect Common Data Model definition of what fields we currently define for an FFV initiative record"
* contained 0..0
* meta only ProcessMeta

* meta.profile 1..1
* title 1..1
* extension contains 
     AttributionCode named attributionCode 1..1 and
     FFVSchedule named ffvSchedule 1..1 and
     QualityMeasures named qualityMeasures 0..*
* extension[attributionCode].value[x] from AttributionCodeValueSet (required)
* extension[attributionCode] ^short = "FFV initiative attribution method code"
* extension[attributionCode] ^definition = "FFV initiative attribution method code"
* extension[qualityMeasures] ^short = "Quality measures related to the FFV intitiative"
* extension[qualityMeasures] ^definition = "Quality measures related to the FFV intitiative"
* extension[ffvSchedule].value[x] from FFVScheduleValueSet (required)
* extension[ffvSchedule] ^short = "Schedule code for the FFV initiative"
* extension[ffvSchedule] ^definition = "Schedule code for the FFV initiative"

* identifier ^slicing.ordered = true
* identifier ^slicing.description = "Slice based on entry system"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier contains
      key 1..1 and
      customerId 1..1
* identifier[key].type = IdentifierTypeCodeSystem#ADKEY
* identifier[customerId].type = IdentifierTypeCodeSystem#CUSTKEY

* supportingInfo ^slicing.ordered = true
* supportingInfo ^slicing.description = "Slice based on entry system"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.discriminator.type = #pattern
* supportingInfo ^slicing.discriminator.path = "type"
* supportingInfo contains
      participatingProviders 1..1 and
      excludedPatients 1..1 and
      includedPatients 0..1
* supportingInfo[participatingProviders] only Reference(PractitionerList)
* supportingInfo[excludedPatients] only Reference(PatientList)
* supportingInfo[includedPatients] only Reference(PatientList)

Profile:          QualityMeasureList
Parent:           List
Id:               quality-measure-list
Title:            "Quality Measure List"
Description:      "A list of references to specific measures"
* status = #current
* mode = #working
* title 0..0
* code 0..0
* subject 0..0
* encounter 0..0
* date 0..0
* source 0..0
* orderedBy 0..0
* note 0..0
* entry.item only Reference(Measure)
* entry.extension contains MeasureWeight named weight 1..1
