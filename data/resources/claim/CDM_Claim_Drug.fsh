Profile:        CDMClaimDrug
Parent:         CDMClaim
Id:             cdm-claim-drug
Title:          "CDM Claim Drug"
Description:    "The CDMClaimDrug profile extends the base CDMClaim profile with additional details that are specific to pharmacy claims"

* item.extension contains CompoundCode named compoundCode 0..1
* item.extension[compoundCode]  ^short      = "Indicator of whether the product is a compound drug or not"
* item.extension[compoundCode]  ^definition = "Indicator of whether the product is a compound drug or not"

* item.detail.extension contains ClaimItemDetailClassification named claimItemDetailClassification 0..1
* item.detail.extension[claimItemDetailClassification] ^short      = "Classification of the information contained in this claim item detail section"
* item.detail.extension[claimItemDetailClassification] ^definition = "Classification of the information contained in this claim item detail section"

* item.productOrService from NdcNoHyphensValueSet (example)
* item.detail.productOrService from NdcNoHyphensValueSet (example)
