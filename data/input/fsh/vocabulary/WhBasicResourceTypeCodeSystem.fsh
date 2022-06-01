CodeSystem:     WhBasicResourceTypeCodeSystem
Id:             wh-basic-resource-type
Title:          "Health Data Connect Basic Resource Type Codes"
Description:    "Health Data Connect standard codes for the basic resource type"
* ^caseSensitive = true
* #patient-tokens   "Patient Tokens"      "A set of anonymous patient identifiers created by hashing Personally identifiable information (PII)"


ValueSet:       WhBasicResourceTypeValueSet
Id:             wh-basic-resource-type
Title:          "Health Data Connect Basic Resource Value Set"
Description:    "Health Data Connect value set for the basic resource type"
* codes from system WhBasicResourceTypeCodeSystem
* codes from system BASIC-RESOURCE-TYPE

