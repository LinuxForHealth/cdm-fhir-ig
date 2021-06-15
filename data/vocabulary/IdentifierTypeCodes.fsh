CodeSystem:     IdentifierTypeCodeSystem
Id:             identifier-type
Title:          "Identifier Type Codes"
Description:    "Extended set of Identifier type code for IBM Health Data Connect Common Data Model resources"
* #DRI      "Derived Resource Identifier"           "Business identifier for derived resources created by an internal IBM process"
* #MDI      "Match Data Identifier"                 "Shared business identifier that is created to link matched resources during MDI match processing"
* #SSRI     "Source System Row Identifier"          "Represents the primary id from the original source system"
* #ADKEY    "Advantage Database Key"                "Advantage Database Key"
* #CUSTKEY  "Advantage customer key"                "Advantage customer key"

ValueSet:       IdentifierTypeValueSet
Id:             identifier-type
Title:          "Identifier Type Value Set"
Description:    "Extended set of identifier type codes from FHIR HL7 and extended IBM Health Data Connect Common Data Model resource identifiers"
* codes from system http://terminology.hl7.org/CodeSystem/v2-0203
* codes from system IdentifierTypeCodeSystem
