CodeSystem:     ClaimItemDetailClassificationCodeSystem
Id:             claim-item-detail-classification
Title:          "Claim Item Detail Classification Codes"
Description:    "Item detail classification for claims"
* ^caseSensitive = false
* #dispensing-fee       "Dispensing Fee"      "An administrative fee charged by the pharmacy for dispensing the prescription"
* #ingredient-cost      "Ingredient Cost"     "The charge or cost associated with the pharmaceutical product"
* #sales-tax            "Sales Tax"           "The amount of sales tax applied to the cost of the prescription"

ValueSet:       ClaimItemDetailClassificationValueSet
Id:             claim-item-detail-classification
Title:          "Claim Item Detail Classification Value Set"
Description:    "Item detail classification value set for claims"
* codes from system ClaimItemDetailClassificationCodeSystem
