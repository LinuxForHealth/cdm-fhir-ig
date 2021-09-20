Instance:       CDMClaimResponseDrugInstance
InstanceOf:     CDMClaimResponseDrug
Usage:          #example
Title:          "CDM Claim Response - Drug Example"
Description:    "Sample of a CDM Drug Claim Response"

* meta.source = "http://acme-health.com/WellnessCenterPharmacy"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-claim-response-drug"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessCenterPharmacy"
* meta.extension[processRecordId].valueIdentifier.value  = "7209_07869_e00080779_3938586_2516181"
* meta.extension[sourceFileId].valueString     = "e00080779"

* identifier[0].use              = #official
* identifier[0].type             = IdentifierTypeCodeSystem#RXN
* identifier[0].system           = "http://acme-health.com/CodeSystem/local-claim-identifier"
* identifier[0].value            = "000000000000000000019721078"
* identifier[0].assigner.display = "Acme Health - Wellness Center Pharmacy"

* status            = #active
* extension[claimStatus].valueCodeableConcept = http://acme-health.com/CodeSystem/local-claim-status#LocClaimSts
* extension[claimReceivedDate].valueDate      = "2017-06-01"

* type.coding[0]    = WhPayerClaimTypeCodeSystem#pharmacy
* type.coding[1]    = http://acme-health.com/CodeSystem/local-claim-type#Pharmacy

* use      = #claim
* patient  = Reference(CDMPatientInstance)
* created  = "2017-07-25T17:31:00-05:00"
* insurer.type = RESOURCE-TYPE#Organization
* insurer.identifier.system = "http://acme-health.com/payer1/payer"
* insurer.identifier.value  = "Payer1"
* outcome  = #complete

* item.itemSequence = 1
* item.adjudication[0].category      = AdjudicationCategoryCodeSystem#coinsurance
* item.adjudication[0].amount.value  = 18.86
* item.adjudication[1].category      = AdjudicationCategoryCodeSystem#copay
* item.adjudication[1].amount.value  = 10.0
* item.adjudication[2].category      = AdjudicationCategoryCodeSystem#deductible
* item.adjudication[2].amount.value  = 10.00
* item.adjudication[3].category      = AdjudicationCategoryCodeSystem#tax
* item.adjudication[3].amount.value  = 1.01
* item.adjudication[4].category      = AdjudicationCategoryCodeSystem#third-party
* item.adjudication[4].amount.value  = 0.00
* item.adjudication[5].category      = AdjudicationCategoryCodeSystem#allowed
* item.adjudication[5].amount.value  = 25.0
* item.adjudication[6].category      = AdjudicationCategoryCodeSystem#submitted
* item.adjudication[6].amount.value  = 5.00
* item.adjudication[7].category      = AdjudicationCategoryCodeSystem#net-payment
* item.adjudication[7].amount.value  = 0.00
* item.adjudication[7].reason.coding[0] = REMIT-ADVICE-REMARK-CODE#M50 
* item.adjudication[7].reason.coding[1] = REMIT-ADVICE-REMARK-CODE#N423 
* item.adjudication[8].category      = AdjudicationCategoryCodeSystem#discount
* item.adjudication[8].amount.value  = 0.00
* item.adjudication[9].category      = AdjudicationCategoryCodeSystem#ffs-equivalent
* item.adjudication[9].amount.value  = 0.00
* item.adjudication[10].category      = AdjudicationCategoryCodeSystem#fully-insured-payment
* item.adjudication[10].amount.value  = 0.00
* item.adjudication[11].category      = AdjudicationCategoryCodeSystem#healthcare-reimbursement
* item.adjudication[11].amount.value  = 0.00
* item.adjudication[12].category      = AdjudicationCategoryCodeSystem#healthcare-savings-account
* item.adjudication[12].amount.value  = 0.00
* item.adjudication[13].category     = AdjudicationCategoryCodeSystem#medicare-allowed
* item.adjudication[13].amount.value = 0.00
* item.adjudication[14].category     = AdjudicationCategoryCodeSystem#medicare-coinsurance
* item.adjudication[14].amount.value = 0.00
* item.adjudication[15].category     = AdjudicationCategoryCodeSystem#medicare-deductible
* item.adjudication[15].amount.value = 0.00
* item.adjudication[16].category     = AdjudicationCategoryCodeSystem#patient-liability
* item.adjudication[16].amount.value = 0.00
* item.adjudication[17].category         = AdjudicationCategoryCodeSystem#penalty
* item.adjudication[17].amount.value     = 1.00
* item.adjudication[17].reason.coding[0] = http://acme-health.com/CodeSystem/local-penalty-type#LocPenaltyType
* item.adjudication[18].category     = AdjudicationCategoryCodeSystem#excess_copay
* item.adjudication[18].amount.value = 0.00
* item.adjudication[19].category     = AdjudicationCategoryCodeSystem#medicare-paid
* item.adjudication[19].amount.value = 0.00

* item.extension[claimResponseItemStatus].valueCodeableConcept = WhPayerClaimStatusCodeSystem#P "Paid"
* item.extension[claimResponseBenefitPlan].valueReference = Reference(CoverageDrugExample)

* item.extension[rxFormularyIndicator].valueString     = "N"
* item.extension[rxPayTier].valueCodeableConcept       = http://acme-health.com/CodeSystem/local-rx-pay-tier#Tier1
* item.extension[rxSupplyIndicator].valueString        = "N"
* item.extension[usualAndCustomaryAmount].valueDecimal = 0.00

* adjudication.category                    = PaidInNetworkIndicatorCodeSystem#in-network
* adjudication.extension[adjudicationDate].valueDate = 2017-06-30

* payment.date                   = "2017-07-20"
* payment.type                   = PAYMENT-TYPE#complete
* payment.amount.value           = 5.00
* payment.adjustmentReason[0]    = http://acme-health.com/CodeSystem/local-adjustment-reason#local-adj-reason
* payment.extension[claimAdjustmentType][0].valueCodeableConcept = WhPayerClaimAdjustmentTypeCodeSystem#1
* payment.extension[claimAdjustmentType][1].valueCodeableConcept = http://acme-health.com/CodeSystem/local-claim-adjustment-type#LocalClaimAdjType
* payment.extension[dispositionReason][0].valueCodeableConcept  = http://acme-health.com/CodeSystem/local-disposition-reason#record-in-error-correct-and-resubmit
