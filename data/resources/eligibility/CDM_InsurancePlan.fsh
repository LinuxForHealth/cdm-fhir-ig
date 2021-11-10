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

* plan.extension contains AcaHealthInsuranceOversightSystemPlan named acaHealthInsuranceOversightSystemPlan 0..1
* plan.extension[acaHealthInsuranceOversightSystemPlan] ^short      = "Code for Affordable Care Act (ACA) HIOS plan"
* plan.extension[acaHealthInsuranceOversightSystemPlan] ^definition = "Code for Affordable Care Act (ACA) HIOS plan. The value is the combination of HIOS Issuer ID, Product ID, Component ID, and Cost Sharing Variant."

* plan.extension contains AcaHealthInsuranceOversightSystemProduct named acaHealthInsuranceOversightSystemProduct 0..1
* plan.extension[acaHealthInsuranceOversightSystemProduct] ^short      = "Code for Affordable Care Act (ACA) HIOS product ID and component code of the associated plan"
* plan.extension[acaHealthInsuranceOversightSystemProduct] ^definition = "Code for Affordable Care Act (ACA) HIOS product ID and component code of the associated plan"

* plan.extension contains AcaMarketType named acaMarketType 0..1
* plan.extension[acaMarketType] ^short      = "Code for Affordable Care Act (ACA) market type of the associated plan"
* plan.extension[acaMarketType] ^definition = "Code for Affordable Care Act (ACA) market type of the associated plan"

* plan.extension contains AcaMetalTier named acaMetalTier 0..1
* plan.extension[acaMetalTier] ^short      = "Code for Affordable Care Act (ACA) metal tier of the associated plan"
* plan.extension[acaMetalTier] ^definition = "Code for Affordable Care Act (ACA) metal tier of the associated plan"

* plan.extension contains CapitationArrangement named capitationArrangement 0..1
* plan.extension[capitationArrangement] ^short      = "Code for the capitation arrangement"
* plan.extension[capitationArrangement] ^definition = "Code for the capitation arrangement"

* plan.extension contains CarveOut named carveOut 0..1
* plan.extension[carveOut] ^short      = "Code for the carveout group"
* plan.extension[carveOut] ^definition = "Code for the carveout group"

* plan.extension contains CostSharingReductionVariant named costSharingReductionVariant 0..1
* plan.extension[costSharingReductionVariant] ^short      = "Customer-specific code for Affordable Care Act (ACA) cost sharing reduction variant of the associated plan"
* plan.extension[costSharingReductionVariant] ^definition = "Customer-specific code for Affordable Care Act (ACA) cost sharing reduction variant of the associated plan"

* plan.extension contains FundingArrangement named fundingArrangement 0..1
* plan.extension[fundingArrangement] ^short      = "Customer-specific code for the funding arrangement"
* plan.extension[fundingArrangement] ^definition = "Customer-specific code for the funding arrangement"

* plan.extension contains LevelOfCare named levelOfCare 0..1 
* plan.extension[levelOfCare] ^short      = "Customer-specific code for the level of care"
* plan.extension[levelOfCare] ^definition = "Customer-specific code for the level of care"

* plan.extension contains RatingArea named ratingArea 0..1
* plan.extension[ratingArea] ^short      = "Customer-specific code for the geographic insurance rating area of the associated plan"
* plan.extension[ratingArea] ^definition = "Customer-specific code for the geographic insurance rating area of the associated plan"

* extension contains DentalFullyInsuredIndicator named dentalFullyInsuredIndicator 0..1
* extension[dentalFullyInsuredIndicator] ^short      = "Indicator of the fully insured dental coverage for the member or employee"
* extension[dentalFullyInsuredIndicator] ^definition = "Indicator of the fully insured dental coverage for the member or employee"

* extension contains DrugFullyInsuredIndicator named drugFullyInsuredIndicator 0..1
* extension[drugFullyInsuredIndicator] ^short      = "Indicator of the fully insured drug coverage for the member or employee"
* extension[drugFullyInsuredIndicator] ^definition = "Indicator of the fully insured drug coverage for the member or employee"

* extension contains EnrollmentType named enrollmentType 0..1
* extension[enrollmentType] ^short      = "Customer-specific code for the type of enrollment"
* extension[enrollmentType] ^definition = "Customer-specific code for the type of enrollment"

* extension contains ExchangePlanIndicator named exchangePlanIndicator 0..1
* extension[exchangePlanIndicator] ^short      = "Indicator that identifies if the plan is available on a healthcare exchange marketplace"
* extension[exchangePlanIndicator] ^definition = "Indicator that identifies if the plan is available on a healthcare exchange marketplace"

* extension contains IndustryClassification named IndustryClassification 0..1
* extension[IndustryClassification].valueCodeableConcept from WhPayerJobTitleValueSet (example)
* extension[IndustryClassification] ^short      = "The industry classification code which can be based on the North American Industry Classification System (NAICS)"
* extension[IndustryClassification] ^definition = "The industry classification code which can be based on the North American Industry Classification System (NAICS)"

* extension contains LongtermCareDuration named longtermCareDuration 0..1
* extension[longtermCareDuration] ^short      = "Number of weeks for which the employee is eligible for long-term disability (LTD) benefits"
* extension[longtermCareDuration] ^definition = "Number of weeks for which the employee is eligible for long-term disability (LTD) benefits"

* extension contains LongtermCareWaitingPeriod named longtermCareWaitingPeriod 0..1
* extension[longtermCareWaitingPeriod] ^short      = "Elimination or waiting period for the long-term disability (LTD) benefit (for example, 90, 180 or 365 days)."
* extension[longtermCareWaitingPeriod] ^definition = "Elimination or waiting period for the long-term disability (LTD) benefit (for example, 90, 180 or 365 days). This is the amount of time between the first absent date and the coverage begin date."

* extension contains MedicalFullyInsuredIndicator named medicalFullyInsuredIndicator 0..1
* extension[medicalFullyInsuredIndicator] ^short      = "Indicator of the fully insured medical coverage for the member or employee"
* extension[medicalFullyInsuredIndicator] ^definition = "Indicator of the fully insured medical coverage for the member or employee"

* extension contains ShorttermCareDuration named shorttermCareDuration 0..1
* extension[shorttermCareDuration] ^short      = "Number of weeks for which the employee is eligible for short-term disability (STD) benefits"
* extension[shorttermCareDuration] ^definition = "Number of weeks for which the employee is eligible for short-term disability (STD) benefits"

* extension contains ShorttermCareWaitingPeriod named shorttermCareWaitingPeriod 0..1
* extension[shorttermCareWaitingPeriod] ^short      = "Elimination or waiting period for the short-term disability (STD) benefit (for example, 90, 180 or 365 days)."
* extension[shorttermCareWaitingPeriod] ^definition = "Elimination or waiting period for the short-term disability (STD) benefit (for example, 90, 180 or 365 days). This is the amount of time between the first absent date and the coverage begin date."

* extension contains VisionFullyInsuredIndicator named visionFullyInsuredIndicator 0..1
* extension[visionFullyInsuredIndicator] ^short      = "Indicator of the fully insured vision coverage for the member or employee"
* extension[visionFullyInsuredIndicator] ^definition = "Indicator of the fully insured vision coverage for the member or employee"

* extension contains WhPayerDentalCoverageIndicator named whPayerDentalCoverageIndicator 0..1
* extension[whPayerDentalCoverageIndicator] ^short      = "Indicates whether the member has dental benefit coverage: Y or N"
* extension[whPayerDentalCoverageIndicator] ^definition = "Indicates whether the member has dental benefit coverage: Y or N"

* extension contains WhPayerDrugCoverageIndicator named whPayerDrugCoverageIndicator 0..1
* extension[whPayerDrugCoverageIndicator] ^short      = "Indicates whether the member has drug benefit coverage: Y or N"
* extension[whPayerDrugCoverageIndicator] ^definition = "Indicates whether the member has drug benefit coverage: Y or N"

* extension contains WhPayerHearingCoverageIndicator named whPayerHearingCoverageIndicator 0..1
* extension[whPayerHearingCoverageIndicator] ^short      = "Indicates whether the member has hearing benefit coverage: Y or N"
* extension[whPayerHearingCoverageIndicator] ^definition = "Indicates whether the member has hearing benefit coverage: Y or N"

* extension contains WhPayerLongtermCareCoverageIndicator named whPayerLongtermCareCoverageIndicator 0..1
* extension[whPayerLongtermCareCoverageIndicator] ^short      = "Indicates whether the member or employee has long-term care benefit coverage"
* extension[whPayerLongtermCareCoverageIndicator] ^definition = "Indicates whether the member or employee has long-term care benefit coverage"

* extension contains WhPayerManagedCarePlanType named whPayerManagedCarePlanType 0..1
* extension[whPayerManagedCarePlanType] ^short      =  "Code for the managed care plan type under which the eligible individual is enrolled"
* extension[whPayerManagedCarePlanType] ^definition =  "Code for the managed care plan type under which the eligible individual is enrolled"

* extension contains WhPayerMedicalCoverageIndicator named whPayerMedicalCoverageIndicator 0..1
* extension[whPayerMedicalCoverageIndicator] ^short      = "Indicates whether the member has medical benefit coverage: Y or N"
* extension[whPayerMedicalCoverageIndicator] ^definition = "Indicates whether the member has medical benefit coverage: Y or N"

* extension contains WhPayerMentalHealthAmbulatoryCoverageIndicator named whPayerMentalHealthAmbulatoryCoverageIndicator 0..1
* extension[whPayerMentalHealthAmbulatoryCoverageIndicator] ^short      = "Indicates whether the member has mental health ambulatory benefit coverage: Y or N."
* extension[whPayerMentalHealthAmbulatoryCoverageIndicator] ^definition = "Indicates whether the member has mental health ambulatory benefit coverage: Y or N. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains WhPayerMentalHealthDayNightCoverageIndicator named whPayerMentalHealthDayNightCoverageIndicator 0..1
* extension[whPayerMentalHealthDayNightCoverageIndicator] ^short      = "Indicates whether the member has mental health day-night benefit coverage: Y or N."
* extension[whPayerMentalHealthDayNightCoverageIndicator] ^definition = "Indicates whether the member has mental health day-night benefit coverage: Y or N. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains WhPayerMentalHealthInpatientCoverageIndicator named whPayerMentalHealthInpatientCoverageIndicator 0..1
* extension[whPayerMentalHealthInpatientCoverageIndicator] ^short      = "Indicates whether the member has mental health inpatient benefit coverage: Y or N."
* extension[whPayerMentalHealthInpatientCoverageIndicator] ^definition = "Indicates whether the member has mental health inpatient benefit coverage: Y or N. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains WhPayerPsychCoverageIndicator named whPayerPsychCoverageIndicator 0..1
* extension[whPayerPsychCoverageIndicator] ^short      = "Indicates whether the member has mental health and substance abuse benefit coverage: Y or N"
* extension[whPayerPsychCoverageIndicator] ^definition = "Indicates whether the member has mental health and substance abuse benefit coverage: Y or N"

* extension contains WhPayerShorttermCareCoverageIndicator named whPayerShorttermCareCoverageIndicator 0..1
* extension[whPayerShorttermCareCoverageIndicator] ^short      = "Indicates whether the member or employee has short-term care benefit coverage"
* extension[whPayerShorttermCareCoverageIndicator] ^definition = "Indicates whether the member or employee has short-term care benefit coverage"

* extension contains WhPayerSubstanceAbuseAmbulatoryCoverageIndicator named whPayerSubstanceAbuseAmbulatoryCoverageIndicator 0..1
* extension[whPayerSubstanceAbuseAmbulatoryCoverageIndicator] ^short      = "Indicator of Substance Abuse (chemical dependency) Ambulatory benefit coverage for the member"
* extension[whPayerSubstanceAbuseAmbulatoryCoverageIndicator] ^definition = "Indicator of Substance Abuse (chemical dependency) Ambulatory benefit coverage for the member. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains WhPayerSubstanceAbuseDayNightCoverageIndicator named whPayerSubstanceAbuseDayNightCoverageIndicator 0..1
* extension[whPayerSubstanceAbuseDayNightCoverageIndicator] ^short      = "Indicator of Substance Abuse (chemical dependency) day-night benefit coverage for the member"
* extension[whPayerSubstanceAbuseDayNightCoverageIndicator] ^definition = "Indicator of Substance Abuse (chemical dependency) day-night benefit coverage for the member. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains WhPayerSubstanceAbuseInpatientCoverageIndicator named whPayerSubstanceAbuseInpatientCoverageIndicator 0..1
* extension[whPayerSubstanceAbuseInpatientCoverageIndicator] ^short      = "Indicator of Substance Abuse (chemical dependency) inpatient benefit coverage for the member"
* extension[whPayerSubstanceAbuseInpatientCoverageIndicator] ^definition = "Indicator of Substance Abuse (chemical dependency) inpatient benefit coverage for the member. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains WhPayerVisionCoverageIndicator named whPayerVisionCoverageIndicator 0..1
* extension[whPayerVisionCoverageIndicator] ^short      = "Indicates whether the member has vision benefit coverage: Y or N"
* extension[whPayerVisionCoverageIndicator] ^definition = "Indicates whether the member has vision benefit coverage: Y or N"
