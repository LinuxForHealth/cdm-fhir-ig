Profile:        CDMInsurancePlan
Parent:         InsurancePlan
Id:             cdm-insurance-plan
Title:          "CDM Insurance Plan"
Description:    "IBM Health Data Connect Common Data Model definition of what fields we currently define for an insurance plan"
* contained 0..0
* meta only ProcessMeta

* coverage.network.identifier.value 0..1
* ownedBy 0..1

* type          from InsurancePlanTypeValueSet (extensible)
* coverage.type from InsurancePlanTypeValueSet (extensible)

* extension contains IndustryClassification named IndustryClassification 0..1
* extension[IndustryClassification].valueCodeableConcept from WhPayerJobTitleValueSet (example)
* extension[IndustryClassification] ^short      = "The industry classification code which can be based on the North American Industry Classification System (NAICS)"
* extension[IndustryClassification] ^definition = "The industry classification code which can be based on the North American Industry Classification System (NAICS)"

* extension contains WhPayerDentalCoverageIndicator named whPayerDentalCoverageIndicator 0..1
* extension[whPayerDentalCoverageIndicator] ^short      = "Indicates whether the member has dental benefit coverage: Y or N"
* extension[whPayerDentalCoverageIndicator] ^definition = "Indicates whether the member has dental benefit coverage: Y or N"

* extension contains WhPayerDrugCoverageIndicator named whPayerDrugCoverageIndicator 0..1
* extension[whPayerDrugCoverageIndicator] ^short      = "Indicates whether the member has drug benefit coverage: Y or N"
* extension[whPayerDrugCoverageIndicator] ^definition = "Indicates whether the member has drug benefit coverage: Y or N"

* extension contains WhPayerHearingCoverageIndicator named whPayerHearingCoverageIndicator 0..1
* extension[whPayerHearingCoverageIndicator] ^short      = "Indicates whether the member has hearing benefit coverage: Y or N"
* extension[whPayerHearingCoverageIndicator] ^definition = "Indicates whether the member has hearing benefit coverage: Y or N"

* extension contains WhPayerMedicalCoverageIndicator named whPayerMedicalCoverageIndicator 0..1
* extension[whPayerMedicalCoverageIndicator] ^short      = "Indicates whether the member has medical benefit coverage: Y or N"
* extension[whPayerMedicalCoverageIndicator] ^definition = "Indicates whether the member has medical benefit coverage: Y or N"

* extension contains WhPayerPsychCoverageIndicator named whPayerPsychCoverageIndicator 0..1
* extension[whPayerPsychCoverageIndicator] ^short      = "Indicates whether the member has mental health and substance abuse benefit coverage: Y or N"
* extension[whPayerPsychCoverageIndicator] ^definition = "Indicates whether the member has mental health and substance abuse benefit coverage: Y or N"

* extension contains WhPayerVisionCoverageIndicator named whPayerVisionCoverageIndicator 0..1
* extension[whPayerVisionCoverageIndicator] ^short      = "Indicates whether the member has vision benefit coverage: Y or N"
* extension[whPayerVisionCoverageIndicator] ^definition = "Indicates whether the member has vision benefit coverage: Y or N"
