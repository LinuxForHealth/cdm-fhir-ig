Extension:      ClaimType
Id:             claim-type
Title:          "Claim Type"
Description:    "Type of claim determined from the clinical source and not adjudicated claim"
* value[x] only CodeableConcept

Extension:      InsuredRank
Id:             insured-rank
Title:          "Insured Rank"
Description:    "Ordered rank to associate with an insurance option within a particular context (such as an Encounter)"
* value[x] only positiveInt

Extension:      InsuredCategory
Id:             insured-category
Title:          "Insured Category"
Description:    "Category of insurance"
* value[x] only CodeableConcept
* valueCodeableConcept from InsuredCategoryValueSet (extensible)

Extension:      Insured
Id:             insured
Title:          "Insured"
Description:    "Container for elements providing insurance context"
* extension contains 
    InsuredRank named insuredRank 0..1 and 
    InsuredCategory named insuredCategory 0..*
