Instance:       CDMClaimProfessionalInstance
InstanceOf:     CDMClaim
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

* type.coding[0]   = WhPayerClaimTypeCodeSystem#medical
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
* careTeam[1].provider  = Reference(Payer1)
* careTeam[1].role      = ClaimCareTeamRoleCodeSystem#servicing
* careTeam[1].qualification.coding.system = "http://acme-health.com/CodeSystem/local-specialty"
* careTeam[1].qualification.coding.code   = #01

* insurance.sequence          = 1
* insurance.focal             = true
* insurance.identifier.system = "http://acme-health.com/INSABC"
* insurance.identifier.value  = "PPOB"
* insurance.coverage          = Reference(PrimaryPayerExample)
* insurance[0].extension[crossoverIndicator].valueString          = "N"
* insurance[0].extension[priorAuthorizationIndicator].valueString = "Y"

* accident.type.coding        = WhPayerIndicatorsCodeSystem#N
* accident.date               = "2017-06-25"

* subType.coding              = ClaimSubtypeCodeSystem#emergency

* item[0].sequence                                  = 1
* item[0].productOrService.coding[0]                = CPT#68840
* item[0].productOrService.coding[1]                = http://acme-health.com/CodeSystem/local-service-type#LocalServiceType
* item[0].servicedPeriod.start                      = "2017-06-25"
* item[0].servicedPeriod.end                        = "2017-06-25"
* item[0].locationCodeableConcept.coding[0]         = CMS-PLACE-OF-SERVICE#11 "Office" 
* item[0].locationCodeableConcept.coding[1]         = http://acme-health.com/CodeSystem/local-place-of-service#LocalPlcOfService
* item[0].quantity.value                            = 1.00
* item[0].quantity.extension[localNumberOfUnitsPerService].valueQuantity.value = 1.00
* item[0].modifier.coding[0]                        = ProcedureModifierCodeSystem#A1
* item[0].bodySite.coding[0]                        = ADAToothCodeSystem#1
* item[0].bodySite.coding[1]                        = ADAToothQuadrantCodeSystem#UR
* item[0].subSite[0].coding                         = http://acme-health.com/CodeSystem/local-tooth-surface#LocalToothSurface1
* item[0].subSite[1].coding                         = http://acme-health.com/CodeSystem/local-tooth-surface#LocalToothSurface2

* item[0].extension[capitatedServiceIndicator].valueString   = "N"
* item[0].extension[fullyInsuredIndicator].valueString       = "Y"
* item[0].extension[nursingHomeIndicator].valueString        = "N"
* item[0].extension[serviceBillDaysCount].valueUnsignedInt   = 20

* supportingInfo[0].sequence             = 1
* supportingInfo[0].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[0].code                 = ClaimSupportingInfoTypeCodeSystem#network-provider-indicator
* supportingInfo[0].valueString          = "Y"

* extension[aggregateClaimIndicator].valueString           = "N"
* extension[claimSnapshotProviderName].valueString         = "Dr Smith"
* extension[claimSnapshotProviderZipCode].valueString      = "79912"
* extension[employeeBusinessUnit].valueCodeableConcept     = http://acme-health.com/CodeSystem/local-employee-business-unit#EmpBusUnit1
* extension[employer].valueCodeableConcept                 = http://acme-health.com/CodeSystem/local-employer-code#EmployerCode1
* extension[financialSystem].valueCodeableConcept          = http://acme-health.com/CodeSystem/local-financial-system#FinanceSys1
* extension[claimCategory].valueCodeableConcept            = CLAIM-STATUS-CATEGORY#F1
* extension[claimStatus].valueCodeableConcept              = CLAIM-STATUS#F1
* extension[lastClaimIndicator].valueString                = "Y"
* extension[participatingPlan].valueCodeableConcept        = http://acme-health.com/CodeSystem/local-participating-plan#LocParticipatingPlan
* extension[referralIndicator].valueString                 = "N"
* extension[submissionType].valueCodeableConcept           = http://acme-health.com/CodeSystem/local-submission-type#SubmitType1
* extension[whPayerPcpResponsibilityIndicator].valueString = "Y"

* referral = Reference(CDMServiceRequestInstance)

* diagnosis[0].sequence                  = 1
* diagnosis[0].diagnosisCodeableConcept  = ICD10#G43.909 "Migraine, Unspecified, not Intractable, without Status Migrainosus"
* diagnosis[0].type                      = DIAGNOSIS-TYPE#principal

* diagnosis[1].sequence                  = 2
* diagnosis[1].diagnosisCodeableConcept  = ICD10#G44.84 "Primary exertional headache"
* diagnosis[1].type                      = DIAGNOSIS-TYPE#discharge
