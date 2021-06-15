Profile:        CDMClaimFacility
Parent:         CDMClaim
Id:             cdm-claim-facility
Title:          "CDM Claim Facility"
Description:    "The CDMClaimFacility profile extends the base CDMClaim profile with additional details that are specific to facility claims"

* extension contains ReferralIndicator named referralIndicator 0..1
* extension[referralIndicator]  ^short      = "An indicator signifying the service resulted from a referral"
* extension[referralIndicator]  ^definition = "An indicator signifying the service resulted from a referral"
