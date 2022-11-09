CodeSystem:     PayerIndicatorsCodeSystem
Id:             payer-indicators
Title:          "Payer Indicator Codes"
Description:    "Payer indicator type code"
* ^caseSensitive = true
* #Y    "Yes"     "Positive indication"
* #N    "No"      "Negative indication"
* #E    "E"       "Unknown or exception indication. For example, Enrollment may not have any claims." 

ValueSet:       PayerIndicatorsValueSet
Id:             payer-indicators
Title:          "Payer Indicator Value Set"
Description:    "Payer indicator type value set"
* codes from system PayerIndicatorsCodeSystem
