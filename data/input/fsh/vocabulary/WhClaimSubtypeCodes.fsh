CodeSystem:     ClaimSubtypeCodeSystem
Id:             claim-subtype
Title:          "Claim Subtype Codes"
Description:    "Standard codes for the claim subtypes used to further define the claim type"
* ^caseSensitive = true
* #emergency      "Emergency"      "An indicator that this claim was an emergency"
* #inpatient      "Inpatient"      "Claims for inpatient institutional admissions"
* #outpatient     "Outpatient"     "Claims for outpatient institutional admissions"

 
ValueSet:       ClaimSubtypeValueSet
Id:             claim-subtype
Title:          "Claim Subtype Value Set"
Description:    "Value set for the claim subtypes used to further define the claim type"
* codes from system ClaimSubtypeCodeSystem
