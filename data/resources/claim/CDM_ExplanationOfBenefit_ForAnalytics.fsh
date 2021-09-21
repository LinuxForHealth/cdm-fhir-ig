Profile:        CDMExplanationOfBenefitForAnalytics
Parent:         CDMExplanationOfBenefit
Id:             cdm-explanation-of-benefit-for-analytics
Description:    "The CDMExplanationOfBenefitForAnalytics profile extends the base CDMExplanationOfBenefit profile with additional details that are useful for analytics."

* item.extension contains AverageWholesalePrice named averageWholesalePrice 0..1
* item.extension[averageWholesalePrice]  ^short      = "The average wholesale price of this drug"
* item.extension[averageWholesalePrice]  ^definition = "The average wholesale price of this drug"

* item.detail.extension contains ClaimItemDetailClassification named claimItemDetailClassification 0..1
* item.detail.extension[claimItemDetailClassification] ^short      = "Classification of the information contained in this item detail section"
* item.detail.extension[claimItemDetailClassification] ^definition = "Classification of the information contained in this item detail section"
* item.detail.extension[claimItemDetailClassification].valueCodeableConcept from ClaimItemDetailClassificationValueSet (extensible)
