Profile:        CDMClaimProfessional
Parent:         CDMClaim
Id:             cdm-claim-professional
Title:          "CDM Claim Professional"
Description:    "The CDMClaimProfessional profile extends the CDMClaimResponse resource with additional adjudication details that are specific to professional claims."

* extension contains ReferralIndicator named referralIndicator 0..1
* extension[referralIndicator]  ^short      = "An indicator signifying the service resulted from a referral"
* extension[referralIndicator]  ^definition = "An indicator signifying the service resulted from a referral"


