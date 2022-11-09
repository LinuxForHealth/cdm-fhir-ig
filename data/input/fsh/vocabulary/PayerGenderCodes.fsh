CodeSystem:     PayerGenderCodeSystem
Id:             payer-gender
Title:          "Payer Gender Codes"
Description:    "Payer gender codes"
* ^caseSensitive = true
* #M    "Male"      "Male"
* #F    "Female"    "Female"

ValueSet:       PayerGenderValueSet
Id:             payer-gender
Title:          "Payer Gender Value Set"
Description:    "Payer gender value set"
* codes from system PayerGenderCodeSystem
