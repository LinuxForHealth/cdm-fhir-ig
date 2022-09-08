CodeSystem:     PayerCoverageClassCodeSystem
Id:             payer-coverage-class
Title:          "Health Data Connect Coverage Class Codes"
Description:    "Health Data Connect standard code for the coverage class"
* ^caseSensitive = true
* #election-tier    "Election Tier"       "Elected tier for coverage"
* #group-type       "Group Type"          "Type of group for coverage"

ValueSet:       PayerCoverageClassValueSet
Id:             payer-coverage-class
Title:          "Health Data Connect Coverage Class Value Set"
Description:    "Health Data Connect standard value set for the coverage class"
* codes from system COVERAGE-CLASS
* codes from system PayerCoverageClassCodeSystem
