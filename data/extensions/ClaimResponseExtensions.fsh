Extension:   AdjudicationDate
Id:          adjudication-date
Title:       "Adjudication Date"
Description: "Date on which the payment status of the claim was adjudicated" 
* value[x] only date

Extension:   ClaimAdjustmentType
Id:          claim-adjustment-type
Title:       "Claim Adjustment Type"
Description: "The code for the claim's adjustment type" 
* value[x] only CodeableConcept
* valueCodeableConcept from WhPayerClaimAdjustmentTypeValueSet (extensible)

Extension:   ClaimReceivedDate
Id:          claim-received-date
Title:       "Claim Received Date"
Description: "Date the claim was received" 
* value[x] only date

Extension:   CopayExclusion
Id:          copay-exclusion
Title:       "Copay Exclusion"
Description: "Customer-specific code for the exclusion reason of a copayment"
* value[x] only CodeableConcept

Extension:   DaysToProcess
Id:          days-to-process
Title:       "Days To Process"
Description:  "Number of days between the date the claim was received and the date the claim was processed"
* value[x] only integer

Extension:   NumberOfUnitsAllowed
Id:          number-of-units-allowed
Title:       "Number of Units Allowed"
Description: "Customer-specific quantity of services or units allowed"
* value[x] only string

Extension:   RoutingNumber
Id:          routing-number
Title:       "Routing Number"
Description: "Customer-specific code for the ITS routing number" 
* value[x] only string

Extension:   ReinsuranceMetIndicator
Id:          reinsurance-met-indicator
Title:       "Reinsurance Met Indicator"
Description: "Indicator that the reinsurance amount was met" 
* value[x] only string

Extension:   RxFormularyIndicator
Id:          rx-formulary-indicator
Title:       "Rx Formulary Indicator"
Description: "An indicator that the prescription drug is included in the formulary" 
* value[x] only string

Extension:   RxPayTier
Id:          rx-pay-tier
Title:       "Rx Pay Tier"
Description: "Payment tier of the prescription drug"
* value[x] only CodeableConcept

Extension:   RxSupplyIndicator
Id:          rx-supply-indicator
Title:       "Rx Supply Indicator"
Description: "An indicator of whether or not the drug claim is a medical supply (Y) or a drug (N)"
* value[x] only string

Extension:   ClaimResponseItemStatus
Id:          claim-response-item-status
Title:       "Claim Response Item Status"
Description: "Payment status of claim item"
* value[x] only CodeableConcept
* valueCodeableConcept from WHPayerClaimStatusValueSet (extensible)

Extension:   ClaimResponseBenefitPlan
Id:          claim-response-benefit-plan
Title:       "Claim Response Benefit Plan"
Description: "The benefit plan on the claim item"
* value[x] only Reference(Coverage)

Extension:   DispositionReason
Id:          disposition-reason
Title:       "Disposition Reason"
Description: "Customer-specific code for the disposition reason, as related to how the claim was paid"
* value[x] only CodeableConcept

Extension:   ReimburseType
Id:          reimburse-type
Title:       "Reimburse Type"
Description: "Method of payment code for the claim"
* value[x] only CodeableConcept

Extension:   SavingsType
Id:          savings-type
Title:       "Savings Type"
Description: "Customer-specific code for the type of third party savings"
* value[x] only string

Extension:   SubmissionType
Id:          submission-type
Title:       "Submission Type"
Description: "Customer-specific code for the type of electronic submission"
* value[x] only CodeableConcept

Extension:      UsualAndCustomaryAmount
Id:             usual-and-customary-amount
Title:          "Usual And Customary Amount"
Description:    "Usual and customary amount on the drug claim"
* value[x] only decimal

Extension:   UtilizationReview
Id:          utilization-review
Title:       "Utilization Review"
Description: "Customer-specific code for the type of utilization review"
* value[x] only CodeableConcept
