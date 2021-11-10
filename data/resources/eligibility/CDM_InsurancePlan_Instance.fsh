Instance:           InsurancePlanExample
InstanceOf:         CDMInsurancePlan
Usage:              #example
Title:              "CDM Insurance Plan Example"
Description:        "Example of a insurance plan record for a patient beneficiary"

* meta.source  = "http://acme-health.com/WellnessInsuranceCompany"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-insurance-plan"

* identifier[0].use                    = #official
* identifier[0].type                   = IdentifierTypeCodeSystem#SSRI
* identifier[0].system                 = "http://acme-health.com/plan/insuranceplan1"
* identifier[0].value                  = "plan_code_1234"
* identifier[0].assigner.display       = "Acme Health - Insurance Plan"

* identifier[1].use                    = #secondary
* identifier[1].type                   = IdentifierTypeCodeSystem#SSRI
* identifier[1].system                 = "http://acme-health.com/plan/insuranceplan1"
* identifier[1].value                  = "account_id_1234"
* identifier[1].assigner.display       = "Acme Health - Insurance Plan Account ID"

* identifier[2].use                    = #official
* identifier[2].type                   = IdentifierTypeCodeSystem#SSRI
* identifier[2].system                 = "http://acme-health.com/plan/DentalInsurancePlan"
* identifier[2].value                  = "dental-plan_code_5555"
* identifier[2].assigner.display       = "Acme Health - Dental Insurance Plan"

* identifier[3].use                    = #official
* identifier[3].type                   = IdentifierTypeCodeSystem#SSRI
* identifier[3].system                 = "http://acme-health.com/plan/VisionInsurancePlan"
* identifier[3].value                  = "vision-plan_code_2345"
* identifier[3].assigner.display       = "Acme Health - Vision Insurance Plan"

* ownedBy = Reference(GeneralHospital)

* plan.specificCost[0].category                       = InsurancePlanCostCategoryCodeSystem#drug
* plan.specificCost[0].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#administrative-fee
* plan.specificCost[0].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#administrative-fee
* plan.specificCost[0].benefit[0].cost[0].value.value = 3.00

* plan.specificCost[1].category                       = InsurancePlanCostCategoryCodeSystem#medical
* plan.specificCost[1].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#administrative-fee
* plan.specificCost[1].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#administrative-fee
* plan.specificCost[1].benefit[0].cost[0].value.value = 75.00

* plan.specificCost[2].category                       = InsurancePlanCostCategoryCodeSystem#drug
* plan.specificCost[2].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#employee-contribution
* plan.specificCost[2].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#employee-contribution
* plan.specificCost[2].benefit[0].cost[0].value.value = 15.00

* plan.specificCost[3].category                       = InsurancePlanCostCategoryCodeSystem#medical
* plan.specificCost[3].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#employee-contribution
* plan.specificCost[3].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#employee-contribution
* plan.specificCost[3].benefit[0].cost[0].value.value = 125.00

* plan.specificCost[4].category                       = InsurancePlanCostCategoryCodeSystem#drug
* plan.specificCost[4].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[4].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[4].benefit[0].cost[0].value.value = 25.00

* plan.specificCost[5].category                       = InsurancePlanCostCategoryCodeSystem#medical
* plan.specificCost[5].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[5].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[5].benefit[0].cost[0].value.value = 55.00

* plan.specificCost[6].category                       = InsurancePlanCostCategoryCodeSystem#other
* plan.specificCost[6].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#non-claim-payment
* plan.specificCost[6].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#non-claim-payment
* plan.specificCost[6].benefit[0].cost[0].value.value = 5.00

* plan.specificCost[7].category                       = InsurancePlanCostCategoryCodeSystem#dental
* plan.specificCost[7].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#administrative-fee
* plan.specificCost[7].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#administrative-fee
* plan.specificCost[7].benefit[0].cost[0].value.value = 2.00

* plan.specificCost[8].category                       = InsurancePlanCostCategoryCodeSystem#vision
* plan.specificCost[8].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#administrative-fee
* plan.specificCost[8].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#administrative-fee
* plan.specificCost[8].benefit[0].cost[0].value.value = 3.00

* plan.specificCost[9].category                       = InsurancePlanCostCategoryCodeSystem#dental
* plan.specificCost[9].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#employee-contribution
* plan.specificCost[9].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#employee-contribution
* plan.specificCost[9].benefit[0].cost[0].value.value = 0.00

* plan.specificCost[10].category                       = InsurancePlanCostCategoryCodeSystem#vision
* plan.specificCost[10].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#employee-contribution
* plan.specificCost[10].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#employee-contribution
* plan.specificCost[10].benefit[0].cost[0].value.value = 0.00

* plan.specificCost[11].category                       = InsurancePlanCostCategoryCodeSystem#other
* plan.specificCost[11].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#capitation-amount
* plan.specificCost[11].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#capitation-amount
* plan.specificCost[11].benefit[0].cost[0].value.value = 0.00

* plan.specificCost[12].category                       = InsurancePlanCostCategoryCodeSystem#other
* plan.specificCost[12].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[12].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[12].benefit[0].cost[0].value.value = 10.00

* plan.specificCost[13].category                       = InsurancePlanCostCategoryCodeSystem#dental
* plan.specificCost[13].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[13].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[13].benefit[0].cost[0].value.value = 5.00

* plan.specificCost[14].category                       = InsurancePlanCostCategoryCodeSystem#vision
* plan.specificCost[14].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[14].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[14].benefit[0].cost[0].value.value = 2.00

* plan.specificCost[15].category                       = InsurancePlanCostCategoryCodeSystem#other
* plan.specificCost[15].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#administrative-fee
* plan.specificCost[15].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#administrative-fee
* plan.specificCost[15].benefit[0].cost[0].value.value = 2.00

* plan.specificCost[16].category                       = InsurancePlanCostCategoryCodeSystem#other
* plan.specificCost[16].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#employee-contribution
* plan.specificCost[16].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#employee-contribution
* plan.specificCost[16].benefit[0].cost[0].value.value = 6.00

* plan.specificCost[17].category                       = InsurancePlanCostCategoryCodeSystem#other
* plan.specificCost[17].benefit[0].type[0]             = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[17].benefit[0].cost[0].type[0]     = InsurancePlanBenefitTypeCodeSystem#monthly-premium-paid
* plan.specificCost[17].benefit[0].cost[0].value.value = 6.00

* extension[whPayerMedicalCoverageIndicator].valueString = "Y"
* type[0].coding                   = INSURANCE-PLAN-TYPE#medical
* coverage[0].type                 = INSURANCE-PLAN-TYPE#medical
* coverage[0].benefit.type         = INSURANCE-PLAN-TYPE#medical
* coverage[0].network              = Reference(GeneralHospital)

* extension[whPayerDentalCoverageIndicator].valueString = "Y"
* type[1].coding                   = INSURANCE-PLAN-TYPE#dental
* coverage[1].type                 = INSURANCE-PLAN-TYPE#dental
* coverage[1].benefit.type         = INSURANCE-PLAN-TYPE#dental

* extension[whPayerDrugCoverageIndicator].valueString = "Y"
* type[2].coding                   = INSURANCE-PLAN-TYPE#Drug
* coverage[2].type                 = INSURANCE-PLAN-TYPE#Drug
* coverage[2].benefit.type         = INSURANCE-PLAN-TYPE#Drug

* extension[whPayerHearingCoverageIndicator].valueString = "Y"
* type[3].coding                   = InsurancePlanTypeCodeSystem#hearing
* coverage[3].type                 = InsurancePlanTypeCodeSystem#hearing
* coverage[3].benefit.type         = InsurancePlanTypeCodeSystem#hearing

* extension[whPayerVisionCoverageIndicator].valueString = "Y"
* type[4].coding                   = INSURANCE-PLAN-TYPE#vision
* coverage[4].type                 = INSURANCE-PLAN-TYPE#vision
* coverage[4].benefit.type         = INSURANCE-PLAN-TYPE#vision

* extension[whPayerPsychCoverageIndicator].valueString = "N"
* type[5].coding                   = INSURANCE-PLAN-TYPE#mental
* coverage[5].type                 = INSURANCE-PLAN-TYPE#mental
* coverage[5].benefit.type         = INSURANCE-PLAN-TYPE#mental

* type[6].coding                   = INSURANCE-PLAN-TYPE#subst-ab
* coverage[6].type                 = INSURANCE-PLAN-TYPE#subst-ab
* coverage[6].benefit.type         = INSURANCE-PLAN-TYPE#subst-ab

* extension[whPayerShorttermCareCoverageIndicator].valueString  = "Y"
* type[7].coding                   = INSURANCE-PLAN-TYPE#short-term
* coverage[7].type                 = INSURANCE-PLAN-TYPE#short-term
* coverage[7].benefit.type         = INSURANCE-PLAN-TYPE#short-term

* extension[whPayerLongtermCareCoverageIndicator].valueString  = "Y"
* type[8].coding                   = INSURANCE-PLAN-TYPE#long-term
* coverage[8].type                 = INSURANCE-PLAN-TYPE#long-term
* coverage[8].benefit.type         = INSURANCE-PLAN-TYPE#long-term

* extension[WhPayerSubstanceAbuseAmbulatoryCoverageIndicator].valueString = "N"
* type[9].coding                   = InsurancePlanTypeCodeSystem#substance-abuse-ambulatory
* coverage[9].type                 = InsurancePlanTypeCodeSystem#substance-abuse-ambulatory
* coverage[9].benefit.type         = InsurancePlanTypeCodeSystem#substance-abuse-ambulatory

* extension[whPayerSubstanceAbuseDayNightCoverageIndicator].valueString = "N"
* type[10].coding                  = InsurancePlanTypeCodeSystem#substance-abuse-day-night
* coverage[10].type                = InsurancePlanTypeCodeSystem#substance-abuse-day-night
* coverage[10].benefit.type        = InsurancePlanTypeCodeSystem#substance-abuse-day-night

* extension[whPayerSubstanceAbuseInpatientCoverageIndicator].valueString = "N"
* type[11].coding                  = InsurancePlanTypeCodeSystem#substance-abuse-inpatient
* coverage[11].type                = InsurancePlanTypeCodeSystem#substance-abuse-inpatient
* coverage[11].benefit.type        = InsurancePlanTypeCodeSystem#substance-abuse-inpatient

* extension[whPayerMentalHealthAmbulatoryCoverageIndicator].valueString  = "N"
* type[12].coding                  = InsurancePlanTypeCodeSystem#mental-health-ambulatory
* coverage[12].type                = InsurancePlanTypeCodeSystem#mental-health-ambulatory
* coverage[12].benefit.type        = InsurancePlanTypeCodeSystem#mental-health-ambulatory

* extension[whPayerMentalHealthDayNightCoverageIndicator].valueString  = "N"
* type[13].coding                  = InsurancePlanTypeCodeSystem#mental-health-day-night
* coverage[13].type                = InsurancePlanTypeCodeSystem#mental-health-day-night
* coverage[13].benefit.type        = InsurancePlanTypeCodeSystem#mental-health-day-night

* extension[whPayerMentalHealthInpatientCoverageIndicator].valueString  = "N"
* type[14].coding                  = InsurancePlanTypeCodeSystem#mental-health-inpatient
* coverage[14].type                = InsurancePlanTypeCodeSystem#mental-health-inpatient
* coverage[14].benefit.type        = InsurancePlanTypeCodeSystem#mental-health-inpatient

* plan.extension[acaHealthInsuranceOversightSystemPlan].valueCodeableConcept    = http://acme-health.com/CodeSystem/local-aca-health-insurance-oversight-system-plan#LocalACAPlanCd
* plan.extension[acaHealthInsuranceOversightSystemProduct].valueCodeableConcept = http://acme-health.com/CodeSystem/local-aca-health-insurance-oversight-system-product#LocalACAProductCd
* plan.extension[acaMarketType].valueCodeableConcept                            = http://acme-health.com/CodeSystem/local-aca-market-type#LocalACAMarketTypeCd
* plan.extension[acaMetalTier].valueCodeableConcept                             = http://acme-health.com/CodeSystem/local-aca-metal-tier#LocalACAMetalTierCd
* plan.extension[capitationArrangement].valueCodeableConcept                    = http://acme-health.com/CodeSystem/local-capitation-arrangement#LocalCapArrangement
* plan.extension[carveOut].valueCodeableConcept                                 = http://acme-health.com/CodeSystem/local-carve-out#LocalCarveOutCode
* plan.extension[costSharingReductionVariant].valueCodeableConcept              = http://acme-health.com/CodeSystem/local-cost-sharing-reduction-variant#LocalCostSharingCd
* plan.extension[fundingArrangement].valueCodeableConcept                       = http://acme-health.com/CodeSystem/local-funding-arrangement#LocalFundArrangement
* plan.extension[levelOfCare].valueCodeableConcept                             = http://acme-health.com/CodeSystem/local-level-of-care#LocalLevelOfCare
* plan.extension[ratingArea].valueCodeableConcept                               = http://acme-health.com/CodeSystem/local-rating-area#LocalRatingArea

* extension[dentalFullyInsuredIndicator].valueString     = "Y"
* extension[drugFullyInsuredIndicator].valueString       = "Y"
* extension[enrollmentType].valueCodeableConcept         = http://acme-health.com/CodeSystem/local-enrollment-type#LocalEnrollType
* extension[exchangePlanIndicator].valueString           = "N"
* extension[IndustryClassification].valueCodeableConcept = NAICS#621112
* extension[longtermCareDuration].valueInteger           = 36
* extension[longtermCareWaitingPeriod].valueInteger      = 90
* extension[medicalFullyInsuredIndicator].valueString    = "Y"
* extension[shorttermCareDuration].valueInteger          = 16
* extension[shorttermCareWaitingPeriod].valueInteger     = 1
* extension[visionFullyInsuredIndicator].valueString     = "Y"
* extension[whPayerManagedCarePlanType].valueCodeableConcept              = http://acme-health.com/CodeSystem/local-managed-care-plan-type#LocalManagedCarePlan
