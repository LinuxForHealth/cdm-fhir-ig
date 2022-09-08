CodeSystem:     PayerEducationLevelCodeSystem
Id:             payer-education-level
Title:          "Payer Education Level Codes"
Description:    "Payer codes for the education level"
* ^caseSensitive = true
* #A    "Grade School or Less"              "Grade School or Less"
* #B    "Some High School"                  "Some High School"
* #C    "High School Graduate"              "High School Graduate"
* #D    "Some College"                      "Some College"
* #E    "Associates or Technical School"    "Associates or Technical School"
* #F    "Bachelors Degree"                  "Bachelors Degree"
* #G    "Post Graduate or Professional"     "Post Graduate or Professional"

ValueSet:       PayerEducationLevelValueSet
Id:             payer-education-level
Title:          "Payer Education Level Value Set"
Description:    "Value set containing payer coodes for the education level"
* codes from system PayerEducationLevelCodeSystem
