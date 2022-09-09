Profile:        CDMInsurancePlan
Parent:         InsurancePlan
Id:             cdm-insurance-plan
Title:          "CDM Insurance Plan"
Description:    "LinuxForHealth Common Data Model definition of what fields we currently define for an insurance plan"
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
* plan.extension[costSharingReductionVariant] ^short      = "Code for Affordable Care Act (ACA) cost sharing reduction variant of the associated plan"
* plan.extension[costSharingReductionVariant] ^definition = "Code for Affordable Care Act (ACA) cost sharing reduction variant of the associated plan"

* plan.extension contains FundingArrangement named fundingArrangement 0..1
* plan.extension[fundingArrangement] ^short      = "Code for the funding arrangement"
* plan.extension[fundingArrangement] ^definition = "Code for the funding arrangement"

* plan.extension contains LevelOfCare named levelOfCare 0..1 
* plan.extension[levelOfCare] ^short      = "Code for the level of care"
* plan.extension[levelOfCare] ^definition = "Code for the level of care"

* plan.extension contains LongtermCareDuration named longtermCareDuration 0..1
* plan.extension[longtermCareDuration] ^short      = "Number of weeks for which the employee is eligible for long-term disability (LTD) benefits"
* plan.extension[longtermCareDuration] ^definition = "Number of weeks for which the employee is eligible for long-term disability (LTD) benefits"

* plan.extension contains LongtermCareWaitingPeriod named longtermCareWaitingPeriod 0..1
* plan.extension[longtermCareWaitingPeriod] ^short      = "Elimination or waiting period for the long-term disability (LTD) benefit (for example, 90, 180 or 365 days)."
* plan.extension[longtermCareWaitingPeriod] ^definition = "Elimination or waiting period for the long-term disability (LTD) benefit (for example, 90, 180 or 365 days). This is the amount of time between the first absent date and the coverage begin date."

* plan.extension contains RatingArea named ratingArea 0..1
* plan.extension[ratingArea] ^short      = "Code for the geographic insurance rating area of the associated plan"
* plan.extension[ratingArea] ^definition = "Code for the geographic insurance rating area of the associated plan"

* plan.extension contains ShorttermCareDuration named shorttermCareDuration 0..1
* plan.extension[shorttermCareDuration] ^short      = "Number of weeks for which the employee is eligible for short-term disability (STD) benefits"
* plan.extension[shorttermCareDuration] ^definition = "Number of weeks for which the employee is eligible for short-term disability (STD) benefits"

* plan.extension contains ShorttermCareWaitingPeriod named shorttermCareWaitingPeriod 0..1
* plan.extension[shorttermCareWaitingPeriod] ^short      = "Elimination or waiting period for the short-term disability (STD) benefit (for example, 90, 180 or 365 days)."
* plan.extension[shorttermCareWaitingPeriod] ^definition = "Elimination or waiting period for the short-term disability (STD) benefit (for example, 90, 180 or 365 days). This is the amount of time between the first absent date and the coverage begin date."

* extension contains DentalFullyInsuredIndicator named dentalFullyInsuredIndicator 0..1
* extension[dentalFullyInsuredIndicator] ^short      = "Indicator of the fully insured dental coverage for the member or employee"
* extension[dentalFullyInsuredIndicator] ^definition = "Indicator of the fully insured dental coverage for the member or employee"

* extension contains DrugFullyInsuredIndicator named drugFullyInsuredIndicator 0..1
* extension[drugFullyInsuredIndicator] ^short      = "Indicator of the fully insured drug coverage for the member or employee"
* extension[drugFullyInsuredIndicator] ^definition = "Indicator of the fully insured drug coverage for the member or employee"

* extension contains EnrollmentType named enrollmentType 0..1
* extension[enrollmentType] ^short      = "Code for the type of enrollment"
* extension[enrollmentType] ^definition = "Code for the type of enrollment"

* extension contains ExchangePlanIndicator named exchangePlanIndicator 0..1
* extension[exchangePlanIndicator] ^short      = "Indicator that identifies if the plan is available on a healthcare exchange marketplace"
* extension[exchangePlanIndicator] ^definition = "Indicator that identifies if the plan is available on a healthcare exchange marketplace"

* extension contains IndustryClassification named IndustryClassification 0..1
* extension[IndustryClassification].valueCodeableConcept from PayerJobTitleValueSet (example)
* extension[IndustryClassification] ^short      = "Industry classification code which can be based on the North American Industry Classification System (NAICS)"
* extension[IndustryClassification] ^definition = "Industry classification code which can be based on the North American Industry Classification System (NAICS)"

* extension contains MedicalFullyInsuredIndicator named medicalFullyInsuredIndicator 0..1
* extension[medicalFullyInsuredIndicator] ^short      = "Indicator of the fully insured medical coverage for the member or employee"
* extension[medicalFullyInsuredIndicator] ^definition = "Indicator of the fully insured medical coverage for the member or employee"

* extension contains VisionFullyInsuredIndicator named visionFullyInsuredIndicator 0..1
* extension[visionFullyInsuredIndicator] ^short      = "Indicator of the fully insured vision coverage for the member or employee"
* extension[visionFullyInsuredIndicator] ^definition = "Indicator of the fully insured vision coverage for the member or employee"

* extension contains PayerDentalCoverageIndicator named payerDentalCoverageIndicator 0..1
* extension[payerDentalCoverageIndicator] ^short      = "Indicates whether the member has dental benefit coverage: Y or N"
* extension[payerDentalCoverageIndicator] ^definition = "Indicates whether the member has dental benefit coverage: Y or N"

* extension contains PayerDrugCoverageIndicator named payerDrugCoverageIndicator 0..1
* extension[payerDrugCoverageIndicator] ^short      = "Indicates whether the member has drug benefit coverage: Y or N"
* extension[payerDrugCoverageIndicator] ^definition = "Indicates whether the member has drug benefit coverage: Y or N"

* extension contains PayerHearingCoverageIndicator named payerHearingCoverageIndicator 0..1
* extension[payerHearingCoverageIndicator] ^short      = "Indicates whether the member has hearing benefit coverage: Y or N"
* extension[payerHearingCoverageIndicator] ^definition = "Indicates whether the member has hearing benefit coverage: Y or N"

* extension contains PayerLongtermCareCoverageIndicator named payerLongtermCareCoverageIndicator 0..1
* extension[payerLongtermCareCoverageIndicator] ^short      = "Indicates whether the member or employee has long-term care benefit coverage"
* extension[payerLongtermCareCoverageIndicator] ^definition = "Indicates whether the member or employee has long-term care benefit coverage"

* extension contains PayerManagedCarePlanType named payerManagedCarePlanType 0..1
* extension[payerManagedCarePlanType] ^short      =  "Code for the managed care plan type under which the eligible individual is enrolled"
* extension[payerManagedCarePlanType] ^definition =  "Code for the managed care plan type under which the eligible individual is enrolled"

* extension contains PayerMedicalCoverageIndicator named payerMedicalCoverageIndicator 0..1
* extension[payerMedicalCoverageIndicator] ^short      = "Indicates whether the member has medical benefit coverage: Y or N"
* extension[payerMedicalCoverageIndicator] ^definition = "Indicates whether the member has medical benefit coverage: Y or N"

* extension contains PayerMentalHealthAmbulatoryCoverageIndicator named payerMentalHealthAmbulatoryCoverageIndicator 0..1
* extension[payerMentalHealthAmbulatoryCoverageIndicator] ^short      = "Indicates whether the member has mental health ambulatory benefit coverage: Y or N."
* extension[payerMentalHealthAmbulatoryCoverageIndicator] ^definition = "Indicates whether the member has mental health ambulatory benefit coverage: Y or N. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains PayerMentalHealthDayNightCoverageIndicator named payerMentalHealthDayNightCoverageIndicator 0..1
* extension[payerMentalHealthDayNightCoverageIndicator] ^short      = "Indicates whether the member has mental health day-night benefit coverage: Y or N."
* extension[payerMentalHealthDayNightCoverageIndicator] ^definition = "Indicates whether the member has mental health day-night benefit coverage: Y or N. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains PayerMentalHealthInpatientCoverageIndicator named payerMentalHealthInpatientCoverageIndicator 0..1
* extension[payerMentalHealthInpatientCoverageIndicator] ^short      = "Indicates whether the member has mental health inpatient benefit coverage: Y or N."
* extension[payerMentalHealthInpatientCoverageIndicator] ^definition = "Indicates whether the member has mental health inpatient benefit coverage: Y or N. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains PayerPsychCoverageIndicator named payerPsychCoverageIndicator 0..1
* extension[payerPsychCoverageIndicator] ^short      = "Indicates whether the member has mental health and substance abuse benefit coverage: Y or N"
* extension[payerPsychCoverageIndicator] ^definition = "Indicates whether the member has mental health and substance abuse benefit coverage: Y or N"

* extension contains PayerShorttermCareCoverageIndicator named payerShorttermCareCoverageIndicator 0..1
* extension[payerShorttermCareCoverageIndicator] ^short      = "Indicates whether the member or employee has short-term care benefit coverage"
* extension[payerShorttermCareCoverageIndicator] ^definition = "Indicates whether the member or employee has short-term care benefit coverage"

* extension contains PayerSubstanceAbuseAmbulatoryCoverageIndicator named payerSubstanceAbuseAmbulatoryCoverageIndicator 0..1
* extension[payerSubstanceAbuseAmbulatoryCoverageIndicator] ^short      = "Indicator of Substance Abuse (chemical dependency) Ambulatory benefit coverage for the member"
* extension[payerSubstanceAbuseAmbulatoryCoverageIndicator] ^definition = "Indicator of Substance Abuse (chemical dependency) Ambulatory benefit coverage for the member. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains PayerSubstanceAbuseDayNightCoverageIndicator named payerSubstanceAbuseDayNightCoverageIndicator 0..1
* extension[payerSubstanceAbuseDayNightCoverageIndicator] ^short      = "Indicator of Substance Abuse (chemical dependency) day-night benefit coverage for the member"
* extension[payerSubstanceAbuseDayNightCoverageIndicator] ^definition = "Indicator of Substance Abuse (chemical dependency) day-night benefit coverage for the member. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains PayerSubstanceAbuseInpatientCoverageIndicator named payerSubstanceAbuseInpatientCoverageIndicator 0..1
* extension[payerSubstanceAbuseInpatientCoverageIndicator] ^short      = "Indicator of Substance Abuse (chemical dependency) inpatient benefit coverage for the member"
* extension[payerSubstanceAbuseInpatientCoverageIndicator] ^definition = "Indicator of Substance Abuse (chemical dependency) inpatient benefit coverage for the member. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."

* extension contains PayerVisionCoverageIndicator named payerVisionCoverageIndicator 0..1
* extension[payerVisionCoverageIndicator] ^short      = "Indicates whether the member has vision benefit coverage: Y or N"
* extension[payerVisionCoverageIndicator] ^definition = "Indicates whether the member has vision benefit coverage: Y or N"
