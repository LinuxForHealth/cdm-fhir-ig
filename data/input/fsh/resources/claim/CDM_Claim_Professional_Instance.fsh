Instance:       CDMClaimProfessionalInstance
InstanceOf:     CDMClaim
Usage:          #example
Title:          "CDM Claim - Professional Example"
Description:    "Sample of a CDM Professional Claim"

* meta.source  = "http://acme-health.com/WellnessMedicalCenter"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-claim"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessMedicalCenter"
* meta.extension[processRecordId].valueIdentifier.value   = "7209_07869_e00080779_3938586_2516181"
* meta.extension[sourceFileId].valueString                = "e00080779"

* identifier[0].use                = #official
* identifier[0].type               = IdentifierTypeCodeSystem#SSRI
* identifier[0].system             = "http://acme-health.com/CodeSystem/local-claim-identifier"
* identifier[0].value              = "000000000000000000019721078"
* identifier[0].assigner.display   = "Acme Health - Wellness Medical Center"
* identifier[1].use                = #secondary
* identifier[1].type               = IdentifierTypeCodeSystem#SSRI
* identifier[1].system             = "http://acme-health.com/CodeSystem/local-authorization-identifier"
* identifier[1].value              = "000000000000000000099999999"

* extension[snapshotAgeInYears].valueUnsignedInt   = 20
* status   = #active

* type.coding[0]   = PayerClaimTypeCodeSystem#medical
* type.coding[1]   = http://acme-health.com/CodeSystem/local-claim-type#Medical

* use      = #claim
* patient  = Reference(CDMPatientInstance)
* created  = "2017-07-15T17:31:00-05:00"
* provider = Reference(Provider1)
* priority = PROCESS-PRIORITY#normal

// ordering provider
* careTeam[0].sequence  = 1
* careTeam[0].provider  = Reference(DrKelly)
* careTeam[0].role      = ClaimCareTeamRoleCodeSystem#ordering

// servicing provider
* careTeam[1].sequence  = 2
* careTeam[1].provider  = Reference(Provider1)
* careTeam[1].role      = ClaimCareTeamRoleCodeSystem#servicing
* careTeam[1].qualification.coding.system = "http://acme-health.com/CodeSystem/local-specialty"
* careTeam[1].qualification.coding.code   = #01

* insurance.sequence          = 1
* insurance.focal             = true
* insurance.identifier.system = "http://acme-health.com/INSABC"
* insurance.identifier.value  = "PPOB"
* insurance.coverage          = Reference(PrimaryPayerExample)
* insurance.preAuthRef        = "Y" 
* insurance.extension[crossoverIndicator].valueString          = "N"
* insurance.extension[lineOfBusiness].valueCodeableConcept     = http://acme-health.com/CodeSystem/local-line-of-business#LocalLineOfBusiness
* insurance.extension[priorAuthorizationIndicator].valueString = "Y"

* accident.type.coding        = PayerIndicatorsCodeSystem#N
* accident.date               = "2017-06-25"

* subType.coding              = ClaimSubtypeCodeSystem#emergency

* item.sequence                                  = 1
* item.careTeamSequence                          = 2
* item.productOrService.coding[0]                = HCPCS#G0438
* item.productOrService.text                     = "Annual wellness visit; includes a personalized prevention plan of service (pps), initial visit"
* item.productOrService.coding[1]                = http://acme-health.com/CodeSystem/local-service-type#LocalServiceType
* item.servicedPeriod.start                      = "2017-06-25"
* item.servicedPeriod.end                        = "2017-06-25"
* item.locationCodeableConcept.coding[0]         = CMS-PLACE-OF-SERVICE#11 "Office" 
* item.locationCodeableConcept.coding[1]         = http://acme-health.com/CodeSystem/local-place-of-service#LocalPlcOfService
* item.quantity.value                            = 1.00
* item.quantity.extension[localNumberOfUnitsPerService].valueQuantity.value = 1.00
* item.modifier.coding                           = ProcedureModifierCodeSystem#A1
* item.bodySite.coding[0]                        = ADAToothCodeSystem#1
* item.bodySite.coding[1]                        = ADAToothQuadrantCodeSystem#UR
* item.subSite[0].coding                         = http://acme-health.com/CodeSystem/local-tooth-surface#LocalToothSurface1
* item.subSite[1].coding                         = http://acme-health.com/CodeSystem/local-tooth-surface#LocalToothSurface2

* item.extension[capitatedServiceIndicator].valueString   = "N"
* item.extension[fullyInsuredIndicator].valueString       = "Y"
* item.extension[nursingHomeIndicator].valueString        = "N"
* item.extension[serviceBillDaysCount].valueUnsignedInt   = 20

* supportingInfo.sequence             = 1
* supportingInfo.category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo.code                 = ClaimSupportingInfoTypeCodeSystem#network-provider-indicator
* supportingInfo.valueString          = "Y"

* extension[aggregateClaimIndicator].valueString           = "N"
* extension[claimSnapshotProviderName].valueString         = "Dr Smith"
* extension[claimSnapshotProviderZipCode].valueString      = "79912"
* extension[employeeBusinessUnit].valueCodeableConcept     = http://acme-health.com/CodeSystem/local-employee-business-unit#EmpBusUnit
* extension[employer].valueCodeableConcept                 = http://acme-health.com/CodeSystem/local-employer-code#EmployerCode
* extension[financialSystem].valueCodeableConcept          = http://acme-health.com/CodeSystem/local-financial-system#FinanceSys
* extension[claimCategory].valueCodeableConcept            = CLAIM-STATUS-CATEGORY#F1
* extension[claimStatus].valueCodeableConcept              = CLAIM-STATUS#F1
* extension[lastClaimIndicator].valueString                = "Y"
* extension[participatingPlan].valueCodeableConcept        = http://acme-health.com/CodeSystem/local-participating-plan#LocalParticipatingPlan
* extension[referralIndicator].valueString                 = "N"
* extension[submissionType].valueCodeableConcept           = http://acme-health.com/CodeSystem/local-submission-type#SubmitType
* extension[payerPcpResponsibilityIndicator].valueString = "Y"

* referral = Reference(CDMServiceRequestInstance)

* diagnosis[0].sequence                  = 1
* diagnosis[0].diagnosisCodeableConcept  = ICD10#G43.909 "Migraine, Unspecified, not Intractable, without Status Migrainosus"
* diagnosis[0].type                      = DIAGNOSIS-TYPE#principal

* diagnosis[1].sequence                  = 2
* diagnosis[1].diagnosisCodeableConcept  = ICD10#Z00.00 "Encntr for general adult medical exam w/o abnormal findings"
* diagnosis[1].type                      = DIAGNOSIS-TYPE#discharge
