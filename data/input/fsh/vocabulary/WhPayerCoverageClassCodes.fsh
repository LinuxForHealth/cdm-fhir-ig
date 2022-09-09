CodeSystem:     PayerCoverageClassCodeSystem
Id:             payer-coverage-class
Title:          "Payer Coverage Class Codes"
Description:    "LinuxForHealth standard code for the coverage class"
* ^caseSensitive = true
* #election-tier    "Election Tier"       "Elected tier for coverage"
* #group-type       "Group Type"          "Type of group for coverage"

ValueSet:       PayerCoverageClassValueSet
Id:             payer-coverage-class
Title:          "Payer Coverage Class Value Set"
Description:    "LinuxForHealth standard value set for the coverage class"
* codes from system COVERAGE-CLASS
* codes from system PayerCoverageClassCodeSystem
