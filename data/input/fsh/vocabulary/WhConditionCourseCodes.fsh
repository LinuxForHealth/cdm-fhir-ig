CodeSystem:     WhConditionCourseCodeSystem
Id:             wh-condition-course
Title:          "Health Data Connect Condition Course Codes"
Description:    "Health Data Connect codes for clinical course of a disease (how the disease behaves over time). These are part of SNOMED course parent concept (288524001)."
* ^caseSensitive = true
* #255299009        "Brittle course"     "Brittle course"
* #90734009         "Chronic"            "Chronic"
* #44180009         "Cyclic"             "Cyclic"
* #78880000         "Delayed onset"      "Delayed onset" 
* #61751001         "Gradual onset"      "Gradual onset"
* #702322003        "Non-progressive"    "Non-progressive"   
* #19939008         "Subacute"           "Subacute"
* #373935005        "Subacute onset"     "Subacute onset"
* #424124008        "Sudden onset AND/OR short duration" "Sudden onset AND/OR short duration"

ValueSet:       WhConditionCourseValueSet
Id:             wh-condition-course
Title:          "Health Data Connect Condition Course  Value Set"
Description:    "Health Data Connect value set for for clinical course of a disease (how the disease behaves over time)"
* codes from system WhConditionCourseCodeSystem
