Profile:        CDMClaimResponse
Parent:         ClaimResponse
Id:             cdm-claim-response
Title:          "CDM Claim Response"
Description:     "This resource provides the adjudication details from the processing of a Claim resource. The CDMClaimResponse profile extends the base FHIR ClaimResponse resource with additional adjudication details."
* contained 0..0
* meta only ProcessMeta

// Must support at least one identifier
// Identifiers to have one system and value 
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type  from IdentifierTypeValueSet (extensible)

* adjudication.extension contains AdjudicationDate named adjudicationDate 0..1
* adjudication.extension[adjudicationDate] ^short      = "Date on which the payment status of the claim was adjudicated"
* adjudication.extension[adjudicationDate] ^definition = "Date on which the payment status of the claim was adjudicated"

* item.adjudication.extension contains RoutingNumberCode named routingNumberCode 0..1
* item.adjudication.extension[routingNumberCode] ^short      = "Customer-specific code for the ITS routing number" 
* item.adjudication.extension[routingNumberCode] ^definition = "Customer-specific code for the ITS routing number" 

* item.adjudication.extension contains SavingsType named savingsType 0..1
* item.adjudication.extension[savingsType] ^short      = "Customer-specific code for the type of third party savings" 
* item.adjudication.extension[savingsType] ^definition = "Customer-specific code for the type of third party savings"

* type  from ClaimTypeValueSet (extensible)

* extension contains ClaimReceivedDate named claimReceivedDate 0..1
* extension[claimReceivedDate] ^short      = "Date the claim was received" 
* extension[claimReceivedDate] ^definition = "Date the claim was received" 

* extension contains ClaimStatus named claimStatus 0..1
* extension[claimStatus] ^short      = "Custom code for the claim status"
* extension[claimStatus] ^definition = "Custom code for the claim status"

* extension contains DaysToProcess named daysToProcess 0..1
* extension[daysToProcess] ^short      = "Number of days between the date the claim was received and the date the claim was processed"
* extension[daysToProcess] ^definition = "Number of days between the date the claim was received and the date the claim was processed"

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

* item.adjudication.category from AdjudicationCategoryValueSet (example)

//Extension for claim status at item level
* item.extension contains ClaimResponseItemStatus named claimResponseItemStatus 0..1
* item.extension[claimResponseItemStatus].valueCodeableConcept from WHPayerClaimStatusValueSet (extensible)
* item.extension[claimResponseItemStatus] ^short      = "The status of claim payment on claim item"
* item.extension[claimResponseItemStatus] ^definition = "The status of claim payment on claim item"

//Extension for benefit plan at item level
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
* item.extension[reinsuranceMetIndicator] ^short      = "Indicates whether the reinsurance amount was met"
* item.extension[reinsuranceMetIndicator] ^definition = "Indicates whether the reinsurance amount was met"

* item.extension contains UtilizationReview named utilizationReview 0..1
* item.extension[utilizationReview] ^short      = "Customer-specific code for the type of utilization review"
* item.extension[utilizationReview] ^definition = "Customer-specific code for the type of utilization review"
