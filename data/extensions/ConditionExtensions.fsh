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

Extension:      ProblemClinicalCourse
Id:             problem-clinical-course
Title:          "Problem Clinical Course"
Description:    "Problem clinical course code"
* value[x] only CodeableConcept

Extension:      RecorderFacility
Id:             recorder-facility
Title:          "Recorder Facility"
Description:    "Facility where condition was recorded"
* value[x] only Reference(Location or Organization)
