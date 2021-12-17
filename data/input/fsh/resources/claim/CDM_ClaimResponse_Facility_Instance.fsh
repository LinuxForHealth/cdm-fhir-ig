Instance:       CDMClaimResponseFacilityInstance
InstanceOf:     CDMClaimResponse
Usage:          #example
Title:          "CDM Claim Response - Facility Example"
Description:    "Sample of a CDM Facility Claim Response"

* meta.source  = "http://acme-health.com/WellnessMedicalCenter"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-claim-response"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessMedicalCenter"
* meta.extension[processRecordId].valueIdentifier.value   = "7209_07869_e00080722_3938586_2516181"
* meta.extension[sourceFileId].valueString                = "e00080722"

* identifier[0].use              = #official
* identifier[0].type             = IdentifierTypeCodeSystem#SSRI
* identifier[0].system           = "http://acme-health.com/CodeSystem/local-claim-identifier"
* identifier[0].value            = "000000000000000000019721078"
* identifier[0].assigner.display = "Acme Health - Wellness Medical Center"

* status                   = #active
* type.coding[0]           = WhPayerClaimTypeCodeSystem#medical
* type.coding[1].system    = "http://acme-health.com/CodeSystem/local-claim-type"
* type.coding[1].code      = #MedicalClaimType

* use                       = #claim
* patient                   = Reference(CDMPatientInstance)
* created                   = "2017-07-25T17:31:00-05:00"
* insurer.type              = RESOURCE-TYPE#Organization
* insurer.identifier.system = "http://acme-health.com/payer1/payer"
* insurer.identifier.value  = "Payer1"
* outcome                   = #complete

* error[0].code.coding      = http://acme-health.com/CodeSystem/local-error-detail#LocErrorDetail1
* error[1].code.coding      = http://acme-health.com/CodeSystem/local-error-header#LocErrorDetail2
* error[2].code.coding      = http://acme-health.com/CodeSystem/local-error-detail#LocErrorDetail3
* error[3].code.coding      = http://acme-health.com/CodeSystem/local-error-detail#LocErrorDetail4
* error[4].code.coding      = http://acme-health.com/CodeSystem/local-error-header#LocErrorHeader1
* error[5].code.coding      = http://acme-health.com/CodeSystem/local-exception-detail#LocExceptionDetail1
* error[6].code.coding      = http://acme-health.com/CodeSystem/local-exception-detail#LocExceptionDetail2
* error[7].code.coding      = http://acme-health.com/CodeSystem/local-exception-header#LocExceptionHeader1
* error[8].code.coding      = http://acme-health.com/CodeSystem/local-exception-header#LocExceptionHeader2

* item.itemSequence = 1
* item.adjudication[0].category            = AdjudicationCategoryCodeSystem#coinsurance
* item.adjudication[0].amount.currency     = CURRENCY#USD
* item.adjudication[0].amount.value        = 0.00
* item.adjudication[1].category            = AdjudicationCategoryCodeSystem#copay
* item.adjudication[1].amount.currency     = CURRENCY#USD
* item.adjudication[1].amount.value        = 25.00
* item.adjudication[2].category            = AdjudicationCategoryCodeSystem#deductible
* item.adjudication[2].amount.currency     = CURRENCY#USD
* item.adjudication[2].amount.value        = 0.00
* item.adjudication[3].category            = AdjudicationCategoryCodeSystem#tax
* item.adjudication[3].amount.currency     = CURRENCY#USD
* item.adjudication[3].amount.value        = 1.00
* item.adjudication[4].category            = AdjudicationCategoryCodeSystem#third-party
* item.adjudication[4].amount.currency     = CURRENCY#USD
* item.adjudication[4].amount.value        = 0.00
* item.adjudication[4].extension[savingsType].valueCodeableConcept = http://acme-health.com/CodeSystem/local-savings-type#LocalSavingsType
* item.adjudication[5].category            = AdjudicationCategoryCodeSystem#allowed
* item.adjudication[5].amount.currency     = CURRENCY#USD
* item.adjudication[5].amount.value        = 125.00
* item.adjudication[6].category            = AdjudicationCategoryCodeSystem#submitted
* item.adjudication[6].amount.currency     = CURRENCY#USD
* item.adjudication[6].amount.value        = 165.00
* item.adjudication[7].category            = AdjudicationCategoryCodeSystem#net-payment
* item.adjudication[7].amount.currency     = CURRENCY#USD
* item.adjudication[7].amount.value        = 100.00
* item.adjudication[7].reason.coding[0]    = REMIT-ADVICE-REMARK-CODE#M2
* item.adjudication[7].reason.coding[1]    = REMIT-ADVICE-REMARK-CODE#N16
* item.adjudication[7].reason.coding[2]    = http://acme-health.com/CodeSystem/local-explanation-of-benefits#LocalEOB
* item.adjudication[7].reason.coding[3]    = http://acme-health.com/CodeSystem/local-denied-reason#LocalDeniedReason
* item.adjudication[8].category            = AdjudicationCategoryCodeSystem#discount
* item.adjudication[8].amount.currency     = CURRENCY#USD
* item.adjudication[8].amount.value        = 40.00
* item.adjudication[9].category            = AdjudicationCategoryCodeSystem#discount
* item.adjudication[9].amount.currency     = CURRENCY#USD
* item.adjudication[9].amount.value        = 0
* item.adjudication[9].reason.coding       = http://acme-health.com/CodeSystem/local-discount-type#LocalDiscountType
* item.adjudication[10].category           = AdjudicationCategoryCodeSystem#ffs-equivalent
* item.adjudication[10].amount.currency    = CURRENCY#USD
* item.adjudication[10].amount.value       = 0.00
* item.adjudication[11].category           = AdjudicationCategoryCodeSystem#fully-insured-payment
* item.adjudication[11].amount.currency    = CURRENCY#USD
* item.adjudication[11].amount.value       = 0.00
* item.adjudication[12].category           = AdjudicationCategoryCodeSystem#healthcare-reimbursement
* item.adjudication[12].amount.currency    = CURRENCY#USD
* item.adjudication[12].amount.value       = 0.00
* item.adjudication[13].category           = AdjudicationCategoryCodeSystem#healthcare-savings-account
* item.adjudication[13].amount.currency    = CURRENCY#USD
* item.adjudication[13].amount.value       = 0.00
* item.adjudication[14].category           = AdjudicationCategoryCodeSystem#medicare-allowed
* item.adjudication[14].amount.currency    = CURRENCY#USD
* item.adjudication[14].amount.value       = 0.00
* item.adjudication[15].category           = AdjudicationCategoryCodeSystem#medicare-coinsurance
* item.adjudication[15].amount.currency    = CURRENCY#USD
* item.adjudication[15].amount.value       = 0.00
* item.adjudication[16].category           = AdjudicationCategoryCodeSystem#medicare-deductible
* item.adjudication[16].amount.currency    = CURRENCY#USD
* item.adjudication[16].amount.value       = 0.00
* item.adjudication[17].category           = AdjudicationCategoryCodeSystem#patient-liability
* item.adjudication[17].amount.currency    = CURRENCY#USD
* item.adjudication[17].amount.value       = 0.00
* item.adjudication[18].category           = AdjudicationCategoryCodeSystem#penalty
* item.adjudication[18].reason.coding      = http://acme-health.com/CodeSystem/local-penalty-type#LocPenaltyType
* item.adjudication[19].category           = AdjudicationCategoryCodeSystem#medicare-paid
* item.adjudication[19].amount.currency    = CURRENCY#USD
* item.adjudication[19].amount.value       = 0.00
* item.adjudication[20].category           = AdjudicationCategoryCodeSystem#withhold
* item.adjudication[20].amount.currency    = CURRENCY#USD
* item.adjudication[20].amount.value       = 0.00

* item.adjudication[21].category              = AdjudicationCategoryCodeSystem#excluded1
* item.adjudication[21].amount.currency       = CURRENCY#USD
* item.adjudication[21].amount.value          = 0.00
* item.adjudication[21].reason.coding         = http://acme-health.com/CodeSystem/local-excluded-reason_1#LocalExcludedReason1
* item.adjudication[22].category              = AdjudicationCategoryCodeSystem#excluded2
* item.adjudication[22].amount.currency       = CURRENCY#USD
* item.adjudication[22].amount.value          = 0.00
* item.adjudication[22].reason.coding         = http://acme-health.com/CodeSystem/local-excluded-reason_2#LocalExcludedReason2
* item.adjudication[23].category              = AdjudicationCategoryCodeSystem#excluded-reason
* item.adjudication[23].reason.coding         = http://acme-health.com/CodeSystem/local-excluded-reason_3#LocalExcludedReason3
* item.adjudication[24].category              = AdjudicationCategoryCodeSystem#drg-outlier
* item.adjudication[24].amount.currency       = CURRENCY#USD
* item.adjudication[24].amount.value          = 0.0
* item.adjudication[25].category              = AdjudicationCategoryCodeSystem#out-of-network-access-fee
* item.adjudication[25].amount.currency       = CURRENCY#USD
* item.adjudication[25].amount.value          = 0.0
* item.adjudication[25].extension[routingNumberCode].valueString = "12345"
* item.adjudication[26].category              = AdjudicationCategoryCodeSystem#out-of-network-surcharge-fee
* item.adjudication[26].amount.currency       = CURRENCY#USD
* item.adjudication[26].amount.value          = 0.0
* item.adjudication[27].category              = AdjudicationCategoryCodeSystem#summary
* item.adjudication[27].reason.coding[0]      = http://acme-health.com/CodeSystem/local-explanation-of-benefits#LocalEOB1
* item.adjudication[27].reason.coding[1]      = http://acme-health.com/CodeSystem/local-explanation-of-benefits#LocalEOB2

* item.extension[copayExclusion].valueCodeableConcept    = http://acme-health.com/CodeSystem/local-copay-exclusion#LocCopayExclusion
* item.extension[numberOfUnitsAllowed].valueInteger      = 2
* item.extension[reinsuranceMetIndicator].valueString    = "Y"
* item.extension[utilizationReview].valueCodeableConcept =  http://acme-health.com/CodeSystem/local-utilization-review#LocUtilizatinoReviewCd

* adjudication.category          = PaidInNetworkIndicatorCodeSystem#in-network
* adjudication.reason.coding     = PaidInNetworkIndicatorCodeSystem#in-network
* adjudication.extension[adjudicationDate].valueDate = 2017-06-30

* payment.date                   = "2017-07-20"
* payment.type                   = PAYMENT-TYPE#complete
* payment.amount.value           = 5.00
* payment.adjustmentReason[0]    = http://acme-health.com/CodeSystem/local-adjustment-reason#local-adj-reason
* payment.extension[claimAdjustmentType][0].valueCodeableConcept = WhPayerClaimAdjustmentTypeCodeSystem#1
* payment.extension[claimAdjustmentType][1].valueCodeableConcept = http://acme-health.com/CodeSystem/local-claim-adjustment-type#LocalClaimAdjType
* payment.extension[dispositionReason][0].valueCodeableConcept   = http://acme-health.com/CodeSystem/local-disposition-reason#record-in-error-correct-and-resubmit
* payment.extension[reimburseType].valueCodeableConcept          = http://acme-health.com/CodeSystem/local-reimburse-type#LocalReimburseType

* extension[claimReceivedDate].valueDate      = "2017-06-01"
* extension[claimStatus].valueCodeableConcept = http://acme-health.com/CodeSystem/local-claim-status#LocClaimStatus
* extension[daysToProcess].valueInteger       = 15
