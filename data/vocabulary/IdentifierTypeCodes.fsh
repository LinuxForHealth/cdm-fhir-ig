CodeSystem:     IdentifierTypeCodeSystem
Id:             identifier-type
Title:          "Identifier Type Codes"
Description:    "Extended set of Identifier type code for Alvearie resources"
* #DRI      "Derived Resource Identifier"           "Used for business identifier for derived resources created by an internal process"
* #MDI      "Match Data Identifier"                 "Used for match identifiers that link up matched patient, provider, and location recources"
* #SSRI     "Source System Row Identifier"          "Used for source system identifiers that the primary identifier for resources that originate from an external source system"

ValueSet:       IdentifierTypeValueSet
Id:             identifier-type
Title:          "Identifier Type Value Set"
Description:    "Extended set of identifier type codes from FHIR HL7 and extended Alvearie resource identifiers"
* codes from system http://terminology.hl7.org/CodeSystem/v2-0203
* codes from system IdentifierTypeCodeSystem
