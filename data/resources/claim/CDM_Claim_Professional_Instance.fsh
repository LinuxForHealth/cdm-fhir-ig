Instance:       CDMClaimProfessionalInstance
InstanceOf:     CDMClaimProfessional
Usage:          #example
Title:          "CDM Claim - Professional Example"
Description:    "Sample of a CDM Professional Claim"

* meta.source  = "http://acme-health.com/WellnessMedicalCenter"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-claim"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessMedicalCenter"
* meta.extension[processRecordId].valueIdentifier.value   = "7209_07869_e00080779_3938586_2516181"
* meta.extension[sourceFileId].valueString     = "e00080779"

* identifier[0].use                = #official
* identifier[0].type               = IdentifierTypeCodeSystem#SSRI
* identifier[0].system             = "http://acme-health.com/CodeSystem/local-claim-identifier"
* identifier[0].value              = "000000000000000000019721078"
* identifier[0].assigner.display   = "Acme Health - Wellness Medical Center"

* extension[snapshotAgeInYears].valueUnsignedInt   = 20
* status   = #active

* type.coding[0]   = WhPayerClaimTypeCodeSystem#medical
* type.coding[1]   = http://acme-health.com/CodeSystem/local-claim-type#Medical

* use      = #claim
* patient  = Reference(CDMPatientInstance)
* created  = "2017-07-25T17:31:00-05:00"
* provider = Reference(DrKelly)
* priority = PROCESS-PRIORITY#normal

// ordering provider
* careTeam[0].sequence  = 1
* careTeam[0].provider  = Reference(DrKelly)
* careTeam[0].role      = ClaimCareTeamRoleCodeSystem#ordering

// servicing provider
* careTeam[1].sequence  = 6
* careTeam[1].provider  = Reference(DrKelly)
* careTeam[1].role      = ClaimCareTeamRoleCodeSystem#servicing

* insurance.sequence          = 1
* insurance.focal             = true
* insurance.identifier.system = "http://acme-health.com/INSABC"
* insurance.identifier.value  = "PPOB"
* insurance.coverage          = Reference(PrimaryPayerExample)

* item[0].sequence                                  = 1
* item[0].productOrService.coding[0]                = ICD10#Z00.00
* item[0].productOrService.coding[1]                = NdcNoHyphensCodeSystem#69452015120
* item[0].servicedPeriod.start                      = "2017-06-20"
* item[0].servicedPeriod.end                        = "2017-06-20"
* item[0].locationCodeableConcept[0]                = CMS-PLACE-OF-SERVICE#11 "Office" 
* item[0].locationCodeableConcept.coding[1].system  = "http://acme-health.com/CodeSystem/local-place-of-service"
* item[0].locationCodeableConcept.coding[1].code    = #LocalPlcOfService
* item[0].quantity.value                            = 1.00
* item[0].quantity.extension[localNumberOfUnitsPerService].valueQuantity.value = 1.00
* item[0].extension[capitatedServiceIndicator].valueString                     = "N"

* supportingInfo[0].sequence             = 1
* supportingInfo[0].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[0].code                 = ClaimSupportingInfoTypeCodeSystem#network-provider-indicator
* supportingInfo[0].valueString          = "Y"

* extension[claimSnapshotProviderName].valueString         = "Dr D. Kelly, MD"
* extension[claimSnapshotProviderZipCode].valueString      = "75014"
* extension[referralIndicator].valueString                 = "N"
* extension[employeeBusinessUnit].valueCodeableConcept     = http://acme-health.com/CodeSystem/local-employee-business-unit#EmpBusUnit1
* extension[whPayerPcpResponsibilityIndicator].valueString = "Y"

* referral = Reference(CDMServiceRequestInstance)

* diagnosis[0].sequence                  = 1
* diagnosis[0].diagnosisCodeableConcept  = ICD10#G43.909 "Migraine, Unspecified, not Intractable, without Status Migrainosus"
* diagnosis[0].type                      = DIAGNOSIS-TYPE#principal

* diagnosis[1].sequence                  = 2
* diagnosis[1].diagnosisCodeableConcept  = ICD10#G44.84 "Primary exertional headache"
* diagnosis[1].type                      = DIAGNOSIS-TYPE#discharge
