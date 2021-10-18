Profile:        CDMExplanationOfBenefitForAnalytics
Parent:         CDMExplanationOfBenefit
Id:             cdm-explanation-of-benefit-for-analytics
Title:          "CDM Explanation of Benefit for Analytics"
Description:    "The CDMExplanationOfBenefitForAnalytics profile extends the base CDMExplanationOfBenefit profile with additional details that are useful for analytics."

// EXTENSIONS at root level in alphabetical order
* extension contains AdmitCount named admitCount 0..1
* extension[admitCount] ^short      = "Used to determine which facility claims should be counted as inpatient admissions"
* extension[admitCount] ^definition = "Used to determine which facility claims should be counted as inpatient admissions"

* extension contains AggregateClaimIndicator named aggregateClaimIndicator 0..1
* extension[aggregateClaimIndicator] ^short      = "Indicator that identifies whether this claim record is included in the adjustment processing of the aggregate build logic for admissions, episodes or DCGs"
* extension[aggregateClaimIndicator] ^definition = "Indicator that identifies whether this claim record is included in the adjustment processing of the aggregate build logic for admissions, episodes or DCGs"

* extension contains ClaimCategory named claimCategory 0..1
* extension[claimCategory] ^short      = "Standard HIPAA code for the category of the claim status" 
* extension[claimCategory] ^definition = "Standard HIPAA code for the category of the claim status" 
* extension[claimCategory].valueCodeableConcept from CLAIM-STATUS-CATEGORY (extensible)

* extension contains ClaimStatus named claimStatus 0..1 
* extension[claimStatus] ^short      = "Code for the status of the claim"
* extension[claimStatus] ^definition = "Code for the status of the claim"

* extension contains ClaimSnapshotProviderName named claimSnapshotProviderName 0..1
* extension[claimSnapshotProviderName] ^short      = "Original provider name as reported on the claim"
* extension[claimSnapshotProviderName] ^definition = "Original provider name as reported on the claim"

* extension contains ClaimSnapshotProviderZipCode named claimSnapshotProviderZipCode 0..1
* extension[claimSnapshotProviderZipCode] ^short      = "Original provider postal code, as reported on the claim"
* extension[claimSnapshotProviderZipCode] ^definition = "Original provider postal code, as reported on the claim"

* extension contains CompanyCode named companyCode 0..1
* extension[companyCode] ^short      = "Company code of the subscriber as reported on the claim"
* extension[companyCode] ^definition = "Company code of the subscriber as reported on the claim"

* extension contains DaysToProcess named daysToProcess 0..1
* extension[daysToProcess] ^short      = "Number of days between the date the claim was received and the date the claim was processed"
* extension[daysToProcess] ^definition = "Number of days between the date the claim was received and the date the claim was processed"

* extension contains EmployeeBusinessUnit named employeeBusinessUnit 0..1
* extension[employeeBusinessUnit] ^short      = "Business unit of the subscriber as reported on the claim" 
* extension[employeeBusinessUnit] ^definition = "Business unit of the subscriber as reported on the claim" 

* extension contains FinancialSystem named financialSystem 0..1
* extension[financialSystem] ^short      = "Customer-specific code for the financial system"
* extension[financialSystem] ^definition = "Customer-specific code for the financial system"

* extension contains LastClaimIndicator named lastClaimIndicator 0..1
* extension[lastClaimIndicator] ^short      = "Indicator that identifies whether this claim record is the last or most recent claim" 
* extension[lastClaimIndicator] ^definition = "Indicator that identifies whether this claim record is the last or most recent claim"

* extension contains ParticipatingPlan named participatingPlan 0..1
* extension[participatingPlan] ^short      = "Customer-specific code for the participating plan" 
* extension[participatingPlan] ^definition = "Customer-specific code for the participating plan" 

* extension contains ReferralIndicator named referralIndicator 0..1
* extension[referralIndicator]  ^short      = "An indicator signifying the service resulted from a referral"
* extension[referralIndicator]  ^definition = "An indicator signifying the service resulted from a referral"

* extension contains SnapshotAgeInYears named snapshotAgeInYears 0..1
* extension[snapshotAgeInYears] ^short      = "The age of the patient in years at the date of service"
* extension[snapshotAgeInYears] ^definition = "The age of the patient in years at the date of service"

* extension contains SubmissionType named submissionType 0..1
* extension[submissionType] ^short      = "Customer-specific code for the type of electronic submission"
* extension[submissionType] ^definition = "Customer-specific code for the type of electronic submission"

* extension contains WhPayerPcpResponsibilityIndicator named whPayerPcpResponsibilityIndicator 0..1
* extension[whPayerPcpResponsibilityIndicator] ^short      =  "Indicator signifying that the primary care physician is the physician considered either responsible or accountable for this claim"
* extension[whPayerPcpResponsibilityIndicator] ^definition =  "Indicator signifying that the primary care physician is the physician considered either responsible or accountable for this claim"

* extension contains RxCount named rxCount 0..1
* extension[rxCount] ^short      = "Count of prescriptions for the drug claim"
* extension[rxCount] ^definition = "Count of prescriptions for the drug claim"

// .diagnosis section EXTENSIONS
* diagnosis.extension contains MajorDiagnosticCategory named majorDiagnosticCategory 0..1
* diagnosis.extension[majorDiagnosticCategory]  ^short           = "The body system or disease related groupings of clinical conditions, based on diagnosis codes"
* diagnosis.extension[majorDiagnosticCategory]  ^definition      = "The body system or disease related groupings of clinical conditions, based on diagnosis codes"
* diagnosis.extension[majorDiagnosticCategory].valueCodeableConcept from WHPayerMajorDiagnosticCategoryValueSet (extensible)

// .procedure section EXTENSIONS
* procedure.extension contains ProcedureGroup named procedureGroup 0..1
* procedure.extension[procedureGroup]  ^short           = "Code assigned to categorize related procedures"
* procedure.extension[procedureGroup]  ^definition      = "Code assigned to categorize related procedures"
* procedure.extension[procedureGroup].valueCodeableConcept from WHPayerProcedureGroupValueSet (extensible)

// .insurance section EXTENSIONS
* insurance.extension contains CrossoverIndicator named crossoverIndicator 0..1
* insurance.extension[crossoverIndicator] ^short      = "Indicator specifying whether the claim is a crossover claim where a portion is paid by Medicare"
* insurance.extension[crossoverIndicator] ^definition = "Indicator specifying whether the claim is a crossover claim where a portion is paid by Medicare"

* insurance.extension contains PriorAuthorizationIndicator named priorAuthorizationIndicator 0..1
* insurance.extension[priorAuthorizationIndicator] ^short      = "Indicator of prior authorization for the claim"
* insurance.extension[priorAuthorizationIndicator] ^definition = "Indicator of prior authorization for the claim"

// .item section EXTENSIONS
* item.extension contains AverageWholesalePrice named averageWholesalePrice 0..1
* item.extension[averageWholesalePrice]  ^short      = "The average wholesale price of this drug"
* item.extension[averageWholesalePrice]  ^definition = "The average wholesale price of this drug"

* item.extension contains CapitatedServiceIndicator named capitatedServiceIndicator 0..1
* item.extension[capitatedServiceIndicator] ^short      = "Indicator that this service (encounter record) was capitated" 
* item.extension[capitatedServiceIndicator] ^definition = "Indicator that this service (encounter record) was capitated" 

* item.extension contains FullyInsuredIndicator named fullyInsuredIndicator 0..1
* item.extension[fullyInsuredIndicator] ^short      = "Indicator that the claim was for a fully insured plan"
* item.extension[fullyInsuredIndicator] ^definition = "Indicator that the claim was for a fully insured plan"

* item.extension contains NursingHomeIndicator named nursingHomeIndicator 0..1
* item.extension[nursingHomeIndicator] ^short      = "Indicator that the claim was for a nursing home patient"
* item.extension[nursingHomeIndicator] ^definition = "Indicator that the claim was for a nursing home patient"

* item.extension contains CompoundCode named compoundCode 0..1
* item.extension[compoundCode]  ^short      = "Customer-specific code for the compound of the drug"
* item.extension[compoundCode]  ^definition = "Customer-specific code for the compound of the drug"

* item.extension contains ClaimResponseBenefitPlan named claimResponseBenefitPlan 0..1
* item.extension[claimResponseBenefitPlan] ^short      = "The benefit plan that covers the service rendered"
* item.extension[claimResponseBenefitPlan] ^definition = "The benefit plan that covers the service rendered"

* item.extension contains CopayExclusion named copayExclusion 0..1
* item.extension[copayExclusion] ^short      = "Customer-specific code for the exclusion reason of a copayment"
* item.extension[copayExclusion] ^definition = "Customer-specific code for the exclusion reason of a copayment"

* item.extension contains NumberOfUnitsAllowed named numberOfUnitsAllowed 0..1
* item.extension[numberOfUnitsAllowed] ^short      = "Customer-specific quantity of services or units allowed"
* item.extension[numberOfUnitsAllowed] ^definition = "Customer-specific quantity of services or units allowed"

* item.extension contains ReinsuranceMetIndicator named reinsuranceMetIndicator 0..1
* item.extension[reinsuranceMetIndicator] ^short      = "Indicator that the reinsurance amount was met"
* item.extension[reinsuranceMetIndicator] ^definition = "Indicator that the reinsurance amount was met"

* item.extension contains UtilizationReview named utilizationReview 0..1
* item.extension[utilizationReview] ^short      = "Customer-specific code for the type of utilization review"
* item.extension[utilizationReview] ^definition = "Customer-specific code for the type of utilization review"

* item.extension contains UsualAndCustomaryAmount named usualAndCustomaryAmount 0..1
* item.extension[usualAndCustomaryAmount] ^short      = "Usual and customary amount on the drug claim"
* item.extension[usualAndCustomaryAmount] ^definition = "Usual and customary amount on the drug claim"

* item.extension contains RxFormularyIndicator named rxFormularyIndicator 0..1
* item.extension[rxFormularyIndicator] ^short      = "An indicator that the prescription drug is included in the formulary"
* item.extension[rxFormularyIndicator] ^definition = "An indicator that the prescription drug is included in the formulary"

* item.extension contains RxPayTier named rxPayTier 0..1
* item.extension[rxPayTier] ^short      = "Customer-specific code for the payment tier of the drug Claim"
* item.extension[rxPayTier] ^definition = "Customer-specific code for the payment tier of the drug Claim"

* item.extension contains RxSupplyIndicator named rxSupplyIndicator 0..1
* item.extension[rxSupplyIndicator] ^short      = "An indicator of whether or not the drug claim is a medical supply (Y) or a drug (N)"
* item.extension[rxSupplyIndicator] ^definition = "An indicator of whether or not the drug claim is a medical supply (Y) or a drug (N)"

// .item.adjudication section EXTENSIONS
* item.adjudication.extension contains RoutingNumberCode named routingNumberCode 0..1
* item.adjudication.extension[routingNumberCode] ^short      = "Customer-specific code for the ITS routing number" 
* item.adjudication.extension[routingNumberCode] ^definition = "Customer-specific code for the ITS routing number" 

* item.adjudication.extension contains SavingsType named savingsType 0..1
* item.adjudication.extension[savingsType] ^short      = "Customer-specific code for the type of third party savings" 
* item.adjudication.extension[savingsType] ^definition = "Customer-specific code for the type of third party savings"

// .item.detail section EXTENSIONS
* item.detail.extension contains ClaimItemDetailClassification named claimItemDetailClassification 0..1
* item.detail.extension[claimItemDetailClassification] ^short      = "Classification of the information contained in this claim item detail section"
* item.detail.extension[claimItemDetailClassification] ^definition = "Classification of the information contained in this claim item detail section"
* item.detail.extension[claimItemDetailClassification].valueCodeableConcept from ClaimItemDetailClassificationValueSet (extensible)

// .payment section EXTENSIONS
* payment.extension contains ClaimAdjustmentType named claimAdjustmentType 0..*
* payment.extension[claimAdjustmentType] ^short      = "The code for the type of adjustment for the claim"
* payment.extension[claimAdjustmentType] ^definition = "The code for the type of adjustment for the claim"
* payment.extension[claimAdjustmentType].valueCodeableConcept from WhPayerClaimAdjustmentTypeValueSet (extensible)

* payment.extension contains DispositionReason named dispositionReason 0..*
* payment.extension[dispositionReason] ^short      = "Customer-specific code for the disposition reason, as related to how the claim was paid"
* payment.extension[dispositionReason] ^definition = "Customer-specific code for the disposition reason, as related to how the claim was paid"

* payment.extension contains ReimburseType named reimburseType 0..1
* payment.extension[reimburseType] ^short      = "Method of payment code for the claim"
* payment.extension[reimburseType] ^definition = "Method of payment code for the claim"
