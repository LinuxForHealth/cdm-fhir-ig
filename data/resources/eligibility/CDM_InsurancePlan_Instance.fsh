Instance:           InsurancePlanExample
InstanceOf:         CDMInsurancePlan
Usage:              #example
Title:              "CDM Insurance Plan Example"
Description:        "Example of a insurance plan record for a patient beneficiary"

* identifier[0].use                    = #official
* identifier[0].type                   = IdentifierTypeCodeSystem#SSRI
* identifier[0].system                 = "http://acme-health.com/plan/insuranceplan1"
* identifier[0].value                  = "plan_code_1234"
* identifier[0].assigner.display       = "Acme Health - Insurance Plan Code"

* identifier[1].use                    = #secondary
* identifier[1].type                   = IdentifierTypeCodeSystem#SSRI
* identifier[1].system                 = "http://acme-health.com/plan/insuranceplan1"
* identifier[1].value                  = "account_id_1234"
* identifier[1].assigner.display       = "Acme Health - Insurance Plan Account ID"

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

* extension[whPayerMedicalCoverageIndicator].valueString = "Y"
* type[0].coding                   = INSURANCE-PLAN-TYPE#medical
* coverage[0].type                 = INSURANCE-PLAN-TYPE#medical
* coverage[0].benefit[0].type      = INSURANCE-PLAN-TYPE#medical

* extension[whPayerDentalCoverageIndicator].valueString = "Y"
* type[1].coding                   = INSURANCE-PLAN-TYPE#dental
* coverage[1].type                 = INSURANCE-PLAN-TYPE#dental
* coverage[1].benefit[0].type      = INSURANCE-PLAN-TYPE#dental

* extension[whPayerDrugCoverageIndicator].valueString = "Y"
* type[2].coding                   = INSURANCE-PLAN-TYPE#Drug
* coverage[2].type                 = INSURANCE-PLAN-TYPE#Drug
* coverage[2].benefit[0].type      = INSURANCE-PLAN-TYPE#Drug

* extension[whPayerHearingCoverageIndicator].valueString = "Y"
* type[3].coding                   = InsurancePlanTypeCodeSystem#hearing
* coverage[3].type                 = InsurancePlanTypeCodeSystem#hearing
* coverage[3].benefit[0].type      = InsurancePlanTypeCodeSystem#hearing

* extension[whPayerVisionCoverageIndicator].valueString = "Y"
* type[4].coding                   = INSURANCE-PLAN-TYPE#vision
* coverage[4].type                 = INSURANCE-PLAN-TYPE#vision
* coverage[4].benefit[0].type      = INSURANCE-PLAN-TYPE#vision

* extension[whPayerPsychCoverageIndicator].valueString = "N"
* type[5].coding                   = INSURANCE-PLAN-TYPE#mental
* coverage[5].type                 = INSURANCE-PLAN-TYPE#mental
* coverage[5].benefit[0].type      = INSURANCE-PLAN-TYPE#mental

* type[6].coding                   = INSURANCE-PLAN-TYPE#subst-ab
* coverage[6].type                 = INSURANCE-PLAN-TYPE#subst-ab
* coverage[6].benefit[0].type      = INSURANCE-PLAN-TYPE#subst-ab

* extension[IndustryClassification].valueCodeableConcept = NAICS#621112
