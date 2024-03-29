Instance:       CDMExplanationOfBenefitProfessionalInstance
InstanceOf:     CDMExplanationOfBenefit
Usage:          #example
Title:          "CDM Explanation of Benefit - Professional Example"
Description:    "Sample of a CDM Explanation of Benefit for a profession claim"

* meta.source = "http://acme-health.com/WellnessMedicalCenter"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-explanation-of-benefit"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessMedicalCenter"
* meta.extension[processRecordId].valueIdentifier.value  = "7209_07869_e00080779_3938586_2516181"

* identifier.use              = #official
* identifier.type             = IdentifierTypeCodeSystem#SSRI
* identifier.system           = "http://acme-health.com/CodeSystem/local-eob-identifier"
* identifier.value            = "000000000000000000019721078"
* identifier.assigner.display = "Acme Health - Wellness Medical Center"

* status                   = #active

* type.coding.system    = "http://acme-health.com/CodeSystem/local-claim-type"
* type.coding.code      = #MedicalClaimType

* use      = #claim
* patient  = Reference(CDMPatientInstance)
* created  = "2017-07-25T17:31:00-05:00"
* insurer.type = RESOURCE-TYPE#Organization
* insurer.identifier.system = "http://acme-health.com/payer1/payer"
* insurer.identifier.value  = "Payer1"
* outcome  = #complete
* provider  = Reference(DrKelly)

// servicing provider
* careTeam.sequence  = 1
* careTeam.provider  = Reference(DrKelly)
* careTeam.role      = ClaimCareTeamRoleCodeSystem#servicing

* insurance.focal             = true
* insurance.coverage          = Reference(PrimaryPayerExample)

* supportingInfo.sequence             = 1
* supportingInfo.category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo.code                 = ClaimSupportingInfoTypeCodeSystem#network-provider-indicator
* supportingInfo.valueString          = "Y"

* diagnosis.sequence                  = 1
* diagnosis.diagnosisCodeableConcept  = ICD10#Z00.00 "Encntr for general adult medical exam w/o abnormal findings"
* diagnosis.type                      = DIAGNOSIS-TYPE#discharge

* item.sequence                                  = 1
* item.careTeamSequence                          = 1
* item.productOrService.coding                   = HCPCS#G0438
* item.productOrService.text                     = "Annual wellness visit; includes a personalized prevention plan of service (pps), initial visit"
* item.servicedPeriod.start                      = "2017-06-20"
* item.servicedPeriod.end                        = "2017-06-20"
* item.locationCodeableConcept[0]                = CMS-PLACE-OF-SERVICE#11 "Office" 
* item.locationCodeableConcept.coding[1].system  = "http://acme-health.com/CodeSystem/local-place-of-service"
* item.locationCodeableConcept.coding[1].code    = #LocalPlcOfService
* item.quantity.value                            = 1.00
* item.quantity.extension[localNumberOfUnitsPerService].valueQuantity.value = 1.00

* item.adjudication[0].category            = AdjudicationCategoryCodeSystem#coinsurance
* item.adjudication[0].amount.value        = 0.00
* item.adjudication[0].amount.currency     = CURRENCY#USD
* item.adjudication[1].category            = AdjudicationCategoryCodeSystem#copay
* item.adjudication[1].amount.value        = 25.00
* item.adjudication[1].amount.currency     = CURRENCY#USD
* item.adjudication[2].category            = AdjudicationCategoryCodeSystem#deductible
* item.adjudication[2].amount.value        = 0.00
* item.adjudication[2].amount.currency     = CURRENCY#USD
* item.adjudication[3].category            = AdjudicationCategoryCodeSystem#third-party
* item.adjudication[3].amount.value        = 0.00
* item.adjudication[3].amount.currency     = CURRENCY#USD
* item.adjudication[4].category            = AdjudicationCategoryCodeSystem#allowed
* item.adjudication[4].amount.value        = 125.0
* item.adjudication[4].amount.currency     = CURRENCY#USD
* item.adjudication[5].category            = AdjudicationCategoryCodeSystem#submitted
* item.adjudication[5].amount.value        = 165.00
* item.adjudication[5].amount.currency     = CURRENCY#USD
* item.adjudication[6].category            = AdjudicationCategoryCodeSystem#net-payment
* item.adjudication[6].amount.value        = 100.00
* item.adjudication[6].amount.currency     = CURRENCY#USD
* item.adjudication[7].category            = AdjudicationCategoryCodeSystem#discount
* item.adjudication[7].amount.value        = 40.00
* item.adjudication[7].amount.currency     = CURRENCY#USD

* adjudication.category          = PaidInNetworkIndicatorCodeSystem#in-network

* payment.date                   = "2017-07-20"
* payment.type                   = PAYMENT-TYPE#complete
* payment.amount.value           = 100.00
