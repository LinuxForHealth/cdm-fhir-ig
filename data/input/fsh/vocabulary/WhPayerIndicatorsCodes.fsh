CodeSystem:     WhPayerIndicatorsCodeSystem
Id:             wh-payer-indicators
Title:          "Health Data Connect Indicator Codes"
Description:    "Health Data Connect indicator type code"
* ^caseSensitive = true
* #Y    "Yes"     "Positive indication"
* #N    "No"      "Negative indication"
* #E    "E"       "Unknown or exception indication. For example, Enrollment may not have any claims." 

ValueSet:       WhPayerIndicatorsValueSet
Id:             wh-payer-indicators
Title:          "Health Data Connect Indicator Value Set"
Description:    "Health Data Connect indicator type value set"
* codes from system WhPayerIndicatorsCodeSystem
