Profile:        CDMClaimDrug
Parent:         CDMClaim
Id:             cdm-claim-drug
Title:          "CDM Claim Drug"
Description:    "The CDMClaimDrug profile extends the base CDMClaim profile with additional details that are specific to pharmacy claims"

* extension contains RxCount named rxCount 0..1
* extension[rxCount] ^short      = "Count of prescriptions for the drug claim"
* extension[rxCount] ^definition = "Count of prescriptions for the drug claim"

* item.extension contains AverageWholesalePrice named averageWholesalePrice 0..1
* item.extension[averageWholesalePrice]  ^short      = "The average wholesale price of this drug"
* item.extension[averageWholesalePrice]  ^definition = "The average wholesale price of this drug"

* item.extension contains CompoundCode named compoundCode 0..1
* item.extension[compoundCode]  ^short      = "Customer-specific code for the compound of the drug"
* item.extension[compoundCode]  ^definition = "Customer-specific code for the compound of the drug"

* item.detail.extension contains ClaimItemDetailClassification named claimItemDetailClassification 0..1
* item.detail.extension[claimItemDetailClassification] ^short      = "Classification of the information contained in this claim item detail section"
* item.detail.extension[claimItemDetailClassification] ^definition = "Classification of the information contained in this claim item detail section"
* item.detail.extension[claimItemDetailClassification].valueCodeableConcept from ClaimItemDetailClassificationValueSet (extensible)

* item.productOrService from NdcNoHyphensValueSet (example)
* item.detail.productOrService from NdcNoHyphensValueSet (example)
