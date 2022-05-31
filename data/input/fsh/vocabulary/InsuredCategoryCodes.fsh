CodeSystem:     InsuredCategoryCodeSystem
Id:             insured-category
Title:          "Insured Category Code System"
Description:    "Code system that defines a category of insurance"
* ^caseSensitive = true
* #PRIVATE         "Private"           "Private"
* #MEDICARE        "Medicare"          "Medicare"
* #RESEARCH        "Research"          "Research"
* #DENTAL          "Dental"            "Dental"
* #MEDICAID        "Medicaid"          "Medicaid"
* #OTHERPUBLIC     "Other Public"      "Other Public"
* #OTHER           "Other"             "Other"
* #UNKNOWN         "Unknown"           "Unknown"
* #SELFPAY         "Self Pay"          "Self Pay"

ValueSet:       InsuredCategoryValueSet
Id:             insured-category
Title:          "Insured Category Value Set"
Description:    "Value set that defines a category of insurance"
* codes from system InsuredCategoryCodeSystem
