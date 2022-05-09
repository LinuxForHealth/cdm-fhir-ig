CodeSystem:     WhClaimSubtypeCodeSystem
Id:             wh-claim-subtype
Title:          "Health Data Connect Claim Subtype Codes"
Description:    "Health Data Connect standard codes for the claim subtypes used to further define the claim type"
* ^caseSensitive = true
* #emergency      "Emergency"      "An indicator that this claim was an emergency"
* #inpatient      "Inpatient"      "Claims for inpatient institutional admissions"
* #outpatient     "Outpatient"     "Claims for outpatient institutional admissions"

 
ValueSet:       WhClaimSubtypeValueSet
Id:             wh-claim-subtype
Title:          "Health Data Connect Claim Subtype Value Set"
Description:    "Health Data Connect value set for the claim subtypes used to further define the claim type"
* codes from system WhClaimSubtypeCodeSystem
