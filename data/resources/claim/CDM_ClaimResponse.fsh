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
* adjudication.extension[adjudicationDate] ^short      = "Date on which the payment status of the claim was adjudicated by the state"
* adjudication.extension[adjudicationDate] ^definition = "Date on which the payment status of the claim was adjudicated by the state"

* type  from ClaimTypeValueSet (extensible)

* extension contains ClaimReceivedDate named claimReceivedDate 0..1
* extension[claimReceivedDate] ^short      = "Date the claim was received" 
* extension[claimReceivedDate] ^definition = "Date the claim was received" 

* extension contains ClaimStatus named claimStatus 0..1
* extension[claimStatus] ^short      = "Custom code for the claim status"
* extension[claimStatus] ^definition = "Custom code for the claim status"

* payment.extension contains ClaimAdjustmentType named claimAdjustmentType 0..*
* payment.extension[claimAdjustmentType] ^short      = "The code for the type of adjustment for the claim"
* payment.extension[claimAdjustmentType] ^definition = "The code for the type of adjustment for the claim"

* payment.extension contains DispositionReason named dispositionReason 0..*
* payment.extension[dispositionReason] ^short      = "Customer-specific code for the disposition reason, as related to how the claim was paid"
* payment.extension[dispositionReason] ^definition = "Customer-specific code for the disposition reason, as related to how the claim was paid"

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
