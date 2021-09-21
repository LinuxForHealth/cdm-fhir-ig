Profile:        CDMExplanationOfBenefit
Parent:         ExplanationOfBenefit
Id:             cdm-explanation-of-benefit
Title:          "CDM Explanation of Benefit"
Description:    "This resource provides: the claim details; adjudication details from the processing of a Claim; and optionally account balance information, for informing the subscriber of the benefits provided. The CDMExplanationOfBenefit profile extends the base FHIR ExplanationOfBenefit resource with additional details."

* contained 0..0
* meta only ProcessMeta

// Must support at least one identifier
// Identifiers to have one system and value 
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type  from IdentifierTypeValueSet (extensible) 

* type                    from ClaimTypeValueSet (extensible)
* subType                 from WhClaimSubtypeValueSet (extensible)
* supportingInfo.category from ClaimSupportingInfoCategoryValueSet (extensible)
* supportingInfo.code     from ClaimSupportingInfoTypeValueSet (extensible)

* careTeam.role           from ClaimCareTeamRoleValueSet (extensible)
* careTeam.provider       only Reference(Practitioner or PractitionerRole or Organization)
//Business rule to ensure the correct position of a provider on claim item against the CareTeam sequence
* careTeam.sequence obeys explanation-of-benefit-careteam-sequence-check

* diagnosis.extension contains MajorDiagnosticCategory named majorDiagnosticCategory 0..1
* diagnosis.extension[majorDiagnosticCategory]  ^short      = "Body system or disease related groupings of clinical conditions, based on diagnosis codes"
* diagnosis.extension[majorDiagnosticCategory]  ^definition = "Body system or disease related groupings of clinical conditions, based on diagnosis codes"
* diagnosis.extension[majorDiagnosticCategory].valueCodeableConcept from WHPayerMajorDiagnosticCategoryValueSet (extensible)

* procedure.extension contains ProcedureGroup named procedureGroup 0..1
* procedure.extension[procedureGroup]  ^short       = "Code assigned to categorize related procedures"
* procedure.extension[procedureGroup]  ^definition  = "Code assigned to categorize related procedures"
* procedure.extension[procedureGroup].valueCodeableConcept from WHPayerProcedureGroupValueSet (extensible)

//  .item section
* item.adjudication.category from AdjudicationCategoryValueSet (example)

* item.extension contains CapitatedServiceIndicator named capitatedServiceIndicator 0..1
* item.extension[capitatedServiceIndicator] ^short      = "An indicator that this service (encounter record) was capitated" 
* item.extension[capitatedServiceIndicator] ^definition = "An indicator that this service (encounter record) was capitated" 

* item.extension contains ClaimResponseBenefitPlan named claimResponseBenefitPlan 0..1
* item.extension[claimResponseBenefitPlan] ^short      = "The benefit plan that covers the service rendered"
* item.extension[claimResponseBenefitPlan] ^definition = "The benefit plan that covers the service rendered"

* item.extension contains CompoundCode named compoundCode 0..1
* item.extension[compoundCode]  ^short      = "Indicator of whether the product is a compound drug or not"
* item.extension[compoundCode]  ^definition = "Indicator of whether the product is a compound drug or not"

* insurance.extension contains CrossoverIndicator named crossoverIndicator 0..1
* insurance.extension[crossoverIndicator] ^short      = "Indicator specifying whether the claim is a crossover claim where a portion is paid by Medicare"
* insurance.extension[crossoverIndicator] ^definition = "Indicator specifying whether the claim is a crossover claim where a portion is paid by Medicare"


* item.quantity.extension contains LocalNumberOfUnitsPerService named localNumberOfUnitsPerService 0..1
* item.quantity.extension[localNumberOfUnitsPerService] ^short      = "Customer-specific quantity of either services or units"
* item.quantity.extension[localNumberOfUnitsPerService] ^definition = "Customer-specific quantity of either services or units"

// .payment extensions
* payment.extension contains ClaimAdjustmentType named claimAdjustmentType 0..*
* payment.extension[claimAdjustmentType] ^short      = "The code for the type of adjustment for the claim"
* payment.extension[claimAdjustmentType] ^definition = "The code for the type of adjustment for the claim"
* payment.extension[claimAdjustmentType].valueCodeableConcept from WhPayerClaimAdjustmentTypeValueSet (extensible)

/////  Extensions at ROOT level in alphabetical order for ease!
* extension contains ClaimSnapshotProviderName named claimSnapshotProviderName 0..1
* extension[claimSnapshotProviderName] ^short      = "The original provider name as reported on the claim"
* extension[claimSnapshotProviderName] ^definition = "The original provider name as reported on the claim"

* extension contains ClaimSnapshotProviderZipCode named claimSnapshotProviderZipCode 0..1
* extension[claimSnapshotProviderZipCode] ^short      = "The original provider postal code, as reported on the claim"
* extension[claimSnapshotProviderZipCode] ^definition = "The original provider postal code, as reported on the claim"

* extension contains EmployeeBusinessUnit named employeeBusinessUnit 0..1
* extension[employeeBusinessUnit] ^short      = "The business unit of the subscriber as reported on the claim" 
* extension[employeeBusinessUnit] ^definition = "The business unit of the subscriber as reported on the claim" 

* extension contains ReferralIndicator named referralIndicator 0..1
* extension[referralIndicator]  ^short      = "An indicator signifying the service resulted from a referral"
* extension[referralIndicator]  ^definition = "An indicator signifying the service resulted from a referral"

* extension contains SnapshotAgeInYears named snapshotAgeInYears 0..1
* extension[snapshotAgeInYears] ^short      = "The age of the patient in years at the date of service"
* extension[snapshotAgeInYears] ^definition = "The age of the patient in years at the date of service"

* extension contains WhPayerPcpResponsibilityIndicator named whPayerPcpResponsibilityIndicator 0..1
* extension[whPayerPcpResponsibilityIndicator] ^short      =  "An indicator signifying that the primary care physician is the physician considered either responsible or accountable for this claim"
* extension[whPayerPcpResponsibilityIndicator] ^definition =  "An indicator signifying that the primary care physician is the physician considered either responsible or accountable for this claim"
