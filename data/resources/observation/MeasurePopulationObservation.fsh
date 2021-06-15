Profile:        MeasurePopulationObservation    
Parent:         CDMObservation
Id:             measure-population-observation
Title:          "Measure Population Observation"
Description:    "Observation created by IBM Health Data Connect to record measure populations for a patient over time"

* basedOn 0..0
* partOf 0..0
* category 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* performer 0..0
* value[x] 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* note 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* component 0..0

* code 1..1
* code from MeasurePopulationTypeValueSet (extensible)
* code ^short      = "Type of observation (code / type), initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-observation | care-gap"
* code ^definition = "Type of observation (code / type), initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-observation | care-gap" 

* subject 1..1
* subject only Reference(Patient)

* effective[x] 1..1
* effective[x] only Period

* extension contains CanonicalMeasure  named canonicalMeasure 1..1
* extension[canonicalMeasure] ^short      = "Canonical reference to the specific version of the measure used to generate the population"
* extension[canonicalMeasure] ^definition = "Canonical reference to the specific version of the measure used to generate the population"

* extension contains MeasurePopulationId named measurePopulationId 1..1
* extension[measurePopulationId] ^short     =  "User-friendly textual key (internal use only) that identifies a specific population. This id should be unique across all measures and should not change when a measure is versioned or when overrides are applied. This value identifies the specific care gap or other population."
* extension[measurePopulationId] ^definition = "User-friendly textual key (internal use only) that identifies a specific population. This id should be unique across all measures and should not change when a measure is versioned or when overrides are applied. This value identifies the specific care gap or other population."

* extension contains AssignedPractitioner named assignedPractitioner 0..*
* extension[assignedPractitioner] ^short      = "The practitioners assigned to the patient when the measure population obserevation was identified"
* extension[assignedPractitioner] ^definition = "The practitioners assigned to the patient when the measure population obserevation was identified"

* extension contains CareGapComplianceMet named careGapComplianceMet 0..1
* extension[careGapComplianceMet] ^short      = "Indicates if the patient received the targeted treatment to close the care gap"
* extension[careGapComplianceMet] ^definition = "Indicates if the patient received the targeted treatment to close the care gap"

* extension contains RelatedObservation named relatedObservation 0..*
* extension[relatedObservation] ^short      = "Related observations that can be combined to fulfill a single time period for a given care gap or other measure population"
* extension[relatedObservation] ^definition = "Related observations that can be combined to fulfill a single time period for a given care gap or other measure population"
