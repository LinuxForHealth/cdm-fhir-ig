Instance:       CDMExplanationOfBenefitProfessionalInstance
InstanceOf:     CDMExplanationOfBenefit
Usage:          #example
Title:          "CDM Explanation of Benefit - Professional Example"
Description:    "Sample of a CDM Professional Explanation of Benefit"

* meta.source = "http://acme-health.com/WellnessMedicalCenter"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-explanation-of-benefit"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessMedicalCenter"
* meta.extension[processRecordId].valueIdentifier.value  = "7209_07869_e00080779_3938586_2516181"
//* meta.extension[sourceFileId].valueString     = "e00080739"
//* meta.extension[sourceFileId].valueString     = "e00080779"

* identifier[0].use              = #official
* identifier[0].type             = IdentifierTypeCodeSystem#SSRI
* identifier[0].system           = "http://acmehealth.com/CodeSystem/local-claim-identifier"
* identifier[0].value            = "000000000000000000019721078"
* identifier[0].assigner.display = "Acme Health - Wellness Medical Center"

* extension[snapshotAgeInYears].valueUnsignedInt   = 20

* status                   = #active

* type.coding[1].system    = "http://acmehealth.com/CodeSystem/local-claim-type"
* type.coding[1].code      = #MedicalClaimType

* use      = #claim
* patient  = Reference(CDMPatientInstance)
* created  = "2017-07-25T17:31:00-05:00"
* insurer.type = RESOURCE-TYPE#Organization
* insurer.identifier.system = "http://acme-health.com/payer1/payer"
* insurer.identifier.value  = "Payer1"
* outcome  = #complete
* provider  = Reference(DrKelly)


// servicing provider
* careTeam[1].sequence  = 6
* careTeam[1].provider  = Reference(DrKelly)
* careTeam[1].role      = ClaimCareTeamRoleCodeSystem#servicing

* insurance.focal             = true
* insurance.coverage          = Reference(PrimaryPayerExample)

* supportingInfo[0].sequence             = 1
* supportingInfo[0].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[0].code                 = ClaimSupportingInfoTypeCodeSystem#network-provider-indicator
* supportingInfo[0].valueString          = "Y"

* extension[claimSnapshotProviderName].valueString         = "Dr D. Kelly, MD"
* extension[claimSnapshotProviderZipCode].valueString      = "75014"
* extension[referralIndicator].valueString                 = "N"
* extension[employeeBusinessUnit].valueCodeableConcept     = http://acme-health.com/CodeSystem/local-employee-business-unit#EmpBusUnit1
* extension[whPayerPcpResponsibilityIndicator].valueString = "Y"

* diagnosis[0].sequence                  = 1
* diagnosis[0].diagnosisCodeableConcept  = ICD10#G43.909 "Migraine, Unspecified, not Intractable, without Status Migrainosus"
* diagnosis[0].type                      = DIAGNOSIS-TYPE#principal

* diagnosis[1].sequence                  = 2
* diagnosis[1].diagnosisCodeableConcept  = ICD10#G44.84 "Primary exertional headache"
* diagnosis[1].type                      = DIAGNOSIS-TYPE#discharge

* item[0].sequence = 1
* item[0].productOrService.coding[0]                = ICD10#Z00.00
* item[0].servicedPeriod.start                      = "2017-06-20"
* item[0].servicedPeriod.end                        = "2017-06-20"
* item[0].locationCodeableConcept[0]                = CMS-PLACE-OF-SERVICE#11 "Office" 
* item[0].locationCodeableConcept.coding[1].system  = "http://acme-health.com/CodeSystem/local-place-of-service"
* item[0].locationCodeableConcept.coding[1].code    = #LocalPlcOfService
* item[0].quantity.value                            = 1.00
* item[0].quantity.extension[localNumberOfUnitsPerService].valueQuantity.value = 1.00
* item[0].extension[capitatedServiceIndicator].valueString                     = "N"


* item[0].adjudication[0].category            = AdjudicationCategoryCodeSystem#coinsurance
* item[0].adjudication[0].amount.value        = 15.00
* item[0].adjudication[1].category            = AdjudicationCategoryCodeSystem#copay
* item[0].adjudication[1].amount.value        = 10.00
* item[0].adjudication[2].category            = AdjudicationCategoryCodeSystem#deductible
* item[0].adjudication[2].amount.value        = 20.00
// Index 3 not specified for Professional. Will throw QA error since index skipped.
* item[0].adjudication[4].category            = AdjudicationCategoryCodeSystem#third-party
* item[0].adjudication[4].amount.value        = 0.00
* item[0].adjudication[5].category            = AdjudicationCategoryCodeSystem#allowed
* item[0].adjudication[5].amount.value        = 25.0
* item[0].adjudication[6].category            = AdjudicationCategoryCodeSystem#submitted
* item[0].adjudication[6].amount.value        = 5.00

// Index 7 not required, but added as example to prevent QA error
* item[0].adjudication[7].category             = AdjudicationCategoryCodeSystem#net-payment
* item[0].adjudication[7].reason.coding.system = "http://acmehealth.com/CodeSystem/local-explanation-of-benefits"
* item[0].adjudication[7].reason.coding.code   = #LocalEOB1

* item[0].adjudication[8].category             = AdjudicationCategoryCodeSystem#remittance 

* item[0].adjudication[9].category             = AdjudicationCategoryCodeSystem#discount
* item[0].adjudication[9].amount.value         = 0.00
// Indexex 10 - 11  not specified for Professional. Will throw QA error since index skipped.
// Indexes 12 - 16 not required, but added example to prevent QA error
* item[0].adjudication[12].category              = AdjudicationCategoryCodeSystem#healthcare-reimbursement
* item[0].adjudication[12].amount.currency       = CURRENCIES#USD
* item[0].adjudication[12].amount.value          = 0.00
* item[0].adjudication[13].category              = AdjudicationCategoryCodeSystem#healthcare-savings-account
* item[0].adjudication[13].amount.currency       = CURRENCIES#USD
* item[0].adjudication[13].amount.value          = 0.00
* item[0].adjudication[14].category              = AdjudicationCategoryCodeSystem#medicare-allowed
* item[0].adjudication[14].amount.currency       = CURRENCIES#USD
* item[0].adjudication[14].amount.value          = 0.00
* item[0].adjudication[15].category              = AdjudicationCategoryCodeSystem#medicare-coinsurance
* item[0].adjudication[15].amount.currency       = CURRENCIES#USD
* item[0].adjudication[15].amount.value          = 0.00
* item[0].adjudication[16].category              = AdjudicationCategoryCodeSystem#medicare-deductible
* item[0].adjudication[16].amount.currency       = CURRENCIES#USD
* item[0].adjudication[16].amount.value          = 0.00

* item[0].adjudication[17].category              = AdjudicationCategoryCodeSystem#patient-liability
* item[0].adjudication[17].amount.currency       = CURRENCIES#USD
* item[0].adjudication[17].amount.value          = 0.00

// Index 18 not requred, but included as example to prevent QA errors
* item[0].adjudication[18].category              = AdjudicationCategoryCodeSystem#penalty
* item[0].adjudication[18].reason.coding.system  = "http://acmehealth.com/CodeSystem/local-penalty-type"
* item[0].adjudication[18].reason.coding.code    = #LocalPenaltyType

* item[0].adjudication[19].category              = AdjudicationCategoryCodeSystem#withhold
* item[0].adjudication[19].amount.value          = 0.00

// Indexes 20 thru 32 not requred, but included as example to prevent QA errors
// Some extensions not added for these
* item[0].adjudication[20].category              = AdjudicationCategoryCodeSystem#medicare-paid
* item[0].adjudication[20].amount.currency       = CURRENCIES#USD
* item[0].adjudication[20].amount.value          = 0.00
// Index 21 doesn't exist for Professional
* item[0].adjudication[22].category              = AdjudicationCategoryCodeSystem#excluded1
* item[0].adjudication[22].amount.currency       = CURRENCIES#USD
* item[0].adjudication[22].amount.value          = 0.0
* item[0].adjudication[23].category              = AdjudicationCategoryCodeSystem#excluded2
* item[0].adjudication[23].amount.currency       = CURRENCIES#USD
* item[0].adjudication[23].amount.value          = 0.0
* item[0].adjudication[24].category              = AdjudicationCategoryCodeSystem#excluded3
* item[0].adjudication[24].amount.currency       = CURRENCIES#USD
* item[0].adjudication[24].amount.value          = 0.0
* item[0].adjudication[25].category              = AdjudicationCategoryCodeSystem#out-of-network-access-fee
* item[0].adjudication[26].category              = AdjudicationCategoryCodeSystem#out-of-network-access-fee
* item[0].adjudication[26].amount.currency       = CURRENCIES#USD
* item[0].adjudication[26].amount.value          = 0.0
* item[0].adjudication[27].category              = AdjudicationCategoryCodeSystem#out-of-network-surcharge-fee
* item[0].adjudication[27].amount.currency       = CURRENCIES#USD
* item[0].adjudication[27].amount.value          = 0.0
* item[0].adjudication[28].category              = AdjudicationCategoryCodeSystem#excluded1
* item[0].adjudication[28].reason.coding.system  = "http://acmehealth.com/CodeSystem/local-excluded-reason"
* item[0].adjudication[28].reason.coding.code    = #LocalExcludedReason1
* item[0].adjudication[29].category              = AdjudicationCategoryCodeSystem#excluded2
* item[0].adjudication[29].reason.coding.system  = "http://acmehealth.com/CodeSystem/local-excluded-reason"
* item[0].adjudication[29].reason.coding.code    = #LocalExcludedReason2
* item[0].adjudication[30].category              = AdjudicationCategoryCodeSystem#excluded3
* item[0].adjudication[30].reason.coding.system  = "http://acmehealth.com/CodeSystem/local-excluded-reason"
* item[0].adjudication[30].reason.coding.code    = #LocalExcludedReason3
* item[0].adjudication[31].category              = AdjudicationCategoryCodeSystem#third-party
* item[0].adjudication[32].category              = AdjudicationCategoryCodeSystem#discount
* item[0].adjudication[32].reason.coding.system  = "http://acmehealth.com/CodeSystem/local-discount-type"
* item[0].adjudication[32].reason.coding.code    = #LocalDiscountType

* item[0].adjudication[33].category              = AdjudicationCategoryCodeSystem#tax
* item[0].adjudication[33].amount.value          = 1.00
* item[0].adjudication[34].category              = AdjudicationCategoryCodeSystem#net-payment
* item[0].adjudication[34].amount.value          = 25.00

* adjudication.category          = PaidInNetworkIndicatorCodeSystem#paid-in-network

* payment.date                   = "2017-07-20"
* payment.type                   = PAYMENT-TYPE#complete
* payment.amount.value           = 5.00
* payment.adjustmentReason[0]    = http://acmehealth.com/CodeSystem/local-adjustment-reason#local-adj-reason
* payment.extension[claimAdjustmentType][0].valueCodeableConcept = WhPayerClaimAdjustmentTypeCodeSystem#1
