CodeSystem:     BasicResourceTypeCodeSystem
Id:             basic-resource-type
Title:          "Basic Resource Type Codes"
Description:    "Standard codes for the basic resource type"
* ^caseSensitive = true
* #patient-tokens   "Patient Tokens"      "A set of anonymous patient identifiers created by hashing Personally identifiable information (PII)"


ValueSet:       BasicResourceTypeValueSet
Id:             basic-resource-type
Title:          "Basic Resource Value Set"
Description:    "Value set for the basic resource type"
* codes from system http://terminology.hl7.org/CodeSystem/basic-resource-type
* codes from system BasicResourceTypeCodeSystem

