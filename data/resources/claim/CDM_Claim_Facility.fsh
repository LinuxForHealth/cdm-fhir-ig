Profile:        CDMClaimFacility
Parent:         CDMClaim
Id:             cdm-claim-facility
Title:          "CDM Claim Facility"
Description:    "The CDMClaimFacility profile extends the base CDMClaim profile with additional details that are specific to facility claims"

* extension contains AdmitCount named admitCount 0..1
* extension[admitCount] ^short      = "Used to determine which facility claims should be counted as inpatient admissions"
* extension[admitCount] ^definition = "Used to determine which facility claims should be counted as inpatient admissions"
