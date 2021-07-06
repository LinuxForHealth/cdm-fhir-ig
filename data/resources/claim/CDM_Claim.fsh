Profile:        CDMClaim
Parent:         Claim
Id:             cdm-claim
Title:          "CDM Claim"
Description:    "This is a test of IG build and publish - A provider issued list of professional services and products which have been provided, or are to be provided, to a patient which is sent to an insurer for reimbursement. The CDMClaim profile extends the base FHIR Claim resource with additional details."
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

* item.extension contains CapitatedServiceIndicator named capitatedServiceIndicator 0..1
* item.extension[capitatedServiceIndicator] ^short      = "An indicator that this service (encounter record) was capitated" 
* item.extension[capitatedServiceIndicator] ^definition = "An indicator that this service (encounter record) was capitated" 

* extension contains ClaimSnapshotProviderName named claimSnapshotProviderName 0..1
* extension[claimSnapshotProviderName] ^short      = "The original provider name as reported on the claim"
* extension[claimSnapshotProviderName] ^definition = "The original provider name as reported on the claim"

* extension contains ClaimSnapshotProviderZipCode named claimSnapshotProviderZipCode 0..1
* extension[claimSnapshotProviderZipCode] ^short      = "The original provider postal code, as reported on the claim"
* extension[claimSnapshotProviderZipCode] ^definition = "The original provider postal code, as reported on the claim"

* item.extension contains CompanyCode named companyCode 0..1
* item.extension[companyCode] ^short      = "The company code of the subscriber as reported on the claim"
* item.extension[companyCode] ^definition = "The company code of the subscriber as reported on the claim"

* extension contains EmployeeBusinessUnit named employeeBusinessUnit 0..1
* extension[employeeBusinessUnit] ^short      = "The business unit of the subscriber as reported on the claim" 
* extension[employeeBusinessUnit] ^definition = "The business unit of the subscriber as reported on the claim" 

* item.quantity.extension contains LocalNumberOfUnitsPerService named localNumberOfUnitsPerService 0..1
* item.quantity.extension[localNumberOfUnitsPerService] ^short      = "Customer-specific quantity of either services or units"
* item.quantity.extension[localNumberOfUnitsPerService] ^definition = "Customer-specific quantity of either services or units"

* extension contains SnapshotAgeInYears named snapshotAgeInYears 0..1
* extension[snapshotAgeInYears] ^short      = "The age of the patient in years at the date of service"
* extension[snapshotAgeInYears] ^definition = "The age of the patient in years at the date of service"

* extension contains WhPayerPcpResponsibilityIndicator named whPayerPcpResponsibilityIndicator 0..1
* extension[whPayerPcpResponsibilityIndicator] ^short      =  "An indicator signifying that the primary care physician is the physician considered either responsible or accountable for this claim"
* extension[whPayerPcpResponsibilityIndicator] ^definition =  "An indicator signifying that the primary care physician is the physician considered either responsible or accountable for this claim"

//Business rule to ensure the correct position of a provider on claim item against the CareTeam sequence
* careTeam.sequence obeys claim-careteam-sequence-check

