CodeSystem:     IdentifierTypeCodeSystem
Id:             identifier-type
Title:          "Identifier Type Codes"
Description:    "Extended set of Identifier type code for LinuxForHealth Common Data Model resources"
* ^caseSensitive = true
* #DRI      "Derived Resource Identifier"           "Business identifier for derived resources created by an internal HDC process"
* #MDI      "Match Data Identifier"                 "Shared business identifier that is created to link matched resources during MDI match processing"
* #RXN      "Prescription Number"                   "RX or prescription number for a drug"
* #SSRI     "Source System Row Identifier"          "Represents the primary id from the original source system"
* #ADKEY    "Advantage Database Key"                "Advantage Database Key"
* #CUSTKEY  "Advantage customer key"                "Advantage customer key"
* #TKN      "Token identifier"                      "Data tokenization service token"

ValueSet:       IdentifierTypeValueSet
Id:             identifier-type
Title:          "Identifier Type Value Set"
Description:    "Extended set of identifier type codes from FHIR HL7 and extended LinuxForHealth Common Data Model resource identifiers"
* codes from system http://terminology.hl7.org/CodeSystem/v2-0203
* codes from system IdentifierTypeCodeSystem

