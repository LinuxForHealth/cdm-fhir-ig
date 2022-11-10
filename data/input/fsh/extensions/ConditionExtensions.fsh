Extension:      ConditionDiseaseCourse
Id:             condition-disease-course
Title:          "Condition Disease Course"
Description:    "Clinical course of the disease (how the disease behaves over time), such as acute versus chronic"
* value[x] only CodeableConcept
* valueCodeableConcept from ConditionCourseValueSet (example)

Extension:      ProblemType
Id:             problem-type
Title:          "Problem Type"
Description:    "Problem type code"
* value[x] only CodeableConcept

Extension:      ProblemPriority
Id:             problem-priority
Title:          "Problem Priority"
Description:    "Problem priority code"
* value[x] only CodeableConcept

Extension:      RecorderFacility
Id:             recorder-facility
Title:          "Recorder Facility"
Description:    "Facility where condition was recorded"
* value[x] only Reference(Location or Organization)
