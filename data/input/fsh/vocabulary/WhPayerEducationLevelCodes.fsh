CodeSystem:     WhPayerEducationLevelCodeSystem
Id:             wh-payer-education-level
Title:          "Health Data Connect Education Level Codes"
Description:    "IBM® Health Data Connect standard code for the education level"
* ^caseSensitive = true
* #A    "Grade School or Less"              "Grade School or Less"
* #B    "Some High School"                  "Some High School"
* #C    "High School Graduate"              "High School Graduate"
* #D    "Some College"                      "Some College"
* #E    "Associates or Technical School"    "Associates or Technical School"
* #F    "Bachelors Degree"                  "Bachelors Degree"
* #G    "Post Graduate or Professional"     "Post Graduate or Professional"

ValueSet:       WhPayerEducationLevelValueSet
Id:             wh-payer-education-level
Title:          "Health Data Connect Education Level Value Set"
Description:    "IBM® Health Data Connect standard value set for the education level"
* codes from system WhPayerEducationLevelCodeSystem
