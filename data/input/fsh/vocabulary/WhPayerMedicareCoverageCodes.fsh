CodeSystem:     PayerMedicareCoverageCodeSystem
Id:             payer-medicare-coverage
Title:          "Payer Medicare Coverage Codes"
Description:    "Payer codes for the type of Medicare coverage, if any, for the person"
* ^caseSensitive = true
* #2          "Both Parts A and B"           "Both Parts A and B"
* #3          "Parts A, B and D"             "Parts A, B and D"
* #A          "Medicare Part A"              "Medicare Part A"
* #B          "Medicare Part B"              "Medicare Part B"
* #D          "Medicare Part D"              "Medicare Part D"
* #E          "Parts A and D"                "Parts A and D"
* #F          "Parts B and D"                "Parts B and D"
* #N          "Not Eligible for Medicare"    "Not Eligible for Medicare"

ValueSet:       PayerMedicareCoverageValueSet
Id:             payer-medicare-coverage
Title:          "Payer Medicare Coverage Value Set"
Description:    "Value set containting payer coees for the type of Medicare coverage, if any, for the person"
* codes from system PayerMedicareCoverageCodeSystem
