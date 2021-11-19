CodeSystem:     InsurancePlanTypeCodeSystem
Id:             insurance-plan-type
Title:          "Insurance Plan Type Codes"
Description:    "The codes that indicates the specific benefit categories a member may have (medical, dental, vision, etc) based on benefit election."
* #hearing                     "Hearing"                      "Insurance plan type for hearing"
* #lifeins                     "Life Insurance"               "Insurance plan type for lift insurance"
* #substance-abuse-ambulatory  "Substance Abuse Ambulatory"   "Insurance plan type for ambulatory substance abuse"
* #substance-abuse-day-night   "Substance Abuse Day Night"    "Insurance plan type for day-night substance abuse"
* #substance-abuse-inpatient   "Substance Abuse Inpatient"    "Insurance plan type for inpatient substance abuse"
* #mental-health-ambulatory    "Mental Health Ambulatory"     "Insurance plan type for ambulatory mental health"
* #mental-health-day-night     "Mental Health Day Night"      "Insurance plan type for day-night mental health"
* #mental-health-inpatient     "Mental Health Inpatient"      "Insurance plan type for inpatient mental health"

ValueSet:       InsurancePlanTypeValueSet
Id:             insurance-plan-type
Title:          "Insurance Plan Type Value Set"
Description:    "The value set that indicates the specific benefit categories a member may have (medical, dental, vision, etc) based on benefit election."
//* codes from system INSURANCE-PLAN-TYPE
// Workaround until issue is fixed in Publisher
* codes from valueset http://terminology.hl7.org/ValueSet/insuranceplan-type
* codes from system InsurancePlanTypeCodeSystem
