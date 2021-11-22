Instance:       CDMClaimDrugInstance
InstanceOf:     CDMClaimDrug
Usage:          #example
Title:          "CDM Claim - Drug Example"
Description:    "Sample of a CDM Drug Claim"

* meta.source  = "http://acme-health.com/WellnessCenterPharmacy"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-claim-drug"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessCenterPharmacy"
* meta.extension[processRecordId].valueIdentifier.value   = "7209_07869_e00080779_3938586_2516181"
* meta.extension[sourceFileId].valueString     = "e00080779"

* identifier[0].use                = #official
* identifier[0].type               = IdentifierTypeCodeSystem#RXN
* identifier[0].system             = "http://acme-health.com/CodeSystem/local-claim-identifier"
* identifier[0].value              = "00000000000000000001921078"
* identifier[0].assigner.display   = "Acme Health - Wellness Center Pharmacy"

* extension[snapshotAgeInYears].valueUnsignedInt   = 20
* status   = #active

* type.coding[0]   = WhPayerClaimTypeCodeSystem#pharmacy
* type.coding[1]   = http://acme-health.com/CodeSystem/local-claim-type#Pharmacy

* use      = #claim
* patient  = Reference(CDMPatientInstance)
* created  = "2017-07-25T17:31:00-05:00"
* provider = Reference(Provider1)
* priority = PROCESS-PRIORITY#normal
* prescription =  Reference(MedicationRequestDrugExample)

* careTeam[0].sequence  = 1
* careTeam[0].role      = ClaimCareTeamRoleCodeSystem#ordering
* careTeam[0].provider  = Reference(DrKelly)

// Mapping has this as index 5, but for example purposes we'll use 1
* careTeam[1].sequence                    = 2
* careTeam[1].role                        = ClaimCareTeamRoleCodeSystem#servicing
* careTeam[1].provider                    = Reference(Payer1)
* careTeam[1].qualification.coding.system = "http://acme-health.com/CodeSystem/local-specialty"
* careTeam[1].qualification.coding.code   = #01

* supportingInfo[0].sequence             = 1
* supportingInfo[0].category             = ClaimSupportingInfoCategoryCodeSystem#dayssupply 
* supportingInfo[0].valueQuantity.value  = 30

* supportingInfo[1].sequence             = 2
* supportingInfo[1].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[1].code                 = ClaimSupportingInfoTypeCodeSystem#network-provider-indicator
* supportingInfo[1].valueString          = "Y"

* supportingInfo[2].sequence             = 3
* supportingInfo[2].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[2].code                 = NCPDPDispenseAsWrittenCodeSystem#8 "8"

* supportingInfo[3].sequence             = 4
* supportingInfo[3].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[3].code                 = ClaimSupportingInfoTypeCodeSystem#refill-number
* supportingInfo[3].valueQuantity.value  = 4

* supportingInfo[4].sequence             = 5
* supportingInfo[4].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[4].code                 = RxMailOrRetailCodeSystem#r

* supportingInfo[5].sequence              = 6
* supportingInfo[5].category              = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[5].code                  = ClaimSupportingInfoTypeCodeSystem#compound-indicator
* supportingInfo[5].valueString           = "N"

* supportingInfo[6].sequence              = 7
* supportingInfo[6].category              = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[6].code.coding.system    = "http://acme-health.com/CodeSystem/local-dispensing-status"
* supportingInfo[6].code.coding.display   = "Local dispensing status"
* supportingInfo[6].code.coding.code      = #LocalDispenseStatus
* supportingInfo[6].valueString           = "N"

* supportingInfo[7].sequence              = 8
* supportingInfo[7].category              = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[7].code.coding.system    = "http://acme-health.com/CodeSystem/local-rx-rebate"
* supportingInfo[7].code.coding.display   = "Local RX rebate"
* supportingInfo[7].code.coding.code      = #LocalRxRebate
* supportingInfo[7].valueString           = "Generic"

* insurance.sequence          = 1
* insurance.focal             = true
* insurance.identifier.system = "http://acme-health.com/insurer"
* insurance.identifier.value  = "PPOB"
* insurance.coverage          = Reference(CoverageDrugExample)
* insurance.extension[crossoverIndicator].valueString   = "N"
* insurance.extension[lineOfBusiness].valueCodeableConcept = http://acme-health.com/CodeSystem/local-line-of-business#LocalLineOfBusiness

* item[0].sequence            = 1
* item[0].productOrService.coding[0]        = NdcNoHyphensCodeSystem#69452015120
* item[0].productOrService.coding[1]        = http://acme-health.com/CodeSystem/local-service-type#LocServiceType
* item[0].servicedDate                      = "2017-06-18"
* item[0].locationCodeableConcept.coding[0] = CMS-PLACE-OF-SERVICE#01 "Pharmacy"
* item[0].locationCodeableConcept.coding[1] = http://acme-health.com/CodeSystem/local-place-of-service#LocalPlcOfService
* item[0].quantity.value                    = 30.00
* item[0].net.value                         = 18.86
* item[0].extension[averageWholesalePrice].valueMoney.value    = 2.88
* item[0].extension[averageWholesalePrice].valueMoney.currency = CURRENCY#USD
* item[0].extension[compoundCode].valueCodeableConcept      = http://acme-health.com/CodeSystem/local-compound-code#CompoundCd1
* item[0].extension[capitatedServiceIndicator].valueString  = "N"
* item[0].extension[fullyInsuredIndicator].valueString      = "Y"
* item[0].extension[nursingHomeIndicator].valueString       = "N"

* item[0].detail[0].sequence         = 1
* item[0].detail[0].productOrService = NdcNoHyphensCodeSystem#69452015120
* item[0].detail[0].extension[ClaimItemDetailClassification].valueCodeableConcept = ClaimItemDetailClassificationCodeSystem#dispensing-fee
* item[0].detail[0].unitPrice.value  = 2.00

* item[0].detail[1].sequence         = 2
* item[0].detail[1].productOrService = NdcNoHyphensCodeSystem#69452015120
* item[0].detail[1].extension[ClaimItemDetailClassification].valueCodeableConcept = ClaimItemDetailClassificationCodeSystem#ingredient-cost
* item[0].detail[1].unitPrice.value  = 3.00

* item[0].detail[2].sequence         = 3
* item[0].detail[2].productOrService = NdcNoHyphensCodeSystem#69452015120
* item[0].detail[2].extension[ClaimItemDetailClassification].valueCodeableConcept = ClaimItemDetailClassificationCodeSystem#sales-tax
* item[0].detail[2].unitPrice.value  = 1.00

* extension[aggregateClaimIndicator].valueString           = "N"
* extension[claimSnapshotProviderName].valueString         = "Dr Smith"
* extension[claimSnapshotProviderZipCode].valueString      = "79912"
* extension[companyCode].valueCodeableConcept              = http://acme-health.com/CodeSystem/local-company-code#LocCompanyCd
* extension[employeeBusinessUnit].valueCodeableConcept     = http://acme-health.com/CodeSystem/local-employee-business-unit#EmpBusUnit1
* extension[employer].valueCodeableConcept                 = http://acme-health.com/CodeSystem/local-employer-code#EmployerCode1
* extension[financialSystem].valueCodeableConcept          = http://acme-health.com/CodeSystem/local-financial-system#FinanceSys1
* extension[claimCategory].valueCodeableConcept            = CLAIM-STATUS-CATEGORY#F1
* extension[claimStatus].valueCodeableConcept              = CLAIM-STATUS#F1
* extension[lastClaimIndicator].valueString                = "Y"
* extension[rxCount].valueUnsignedInt                      = 1
* extension[submissionType].valueCodeableConcept           = http://acme-health.com/CodeSystem/local-submission-type#SubmitType1
* extension[whPayerPcpResponsibilityIndicator].valueString = "N"
