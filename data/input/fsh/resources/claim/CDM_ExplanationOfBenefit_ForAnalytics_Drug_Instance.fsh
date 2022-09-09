Instance:       CDMExplanationOfBenefitForAnalyticsDrugInstance
InstanceOf:     CDMExplanationOfBenefitForAnalytics
Usage:          #example
Title:          "CDM Explanation of Benefit - Pharmacy Example"
Description:    "Sample of a CDM Explanation of Benefit for a pharmacy claim"

* meta.source  = "http://acme-health.com/WellnessCenterPharmacy"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-explanation-of-benefit-for-analytics"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzzx2"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessCenterPharmacy"
* meta.extension[processRecordId].valueIdentifier.value   = "7209_07869_e00080779_3938586_2516181_x2"

* identifier.use                = #official
* identifier.type               = IdentifierTypeCodeSystem#SSRI
* identifier.system             = "http://acme-health.com/CodeSystem/local-eob-identifier"
* identifier.value              = "000000000000000000019721078x2"
* identifier.assigner.display   = "Acme Health - Wellness Center Pharmacy"

* extension[snapshotAgeInYears].valueUnsignedInt   = 27
* status   = #active

* type.coding[0]   = PayerClaimTypeCodeSystem#pharmacy
* type.coding[1]   = http://acme-health.com/CodeSystem/local-claim-type#Pharmacy

* use      = #claim
* patient  = Reference(CDMPatientInstance)
* created  = "2017-07-25T17:31:00-05:00"
* insurer.type = RESOURCE-TYPE#Organization
* insurer.identifier.system = "http://acme-health.com/payer1/payer"
* insurer.identifier.value  = "Payer1"
* outcome  = #complete
* provider = Reference(DrKelly)
* priority = PROCESS-PRIORITY#normal

* insurance.focal             = true
* insurance.coverage          = Reference(PrimaryPayerExample)

* careTeam.sequence  = 1
* careTeam.role      = ClaimCareTeamRoleCodeSystem#ordering
* careTeam.provider  = Reference(DrKelly)

* supportingInfo[0].sequence             = 1

* supportingInfo[0].category             = ClaimSupportingInfoCategoryCodeSystem#dayssupply
* supportingInfo[0].valueQuantity.value  = 28

* supportingInfo[1].sequence             = 2
* supportingInfo[1].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[1].code                 = NCPDPDispenseAsWrittenCodeSystem#0 "0"

* supportingInfo[2].sequence             = 3
* supportingInfo[2].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[2].code                 = ClaimSupportingInfoTypeCodeSystem#refill-number
* supportingInfo[2].valueQuantity.value  = 1

* supportingInfo[3].sequence             = 4
* supportingInfo[3].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[3].code                 = RxMailOrRetailCodeSystem#r

* item.sequence            = 1
* item.careTeamSequence    = 1
* item.productOrService    = NdcNoHyphensCodeSystem#69452015120
* item.servicedDate        = "2017-06-18"
* item.locationCodeableConcept[0]                 = CMS-PLACE-OF-SERVICE#01 "Pharmacy"
* item.locationCodeableConcept.coding[1].system   = "http://acme-health.com/CodeSystem/local-place-of-service"
* item.locationCodeableConcept.coding[1].code     = #LocalPlcOfService
* item.quantity.value      = 4
* item.quantity.unit       = "metric"

* item.adjudication[0].category            = AdjudicationCategoryCodeSystem#coinsurance
* item.adjudication[0].amount.value        = 0.48
* item.adjudication[0].amount.currency     = CURRENCY#USD

* item.adjudication[1].category            = AdjudicationCategoryCodeSystem#copay
* item.adjudication[1].amount.value        = 0.00
* item.adjudication[1].amount.currency     = CURRENCY#USD

* item.adjudication[2].category            = AdjudicationCategoryCodeSystem#deductible
* item.adjudication[2].amount.value        = 0.00
* item.adjudication[2].amount.currency     = CURRENCY#USD

* item.adjudication[3].category            = AdjudicationCategoryCodeSystem#third-party
* item.adjudication[3].amount.value        = 0.00
* item.adjudication[3].amount.currency     = CURRENCY#USD

* item.adjudication[4].category            = AdjudicationCategoryCodeSystem#allowed
* item.adjudication[4].amount.value        = 1.59
* item.adjudication[4].amount.currency     = CURRENCY#USD

* item.adjudication[5].category            = AdjudicationCategoryCodeSystem#net-payment
* item.adjudication[5].amount.value        = 1.11
* item.adjudication[5].amount.currency     = CURRENCY#USD

* item.extension[capitatedServiceIndicator].valueString          = "N"
* item.extension[averageWholesalePrice].valueMoney.value         = 2.88
* item.extension[averageWholesalePrice].valueMoney.currency      = CURRENCY#USD

* item.detail[0].sequence                                                      = 1
* item.detail[0].productOrService                                              = NdcNoHyphensCodeSystem#69452015120
* item.detail[0].extension[claimItemDetailClassification].valueCodeableConcept = ClaimItemDetailClassificationCodeSystem#dispensing-fee
* item.detail[0].unitPrice.value                                               = 0.45
* item.detail[0].unitPrice.currency                                            = CURRENCY#USD

* item.detail[1].sequence                                                      = 2
* item.detail[1].productOrService                                              = NdcNoHyphensCodeSystem#69452015120
* item.detail[1].extension[claimItemDetailClassification].valueCodeableConcept = ClaimItemDetailClassificationCodeSystem#ingredient-cost
* item.detail[1].unitPrice.value                                               = 1.14
* item.detail[1].unitPrice.currency                                            = CURRENCY#USD

* item.detail[2].sequence                                                      = 3
* item.detail[2].productOrService                                              = NdcNoHyphensCodeSystem#69452015120
* item.detail[2].extension[claimItemDetailClassification].valueCodeableConcept = ClaimItemDetailClassificationCodeSystem#sales-tax
* item.detail[2].unitPrice.value                                               = 0.00
* item.detail[2].unitPrice.currency                                            = CURRENCY#USD

* adjudication.category          = PaidInNetworkIndicatorCodeSystem#in-network
