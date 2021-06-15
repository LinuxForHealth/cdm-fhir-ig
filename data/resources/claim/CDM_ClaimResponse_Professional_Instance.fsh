Instance:       CDMClaimResponseProfessionalInstance
InstanceOf:     CDMClaimResponse
Usage:          #example
Title:          "CDM Claim Response - Professional Example"
Description:    "Sample of a CDM Professional Claim Response"

* meta.source = "http://acme-health.com/WellnessMedicalCenter"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-claim-response-drug"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessMedicalCenter"
* meta.extension[processRecordId].valueIdentifier.value  = "7209_07869_e00080779_3938586_2516181"
* meta.extension[sourceFileId].valueString     = "e00080739"

* identifier[0].use              = #official
* identifier[0].type             = IdentifierTypeCodeSystem#SSRI
* identifier[0].system           = "http://acmehealth.com/CodeSystem/local-claim-identifier"
* identifier[0].value            = "000000000000000000019721078"
* identifier[0].assigner.display = "Acme Health - Wellness Medical Center"

* status                   = #active
* type.coding[0]           = WhPayerClaimTypeCodeSystem#medical
* type.coding[1].system    = "http://acmehealth.com/CodeSystem/local-claim-type"
* type.coding[1].code      = #MedicalClaimType

* use      = #claim
* patient  = Reference(CDMPatientInstance)
* created  = "2017-07-25T17:31:00-05:00"
* insurer.type = RESOURCE-TYPE#Organization
* insurer.identifier.system = "http://acme-health.com/payer1/payer"
* insurer.identifier.value  = "Payer1"
* outcome  = #complete

* item.itemSequence = 1
* item.adjudication[0].category            = AdjudicationCategoryCodeSystem#coinsurance
* item.adjudication[0].amount.value        = 15.00
* item.adjudication[1].category            = AdjudicationCategoryCodeSystem#copay
* item.adjudication[1].amount.value        = 10.00
* item.adjudication[2].category            = AdjudicationCategoryCodeSystem#deductible
* item.adjudication[2].amount.value        = 20.00
// Index 3 not specified for Professional. Will throw QA error since index skipped.
* item.adjudication[4].category            = AdjudicationCategoryCodeSystem#third-party
* item.adjudication[4].amount.value        = 0.00
* item.adjudication[5].category            = AdjudicationCategoryCodeSystem#allowed
* item.adjudication[5].amount.value        = 25.0
* item.adjudication[6].category            = AdjudicationCategoryCodeSystem#submitted
* item.adjudication[6].amount.value        = 5.00

// Index 7 not required, but added as example to prevent QA error
* item.adjudication[7].category             = AdjudicationCategoryCodeSystem#net-payment
* item.adjudication[7].reason.coding.system = "http://acmehealth.com/CodeSystem/local-explanation-of-benefits"
* item.adjudication[7].reason.coding.code   = #LocalEOB1

* item.adjudication[8].category             = AdjudicationCategoryCodeSystem#remittance 

* item.adjudication[9].category             = AdjudicationCategoryCodeSystem#discount
* item.adjudication[9].amount.value         = 0.00
// Indexex 10 - 11  not specified for Professional. Will throw QA error since index skipped.
// Indexes 12 - 16 not required, but added example to prevent QA error
* item.adjudication[12].category              = AdjudicationCategoryCodeSystem#healthcare-reimbursement
* item.adjudication[12].amount.currency       = CURRENCIES#USD
* item.adjudication[12].amount.value          = 0.00
* item.adjudication[13].category              = AdjudicationCategoryCodeSystem#healthcare-savings-account
* item.adjudication[13].amount.currency       = CURRENCIES#USD
* item.adjudication[13].amount.value          = 0.00
* item.adjudication[14].category              = AdjudicationCategoryCodeSystem#medicare-allowed
* item.adjudication[14].amount.currency       = CURRENCIES#USD
* item.adjudication[14].amount.value          = 0.00
* item.adjudication[15].category              = AdjudicationCategoryCodeSystem#medicare-coinsurance
* item.adjudication[15].amount.currency       = CURRENCIES#USD
* item.adjudication[15].amount.value          = 0.00
* item.adjudication[16].category              = AdjudicationCategoryCodeSystem#medicare-deductible
* item.adjudication[16].amount.currency       = CURRENCIES#USD
* item.adjudication[16].amount.value          = 0.00

* item.adjudication[17].category              = AdjudicationCategoryCodeSystem#patient-liability
* item.adjudication[17].amount.currency       = CURRENCIES#USD
* item.adjudication[17].amount.value          = 0.00

// Index 18 not requred, but included as example to prevent QA errors
* item.adjudication[18].category              = AdjudicationCategoryCodeSystem#penalty
* item.adjudication[18].reason.coding.system  = "http://acmehealth.com/CodeSystem/local-penalty-type"
* item.adjudication[18].reason.coding.code    = #LocalPenaltyType

* item.adjudication[19].category              = AdjudicationCategoryCodeSystem#withhold
* item.adjudication[19].amount.value          = 0.00

// Indexes 20 thru 32 not requred, but included as example to prevent QA errors
// Some extensions not added for these
* item.adjudication[20].category              = AdjudicationCategoryCodeSystem#medicare-paid
* item.adjudication[20].amount.currency       = CURRENCIES#USD
* item.adjudication[20].amount.value          = 0.00
// Index 21 doesn't exist for Professional
* item.adjudication[22].category              = AdjudicationCategoryCodeSystem#excluded1
* item.adjudication[22].amount.currency       = CURRENCIES#USD
* item.adjudication[22].amount.value          = 0.0
* item.adjudication[23].category              = AdjudicationCategoryCodeSystem#excluded2
* item.adjudication[23].amount.currency       = CURRENCIES#USD
* item.adjudication[23].amount.value          = 0.0
* item.adjudication[24].category              = AdjudicationCategoryCodeSystem#excluded3
* item.adjudication[24].amount.currency       = CURRENCIES#USD
* item.adjudication[24].amount.value          = 0.0
* item.adjudication[25].category              = AdjudicationCategoryCodeSystem#out-of-network-access-fee
* item.adjudication[26].category              = AdjudicationCategoryCodeSystem#out-of-network-access-fee
* item.adjudication[26].amount.currency       = CURRENCIES#USD
* item.adjudication[26].amount.value          = 0.0
* item.adjudication[27].category              = AdjudicationCategoryCodeSystem#out-of-network-surcharge-fee
* item.adjudication[27].amount.currency       = CURRENCIES#USD
* item.adjudication[27].amount.value          = 0.0
* item.adjudication[28].category              = AdjudicationCategoryCodeSystem#excluded1
* item.adjudication[28].reason.coding.system  = "http://acmehealth.com/CodeSystem/local-excluded-reason"
* item.adjudication[28].reason.coding.code    = #LocalExcludedReason1
* item.adjudication[29].category              = AdjudicationCategoryCodeSystem#excluded2
* item.adjudication[29].reason.coding.system  = "http://acmehealth.com/CodeSystem/local-excluded-reason"
* item.adjudication[29].reason.coding.code    = #LocalExcludedReason2
* item.adjudication[30].category              = AdjudicationCategoryCodeSystem#excluded3
* item.adjudication[30].reason.coding.system  = "http://acmehealth.com/CodeSystem/local-excluded-reason"
* item.adjudication[30].reason.coding.code    = #LocalExcludedReason3
* item.adjudication[31].category              = AdjudicationCategoryCodeSystem#third-party
* item.adjudication[32].category              = AdjudicationCategoryCodeSystem#discount
* item.adjudication[32].reason.coding.system  = "http://acmehealth.com/CodeSystem/local-discount-type"
* item.adjudication[32].reason.coding.code    = #LocalDiscountType

* item.adjudication[33].category              = AdjudicationCategoryCodeSystem#tax
* item.adjudication[33].amount.value          = 1.00
* item.adjudication[34].category              = AdjudicationCategoryCodeSystem#net-payment
* item.adjudication[34].amount.value          = 25.00

* adjudication.category          = PaidInNetworkIndicatorCodeSystem#paid-in-network

* payment.date                   = "2017-07-20"
* payment.type                   = PAYMENT-TYPE#complete
* payment.amount.value           = 5.00
* payment.adjustmentReason[0]    = http://acmehealth.com/CodeSystem/local-adjustment-reason#local-adj-reason
* payment.extension[claimAdjustmentType][0].valueCodeableConcept = WhPayerClaimAdjustmentTypeCodeSystem#1
