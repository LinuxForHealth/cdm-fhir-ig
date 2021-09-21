Instance:       CDMExplanationOfBenefitProfessionalInstance
InstanceOf:     CDMExplanationOfBenefit
Usage:          #example
Title:          "CDM Explanation of Benefit - Professional Example"
Description:    "Sample of a CDM Explanation of Benefit for a profession claim"

* meta.source = "http://acme-health.com/WellnessMedicalCenter"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-explanation-of-benefit"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessMedicalCenter"
* meta.extension[processRecordId].valueIdentifier.value  = "7209_07869_e00080779_3938586_2516181"


* identifier[0].use              = #official
* identifier[0].type             = IdentifierTypeCodeSystem#SSRI
* identifier[0].system           = "http://acme-health.com/CodeSystem/local-eob-identifier"
* identifier[0].value            = "000000000000000000019721078"
* identifier[0].assigner.display = "Acme Health - Wellness Medical Center"

* extension[snapshotAgeInYears].valueUnsignedInt   = 27

* status                   = #active

* type.coding[1].system    = "http://acme-health.com/CodeSystem/local-claim-type"
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

* diagnosis.sequence                  = 1
* diagnosis.diagnosisCodeableConcept  = ICD10#Z00.00 "Encntr for general adult medical exam w/o abnormal findings"
* diagnosis.type                      = DIAGNOSIS-TYPE#discharge

* item.sequence = 1
* item.productOrService.coding[0]                = HCPCS#G0438
* item.productOrService.text                     = "Annual wellness visit; includes a personalized prevention plan of service (pps), initial visit"
* item.servicedPeriod.start                      = "2017-06-20"
* item.servicedPeriod.end                        = "2017-06-20"
* item.locationCodeableConcept[0]                = CMS-PLACE-OF-SERVICE#11 "Office" 
* item.locationCodeableConcept.coding[1].system  = "http://acme-health.com/CodeSystem/local-place-of-service"
* item.locationCodeableConcept.coding[1].code    = #LocalPlcOfService
* item.quantity.value                            = 1.00
* item.quantity.extension[localNumberOfUnitsPerService].valueQuantity.value = 1.00
* item.extension[capitatedServiceIndicator].valueString                     = "N"

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
