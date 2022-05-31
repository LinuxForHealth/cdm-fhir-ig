CodeSystem:     WhPayerGenderCodeSystem
Id:             wh-payer-gender
Title:          "Health Data Connect Gender Codes"
Description:    "Health Data Connect gender code"
* ^caseSensitive = true
* #M    "Male"      "Male"
* #F    "Female"    "Female"

ValueSet:       WhPayerGenderValueSet
Id:             wh-payer-gender
Title:          "Health Data Connect Gender Value Set"
Description:    "Health Data Connect gender value set"
* codes from system WhPayerGenderCodeSystem
