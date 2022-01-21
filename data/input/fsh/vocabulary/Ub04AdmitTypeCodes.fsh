CodeSystem:     Ub04AdmitTypeCodeSystem
Id:             ub04-admit-type
Title:          "UB04 Admit Type Code System"
Description:    "Codes for the UB04 admission type"
* ^caseSensitive = true
* #1      "Emergency"                   "The patient requires immediate medical intervention as a result of severe, life threatening or potentially disabling conditions. Generally, the patient is admitted through the emergency room."
* #2      "Urgent"                      "The patient requires immediate attention for the care and treatment of a physical or mental disorder. Generally, the patient is admitted to the first available and suitable accommodation."
* #3      "Elective"                    "The patient’s condition permits adequate time to schedule the availability of a suitable accommodation."
* #4      "Newborn"                     "The patient is a newborn delivered either inside the admitting hospital (UB04 FL 15 value 5 [A baby born inside the admitting hospital] or outside of the hospital (UB04 FL 15 value “6” [A baby born outside the admitting hospital])."
* #5      "Trauma Center"               "The patient visits a trauma center (A trauma center means a facility licensed or designated by the State or local government authority authorized to do so, or as verified by the American College of surgeons and involving a trauma activation.)"
* #9      "Information not available"   "Information not available or the source value is missing, unknown, or not on the valid value list or within the range of valid values"

ValueSet:       Ub04AdmitTypeValueSet
Id:             ub04-admit-type
Title:          "UB04 Admit Type Value Set"
Description:    "Value set for the UB04 admission type"
* codes from system Ub04AdmitTypeCodeSystem
