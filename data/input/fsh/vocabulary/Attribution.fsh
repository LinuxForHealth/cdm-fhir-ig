CodeSystem:     AttributionCodeSystem
Id:             attribution-code-system
Title:          "Attribution Codes"
Description:    "Types of attribution used to associate a patient to a provider"
* ^caseSensitive = false
* #client-emr-pcp       "Client EMR PCP"                    "Primary care physician recorded in a client's PMS or EMR system"
* #eng-attr-pcp         "Engagement Attributed PCP"         "Primary care physician attributed by the Engagement pipeline"
* #eng-attr-specialist  "Engagement Attributed Specialist"  "Specialist physician attributed by the Engagement pipeline"
* #enrollment           "Enrollment"                        "Practitioner provided on the eligibility record"
* #adv-imputed-pcp      "Advantage Imputed PCP"             "Primary care physician imputed by the Advantage pipeline"

ValueSet:       AttributionCodeValueSet
Id:             attribution-code-vs
Title:          "Attribution Codes"
Description:    "Types of attribution used to associate a patient to a provider"
* codes from system AttributionCodeSystem
* codes from system AttributionSourceCodeSystem
* codes from system AttributionProductCodeSystem

CodeSystem:     AttributionSourceCodeSystem
Id:             attribution-source
Title:          "Attribution Source Codes"
Description:    "Sources of attribution used to associate a patient to a practitioner"
* ^caseSensitive = false
* #client-emr           "Client EMR"                        "Practitioner attribution recorded in a client's PMS or EMR system"
* #enrollment           "Enrollment"                        "Practitioner provided on the eligibility record"
* #imputed              "Imputed"                           "Practitioner attribution derived from attribution models"

ValueSet:       AttributionSourceValueSet
Id:             attribution-source
Title:          "Attribution Source Value Set"
Description:    "Sources of attribution used to associate a patient to a practitioner"
* codes from system AttributionSourceCodeSystem

CodeSystem:     AttributionProductCodeSystem
Id:             attribution-product
Title:          "Attribution Product Codes"
Description:    "Product that associate a patient to a practitioner"
* ^caseSensitive = false
* #advantage          "Advantage Suite"                     "Primary care physician imputed by the Advantage pipeline"
* #engagement         "Engagement"                          "Practitioner attributed by the Engagement pipeline"

ValueSet:       AttributionProductValueSet
Id:             attribution-product
Title:          "Attribution Product Value Set"
Description:    "Products that associate a patient to a practitioner"
* codes from system AttributionProductCodeSystem
