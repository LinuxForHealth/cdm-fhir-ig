Profile:        CareGapDetectedIssue    
Parent:         CDMDetectedIssue
Id:             care-gap-detected-issue
Title:          "Care Gap Detected Issue"
Description:    "Detected issues to record a history of open and closed care gaps identified for a patient over time."

* identifier contains
    Derived 0..1 
* identifier[Derived].use = #official
* identifier[Derived].type = IdentifierTypeCodeSystem#DRI
* identifier[Derived].system 1..1
* identifier[Derived].value 1..1

* code 0..0
* severity 0..0
* author 0..0
* implicated 0..0
* evidence 0..0
* detail 0..0
* reference 0..0
* mitigation 0..0

* patient 1..1
* identified[x] 1..1
* identified[x] only Period

* extension contains CanonicalMeasure  named canonicalMeasure 1..1
* extension[canonicalMeasure] ^short      = "Canonical reference to the specific version of the measure used to generate the care gap or population"
* extension[canonicalMeasure] ^definition = "Canonical reference to the specific version of the measure used to generate the care gap or population"

* extension contains MeasurePopulationId named measurePopulationId 1..1
* extension[measurePopulationId] ^short      = "User-friendly textual key (internal use only) that identifies the care gap. This id should be unique across all measures and should not change when a measure is versioned or when overrides are applied."
* extension[measurePopulationId] ^definition = "User-friendly textual key (internal use only) that identifies the care gap. This id should be unique across all measures and should not change when a measure is versioned or when overrides are applied."

* extension contains AssignedPractitioner named assignedPractitioner 0..*
* extension[assignedPractitioner] ^short       = "The practitioners assigned to the patient when the care gap or measure population was identified"
* extension[assignedPractitioner] ^definition = "The practitioners assigned to the patient when the care gap or measure population was identified"

* extension contains CareGapComplianceDisplayName named careGapComplianceDisplayName 0..1
* extension[careGapComplianceDisplayName] ^short      = "Text describing the treatment or compliance event required to close the care gap.  Should be suitable for display to patient."
* extension[careGapComplianceDisplayName] ^definition = "Text describing the treatment or compliance event required to close the care gap.  Should be suitable for display to patient."

* extension contains CareGapComplianceFrequency named careGapComplianceFrequency 0..1
* extension[careGapComplianceFrequency] ^short      = "Text describing the frequency of the treatment or compliance event required to close the care gap.  Frequency should be suitable for display to patient."
* extension[careGapComplianceFrequency] ^definition = "Text describing the frequency of the treatment or compliance event required to close the care gap.  Frequency should be suitable for display to patient."

* extension contains CareGapComplianceMet named careGapComplianceMet 0..1
* extension[careGapComplianceMet] ^short      = "Indicates if the patient received the targeted treatment to close the care gap"
* extension[careGapComplianceMet] ^definition = "Indicates if the patient received the targeted treatment to close the care gap"

* extension contains RelatedIssue named relatedIssue 0..*
* extension[relatedIssue] ^short      = "Related issue that can be combined to fulfill a single time period for a given care gap"
* extension[relatedIssue] ^definition = "Related issue that can be combined to fulfill a single time period for a given care gap"
