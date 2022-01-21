CodeSystem:     ClaimSupportingInfoCategoryCodeSystem
Id:             claim-supporting-info-category
Title:          "Claim Supporting Info Category Codes"
Description:    "Claim supporting info category codes for Health Data Connect claims"
* ^caseSensitive = true
* #dayssupply            "Day Supply"        "The number of days of drug therapy covered by this prescription"

ValueSet:       ClaimSupportingInfoCategoryValueSet
Id:             claim-supporting-info-category
Title:          "Claim Supporting Info Category Value Set"
Description:    "Category that groups related types of supporting info supplied on the claim"
* codes from system http://terminology.hl7.org/CodeSystem/claiminformationcategory
* codes from system ClaimSupportingInfoCategoryCodeSystem
