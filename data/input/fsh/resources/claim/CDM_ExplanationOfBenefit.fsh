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

* priority                from 	http://terminology.hl7.org/ValueSet/process-priority (example)

* type                    from ClaimTypeValueSet (extensible)
* subType                 from WhClaimSubtypeValueSet (extensible)
* supportingInfo.category from ClaimSupportingInfoCategoryValueSet (extensible)
* supportingInfo.code     from ClaimSupportingInfoTypeValueSet (extensible)

* careTeam.role           from ClaimCareTeamRoleValueSet (extensible)
* careTeam.provider       only Reference(Practitioner or PractitionerRole or Organization)

* item.adjudication.category from AdjudicationCategoryValueSet (example)

// EXTENSIONS
* adjudication.extension contains AdjudicationDate named adjudicationDate 0..1
* adjudication.extension[adjudicationDate] ^short      = "Date on which the payment status of the claim was adjudicated"
* adjudication.extension[adjudicationDate] ^definition = "Date on which the payment status of the claim was adjudicated"

* extension contains ClaimReceivedDate named claimReceivedDate 0..1
* extension[claimReceivedDate] ^short      = "Date the claim was received" 
* extension[claimReceivedDate] ^definition = "Date the claim was received" 

* extension contains Employer named employer 0..1
* extension[employer] ^short      = "Customer-specific code for the employer as reported on the claim record"
* extension[employer] ^definition = "Customer-specific code for the employer as reported on the claim record"

* item.extension contains ClaimResponseItemStatus named claimResponseItemStatus 0..1
* item.extension[claimResponseItemStatus].valueCodeableConcept from WHPayerClaimStatusValueSet (extensible)
* item.extension[claimResponseItemStatus] ^short      = "The status of claim payment on claim item"
* item.extension[claimResponseItemStatus] ^definition = "The status of claim payment on claim item"

* item.extension contains ServiceBillDaysCount named serviceBillDaysCount 0..1
* item.extension[serviceBillDaysCount] ^short      = "Number of days between the date of service and the date the claim was received"
* item.extension[serviceBillDaysCount] ^definition = "Number of days between the date of service and the date the claim was received"

* item.quantity.extension contains LocalNumberOfUnitsPerService named localNumberOfUnitsPerService 0..1
* item.quantity.extension[localNumberOfUnitsPerService] ^short      = "Customer-specific quantity of either services or units"
* item.quantity.extension[localNumberOfUnitsPerService] ^definition = "Customer-specific quantity of either services or units"
