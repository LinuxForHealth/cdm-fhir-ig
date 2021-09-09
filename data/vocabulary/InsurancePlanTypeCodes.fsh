CodeSystem:     InsurancePlanTypeCodeSystem
Id:             insurance-plan-type
Title:          "Insurance Plan Type Codes"
Description:    "The codes that indicates the specific benefit categories a member may have (medical, dental, vision, etc) based on benefit election."
* #hearing              "Hearing"                    ""
* #lifeins              "Life Insurance"             ""

ValueSet:       InsurancePlanTypeValueSet
Id:             insurance-plan-type
Title:          "Insurance Plan Type Value Set"
Description:    "The value set that indicates the specific benefit categories a member may have (medical, dental, vision, etc) based on benefit election."
//* codes from system INSURANCE-PLAN-TYPE
// Workaround until issue is fixed in Publisher
* codes from valueset http://terminology.hl7.org/ValueSet/insuranceplan-type
* codes from system InsurancePlanTypeCodeSystem
