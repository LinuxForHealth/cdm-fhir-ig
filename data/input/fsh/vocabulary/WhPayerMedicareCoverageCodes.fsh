CodeSystem:     WhPayerMedicareCoverageCodeSystem
Id:             wh-payer-medicare-coverage
Title:          "Health Data Connect Medicare Coverage Codes"
Description:    "IBM® Health Data Connect standard code for the type of Medicare coverage, if any, for the person"
* ^caseSensitive = true
* #2          "Both Parts A and B"           "Both Parts A and B"
* #3          "Parts A, B and D"             "Parts A, B and D"
* #A          "Medicare Part A"              "Medicare Part A"
* #B          "Medicare Part B"              "Medicare Part B"
* #D          "Medicare Part D"              "Medicare Part D"
* #E          "Parts A and D"                "Parts A and D"
* #F          "Parts B and D"                "Parts B and D"
* #N          "Not Eligible for Medicare"    "Not Eligible for Medicare"

ValueSet:       WhPayerMedicareCoverageValueSet
Id:             wh-payer-medicare-coverage
Title:          "Health Data Connect Medicare Coverage Value Set"
Description:    "IBM® Health Data Connect standard value set for the type of Medicare coverage, if any, for the person"
* codes from system WhPayerMedicareCoverageCodeSystem
