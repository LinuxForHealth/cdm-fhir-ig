Extension:      CanonicalMeasure
Id:             canonical-measure
Title:          "CanonicalMeasure"
Description:    "Canonical reference to the specific version of the measure used to generate the resource."
* value[x] only canonical

Extension:      MeasurePopulationId
Id:             measure-population-id
Title:          "Measure Population Id"
Description:    "Unique static identifier for the measure population that does not change between cohort engine runs. This is a user-friendly textual key (internal use only) that identifies a specific population. This id should be unique across all measures and should not change when a measure is versioned or when overrides are applied."
* value[x] only id

Extension:      AssignedPractitioner
Id:             assigned-practitioner
Title:          "Assigned Practitioner"
Description:    "The practitioner assigned to the patient"
* value[x] only Reference(Practitioner or PractitionerRole)

Extension:      RelatedObservation
Id:             related-observation
Title:          "RelatedObservation"
Description:    "Related observations that can be combined to fulfill a single time period for a given care gap or other measure population."
* value[x] only Reference(MeasurePopulationObservation)
