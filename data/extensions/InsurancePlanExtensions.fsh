Extension:      AcaHealthInsuranceOversightSystemPlan
Id:             aca-health-insurance-oversight-system-plan
Title:          "ACA Health Insurance Oversight System Plan"
Description:    "Code for Affordable Care Act (ACA) HIOS plan. The value is the combination of HIOS Issuer ID, Product ID, Component ID, and Cost Sharing Variant."
* value[x] only CodeableConcept

Extension:      AcaHealthInsuranceOversightSystemProduct
Id:             aca-health-insurance-oversight-system-product
Title:          "ACA Health Insurance Oversight System Product"
Description:    "Code for Affordable Care Act (ACA) HIOS product ID and component code of the associated plan"
* value[x] only CodeableConcept

Extension:      AcaMarketType
Id:             aca-market-type
Title:          "ACA Market Type"
Description:    "Code for Affordable Care Act (ACA) market type of the associated plan"
* value[x] only CodeableConcept

Extension:      AcaMetalTier
Id:             aca-metal-tier
Title:          "ACA Metal Tier"
Description:    "Code for Affordable Care Act (ACA) metal tier of the associated plan"
* value[x] only CodeableConcept

Extension:      CapitationArrangement
Id:             capitation-arrangement
Title:          "Capitation Arrangement"
Description:    "Code for the capitation arrangement"
* value[x] only CodeableConcept

Extension:      CarveOut
Id:             carve-out
Title:          "Carve Out"
Description:    "Code for the carveout group"
* value[x] only CodeableConcept

Extension:      CostSharingReductionVariant
Id:             cost-sharing-reduction-variant
Title:          "Cost Sharing Reduction Variant"
Description:    "Code for Affordable Care Act (ACA) cost sharing reduction variant of the associated plan"
* value[x] only CodeableConcept

Extension:      DentalFullyInsuredIndicator
Id:             dental-fully-insured-indicator
Title:          "Dental Fully Insured Indicator"
Description:    "Indicator of the fully insured dental coverage for the member or employee"
* value[x] only string

Extension:      DrugFullyInsuredIndicator
Id:             drug-fully-insured-indicator
Title:          "Drug Fully Insured Indicator"
Description:    "Indicator of the fully insured drug coverage for the member or employee"
* value[x] only string

Extension:      EnrollmentType
Id:             enrollment-type
Title:          "Enrollment Type"
Description:    "Code for the type of enrollment"
* value[x] only CodeableConcept

Extension:      ExchangePlanIndicator
Id:             exchange-plan-indicator
Title:          "Exchange Plan Indicator"
Description:    "Indicator that identifies if the plan is available on a healthcare exchange marketplace"
* value[x] only string

Extension:      FundingArrangement
Id:             funding-arrangement
Title:          "Funding Arrangement"
Description:    "Code for the funding arrangement"
* value[x] only CodeableConcept

Extension:      IndustryClassification
Id:             industry-classification
Title:          "Industry Classification"
Description:    "Industry classification code which can be based on the North American Industry Classification System (NAICS)"
* value[x] only CodeableConcept

Extension:      LevelOfCare
Id:             level-of-care
Title:          "Level Of Care"
Description:    "Code for the level of care"
* value[x] only CodeableConcept

Extension:      LongtermCareDuration
Id:             long-term-care-duration
Title:          "Longterm Care Duration"
Description:    "Number of weeks for which the employee is eligible for long-term disability (LTD) benefits"
* value[x] only integer

Extension:      LongtermCareWaitingPeriod
Id:             long-term-care-waiting-period
Title:          "Longterm Care Waiting Period"
Description:    "Elimination or waiting period for the long-term disability (LTD) benefit (for example, 90, 180 or 365 days). This is the amount of time between the first absent date and the coverage begin date."
* value[x] only integer

Extension:      MedicalFullyInsuredIndicator
Id:             medical-fully-insured-indicator
Title:          "Medical Fully Insured Indicator"
Description:    "Indicator of the fully insured medical coverage for the member or employee"
* value[x] only string

Extension:      RatingArea
Id:             rating-area
Title:          "Rating Area"
Description:    "Code for the geographic insurance rating area of the associated plan"
* value[x] only CodeableConcept

Extension:      ShorttermCareDuration
Id:             short-term-care-duration
Title:          "Shortterm Care Duration"
Description:    "Number of weeks for which the employee is eligible for short-term disability (STD) benefits"
* value[x] only integer

Extension:      ShorttermCareWaitingPeriod
Id:             short-term-care-waiting-period
Title:          "Shortterm Care Waiting Period"
Description:    "Elimination or waiting period for the short-term disability (STD) benefit (for example, 90, 180 or 365 days). This is the amount of time between the first absent date and the coverage begin date."
* value[x] only integer

Extension:      VisionFullyInsuredIndicator
Id:             vision-fully-insured-indicator
Title:          "Vision Fully Insured Indicator"
Description:    "Indicator of the fully insured vision coverage for the member or employee"
* value[x] only string

Extension:      WhPayerDentalCoverageIndicator
Id:             wh-payer-dental-coverage-indicator
Title:          "Dental Coverage Indicator"
Description:    "Indicates whether the member has dental benefit coverage: Y or N"
* value[x] only string

Extension:      WhPayerDrugCoverageIndicator
Id:             wh-payer-drug-coverage-indicator
Title:          "Drug Coverage Indicator"
Description:    "Indicates whether the member has drug benefit coverage: Y or N"
* value[x] only string

Extension:      WhPayerHearingCoverageIndicator
Id:             wh-payer-hearing-coverage-indicator
Title:          "Hearing Coverage Indicator"
Description:    "Indicates whether the member has hearing benefit coverage: Y or N"
* value[x] only string

Extension:      WhPayerLongtermCareCoverageIndicator
Id:             wh-payer-long-term-care-coverage-indicator
Title:          "Longterm Care Coverage Indicator"
Description:    "Indicates whether the member or employee has long-term care benefit coverage"
* value[x] only string

Extension:      WhPayerManagedCarePlanType
Id:             wh-payer-managed-care-plan-type
Title:          "Managed Care Plan Type"
Description:    "Code for the managed care plan type under which the eligible individual is enrolled"
* value[x] only CodeableConcept

Extension:      WhPayerMedicalCoverageIndicator
Id:             wh-payer-medical-coverage-indicator
Title:          "Medical Coverage Indicator"
Description:    "Indicates whether the member has medical benefit coverage: Y or N"
* value[x] only string

Extension:      WhPayerMentalHealthAmbulatoryCoverageIndicator
Id:             wh-payer-mental-health-ambulatory-coverage-indicator
Title:          "Mental Health Ambulatory Coverage Indicator"
Description:    "Indicates whether the member has mental health ambulatory benefit coverage: Y or N. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."
* value[x] only string

Extension:      WhPayerMentalHealthDayNightCoverageIndicator
Id:             wh-payer-mental-health-day-night-coverage-indicator
Title:          "Mental Health Day Night Coverage Indicator"
Description:    "Indicates whether the member has mental health day-night benefit coverage: Y or N. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."
* value[x] only string

Extension:      WhPayerMentalHealthInpatientCoverageIndicator
Id:             wh-payer-mental-health-inpatient-coverage-indicator
Title:          "Mental Health Inpatient Coverage Indicator"
Description:    "Indicates whether the member has mental health Inpatient benefit coverage: Y or N. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."
* value[x] only string

Extension:      WhPayerPsychCoverageIndicator
Id:             wh-payer-psych-coverage-indicator
Title:          "Psychiatric Coverage Indicator"
Description:    "Indicates whether the member has mental health and substance abuse benefit coverage: Y or N"
* value[x] only string

Extension:      WhPayerShorttermCareCoverageIndicator
Id:             wh-payer-short-term-care-coverage-indicator
Title:          "Shortterm Care Coverage Indicator"
Description:    "Indicates whether the member or employee has short-term care benefit coverage"
* value[x] only string

Extension:      WhPayerSubstanceAbuseAmbulatoryCoverageIndicator
Id:             wh-payer-substance-abuse-ambulatory-coverage-indicator
Title:          "Substance Abuse Ambulatory Coverage Indicator"
Description:    "Indicator of Substance Abuse (chemical dependency) Ambulatory benefit coverage for the member. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."
* value[x] only string

Extension:      WhPayerSubstanceAbuseDayNightCoverageIndicator
Id:             wh-payer-substance-abuse-day-night-coverage-indicator
Title:          "Substance Abuse Day-Night Coverage Indicator"
Description:    "Indicator of Substance Abuse (chemical dependency) day-night benefit coverage for the member. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."
* value[x] only string

Extension:      WhPayerSubstanceAbuseInpatientCoverageIndicator
Id:             wh-payer-substance-abuse-inpatient-coverage-indicator
Title:          "Substance Abuse Inpatient Coverage Indicator"
Description:    "Indicator of Substance Abuse (chemical dependency) inpatient benefit coverage for the member. This finer granularity of MHSA benefit coverage may be used in HEDIS reporting."
* value[x] only string

Extension:      WhPayerVisionCoverageIndicator
Id:             wh-payer-vision-coverage-indicator
Title:          "Vision Coverage Indicator"
Description:    "Indicates whether the member has vision benefit coverage: Y or N"
* value[x] only string
