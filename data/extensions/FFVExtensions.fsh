Extension:      AttributionCode
Id:             attribution-code
Title:          "Attribution Code"
Description:    "FFV initiative attribution method code"
* value[x] only CodeableConcept
* value[x] from AttributionCodeValueSet (required)

Extension:      QualityMeasures
Id:             quality-measures
Title:          "Quality Measures"
Description:    "Quality measures related to the FFV intitiative"
* value[x] only Reference(QualityMeasureList)

Extension:      FFVSchedule
Id:             ffv-schedule
Title:          "FFV Schedule"
Description:    "Schedule code for the FFV initiative"
* value[x] only CodeableConcept
* value[x] from FFVScheduleValueSet (required)

Extension:      MeasureWeight
Id:             measure-weight
Title:          "Measure Weight"
Description:    "Measure Weight"
* value[x] only decimal