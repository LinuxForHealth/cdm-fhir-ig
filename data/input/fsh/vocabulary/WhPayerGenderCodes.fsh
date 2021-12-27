CodeSystem:     WhPayerGenderCodeSystem
Id:             wh-payer-gender
Title:          "Health Data Connect Gender Codes"
Description:    "IBM® Health Data Connect gender code"
* ^caseSensitive = false
* #F    "Female"    "Female"
* #M    "Male"      "Male"

ValueSet:       WhPayerGenderValueSet
Id:             wh-payer-gender
Title:          "Health Data Connect Gender Value Set"
Description:    "IBM® Health Data Connect gender value set"
* codes from system WhPayerGenderCodeSystem
