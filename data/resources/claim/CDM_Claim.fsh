Profile:        CDMClaim
Parent:         Claim
Id:             cdm-claim
Title:          "CDM Claim"
Description:    "A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement. The CDMClaim profile extends the base FHIR Claim resource with additional details."
* contained 0..0
* meta only ProcessMeta

// Must support at least one identifier
// Identifiers to have one system and value 
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type  from IdentifierTypeValueSet (extensible) 

* type                    from ClaimTypeValueSet (extensible)
* supportingInfo.category from ClaimSupportingInfoCategoryValueSet (extensible)
* supportingInfo.code     from ClaimSupportingInfoTypeValueSet (extensible)

* careTeam.role           from ClaimCareTeamRoleValueSet (extensible)
* careTeam.provider       only Reference(Practitioner or PractitionerRole or Organization)

* diagnosis.extension contains MajorDiagnosticCategory named majorDiagnosticCategory 0..1
* diagnosis.extension[majorDiagnosticCategory]  ^short           = "The body system or disease related groupings of clinical conditions, based on diagnosis codes"
* diagnosis.extension[majorDiagnosticCategory]  ^definition      = "The body system or disease related groupings of clinical conditions, based on diagnosis codes"
* diagnosis.extension[majorDiagnosticCategory].valueCodeableConcept from WHPayerMajorDiagnosticCategoryValueSet (extensible)

* procedure.extension contains ProcedureGroup named procedureGroup 0..1
* procedure.extension[procedureGroup]  ^short           = "Code assigned to categorize related procedures"
* procedure.extension[procedureGroup]  ^definition      = "Code assigned to categorize related procedures"
* procedure.extension[procedureGroup].valueCodeableConcept from WHPayerProcedureGroupValueSet (extensible)

* item.extension contains CapitatedServiceIndicator named capitatedServiceIndicator 0..1
* item.extension[capitatedServiceIndicator] ^short      = "Indicator that this service (encounter record) was capitated" 
* item.extension[capitatedServiceIndicator] ^definition = "Indicator that this service (encounter record) was capitated" 

* item.extension contains FullyInsuredIndicator named fullyInsuredIndicator 0..1
* item.extension[fullyInsuredIndicator] ^short      = "Indicator that the claim was for a fully insured plan"
* item.extension[fullyInsuredIndicator] ^definition = "Indicator that the claim was for a fully insured plan"

* item.extension contains NursingHomeIndicator named nursingHomeIndicator 0..1
* item.extension[nursingHomeIndicator] ^short      = "Indicator that the claim was for a nursing home patient"
* item.extension[nursingHomeIndicator] ^definition = "Indicator that the claim was for a nursing home patient"

* item.extension contains ServiceBillDaysCount named serviceBillDaysCount 0..1
* item.extension[serviceBillDaysCount] ^short      = "Number of days between the date of service and the date the claim was received"
* item.extension[serviceBillDaysCount] ^definition = "Number of days between the date of service and the date the claim was received"

* insurance.extension contains CrossoverIndicator named crossoverIndicator 0..1
* insurance.extension[crossoverIndicator] ^short      = "Indicator specifying whether the claim is a crossover claim where a portion is paid by Medicare"
* insurance.extension[crossoverIndicator] ^definition = "Indicator specifying whether the claim is a crossover claim where a portion is paid by Medicare"

* insurance.extension contains PriorAuthorizationIndicator named priorAuthorizationIndicator 0..1
* insurance.extension[priorAuthorizationIndicator] ^short      = "Indicator of prior authorization for the claim"
* insurance.extension[priorAuthorizationIndicator] ^definition = "Indicator of prior authorization for the claim"

* extension contains AggregateClaimIndicator named aggregateClaimIndicator 0..1
* extension[aggregateClaimIndicator] ^short      = "Indicator that identifies whether this claim record is included in the adjustment processing of the aggregate build logic for admissions, episodes or DCGs"
* extension[aggregateClaimIndicator] ^definition = "Indicator that identifies whether this claim record is included in the adjustment processing of the aggregate build logic for admissions, episodes or DCGs"

* extension contains ClaimSnapshotProviderName named claimSnapshotProviderName 0..1
* extension[claimSnapshotProviderName] ^short      = "Original provider name as reported on the claim"
* extension[claimSnapshotProviderName] ^definition = "Original provider name as reported on the claim"

* extension contains ClaimSnapshotProviderZipCode named claimSnapshotProviderZipCode 0..1
* extension[claimSnapshotProviderZipCode] ^short      = "Original provider postal code, as reported on the claim"
* extension[claimSnapshotProviderZipCode] ^definition = "Original provider postal code, as reported on the claim"

* extension contains CompanyCode named companyCode 0..1
* extension[companyCode] ^short      = "Company code of the subscriber as reported on the claim"
* extension[companyCode] ^definition = "Company code of the subscriber as reported on the claim"

* extension contains EmployeeBusinessUnit named employeeBusinessUnit 0..1
* extension[employeeBusinessUnit] ^short      = "Business unit of the subscriber as reported on the claim" 
* extension[employeeBusinessUnit] ^definition = "Business unit of the subscriber as reported on the claim" 

* extension contains Employer named employer 0..1
* extension[employer] ^short      = "Customer-specific code for the employer as reported on the claim record"
* extension[employer] ^definition = "Customer-specific code for the employer as reported on the claim record"

* extension contains FinancialSystem named financialSystem 0..1
* extension[financialSystem] ^short      = "Customer-specific code for the financial system"
* extension[financialSystem] ^definition = "Customer-specific code for the financial system"

* extension contains ClaimCategory named claimCategory 0..1
* extension[claimCategory] ^short      = "Standard HIPAA code for the category of the claim status" 
* extension[claimCategory] ^definition = "Standard HIPAA code for the category of the claim status" 
* extension[claimCategory].valueCodeableConcept from CLAIM-STATUS-CATEGORY (extensible)

* extension contains ClaimStatus named claimStatus 0..1 
* extension[claimStatus] ^short      = "Standard HIPAA code for the status of an entire claim"
* extension[claimStatus] ^definition = "Standard HIPAA code for the status of an entire claim"
* extension[claimStatus].valueCodeableConcept from CLAIM-STATUS (extensible)

* extension contains LastClaimIndicator named lastClaimIndicator 0..1
* extension[lastClaimIndicator] ^short      = "Indicator that identifies whether this claim record is the last or most recent claim" 
* extension[lastClaimIndicator] ^definition = "Indicator that identifies whether this claim record is the last or most recent claim"

* item.quantity.extension contains LocalNumberOfUnitsPerService named localNumberOfUnitsPerService 0..1
* item.quantity.extension[localNumberOfUnitsPerService] ^short      = "Customer-specific quantity of either services or units"
* item.quantity.extension[localNumberOfUnitsPerService] ^definition = "Customer-specific quantity of either services or units"

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

//Business rule to ensure the correct position of a provider on claim item against the CareTeam sequence
* careTeam.sequence obeys claim-careteam-sequence-check
