Instance:       CDMClaimFacilityInstance
InstanceOf:     CDMClaimFacility
Usage:          #example
Title:          "CDM Claim - Facility Example"
Description:    "Sample of a CDM Facility Claim"

* meta.source  = "http://acme-health.com/WellnessMedicalFacility"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-claim-facility"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessMedicalFacility"
* meta.extension[processRecordId].valueIdentifier.value   = "7209_07869_e00080779_3938586_2516181"
* meta.extension[sourceFileId].valueString     = "e00030779"

* identifier[0].use                = #official
* identifier[0].type               = IdentifierTypeCodeSystem#SSRI
* identifier[0].system             = "http://acme-health.com/CodeSystem/local-claim-identifier"
* identifier[0].value              = "000000000000000000019721078"
* identifier[0].assigner.display   = "Acme Health - Wellness Medical Facility"

* identifier[1].use                = #secondary
* identifier[1].type               = IdentifierTypeCodeSystem#SSRI
* identifier[1].system             = "http://acme-health.com/CodeSystem/local-authorization-identifier"
* identifier[1].value              = "99999999999"
* identifier[1].assigner.display   = "Acme Health - Wellness Medical Facility Corporate Office"

* status   = #active

* type.coding[0]   = PayerClaimTypeCodeSystem#medical
* type.coding[1]   = http://acme-health.com/CodeSystem/local-claim-type#Medical

* use      = #claim
* patient  = Reference(CDMPatientInstance)
* created  = "2017-07-25T17:31:00-05:00"
* provider = Reference(Provider1)
* priority = PROCESS-PRIORITY#normal
* billablePeriod.start = "2017-06-02"
* billablePeriod.end   = "2017-06-02"

* careTeam[0].sequence  = 1
* careTeam[0].provider  = Reference(DrKelly)
* careTeam[0].role      = ClaimCareTeamRoleCodeSystem#ordering

* careTeam[1].sequence  = 2
* careTeam[1].provider  = Reference(DrSmith)
* careTeam[1].role      = ClaimCareTeamRoleCodeSystem#admitting

* careTeam[2].sequence  = 3
* careTeam[2].provider  = Reference(DrKelly)
* careTeam[2].role      = ClaimCareTeamRoleCodeSystem#attending

* careTeam[3].sequence  = 4
* careTeam[3].provider  = Reference(Provider1)
* careTeam[3].role      = ClaimCareTeamRoleCodeSystem#servicing
* careTeam[3].qualification.coding.system = "http://acme-health.com/CodeSystem/local-specialty"
* careTeam[3].qualification.coding.code   = #01

* accident.type.coding        = PayerIndicatorsCodeSystem#N
* accident.date               = "1900-01-01"

* subType.coding              = ClaimSubtypeCodeSystem#emergency

* insurance.sequence          = 1
* insurance.focal             = true
* insurance.identifier.system = "http://acme-health.com/INSZZZ"
* insurance.identifier.value  = "PPOB"
* insurance.coverage          = Reference(PrimaryPayerExample)
* insurance.extension[crossoverIndicator].valueString          = "N"
* insurance.extension[priorAuthorizationIndicator].valueString = "Y"
* insurance.preAuthRef        = "PreAuth12345"

* supportingInfo[0].sequence             = 1
* supportingInfo[0].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[0].code                 = ClaimSupportingInfoTypeCodeSystem#capitated-service-indicator
* supportingInfo[0].valueString          = "N"

* supportingInfo[1].sequence             = 2
* supportingInfo[1].category             = CLAIM-INFORMATION-CATEGORY#other
* supportingInfo[1].code                 = ErOrObservationRoomServiceCodeSystem#1

* supportingInfo[2].sequence             = 3
* supportingInfo[2].category             = CLAIM-INFORMATION-CATEGORY#hospitalized
* supportingInfo[2].timingPeriod.start   = "2017-06-02"
* supportingInfo[2].timingPeriod.end     = "2017-06-02"

* supportingInfo[3].sequence             = 4
* supportingInfo[3].category             = CLAIM-INFORMATION-CATEGORY#hospitalized
* supportingInfo[3].code                 = Ub04AdmitTypeCodeSystem#1

* supportingInfo[4].sequence             = 5
* supportingInfo[4].category             = CLAIM-INFORMATION-CATEGORY#hospitalized
* supportingInfo[4].code                 = Ub04AdmitBillTypeCodeSystem#0151

* supportingInfo[5].sequence              = 6 
* supportingInfo[5].category              = CLAIM-INFORMATION-CATEGORY#hospitalized
* supportingInfo[5].code                  = ClaimSupportingInfoTypeCodeSystem#days-count
* supportingInfo[5].valueQuantity.system  = UCUM-UNIT
* supportingInfo[5].valueQuantity.unit    = "/d"
* supportingInfo[5].valueQuantity.value   = 3

* supportingInfo[6].sequence             = 7
* supportingInfo[6].category             = CLAIM-INFORMATION-CATEGORY#discharge
* supportingInfo[6].code                 = NUBC-PATIENT-DISCHARGE#11

* supportingInfo[7].sequence             = 8
* supportingInfo[7].category             = CLAIM-INFORMATION-CATEGORY#other
* supportingInfo[7].code                 = RoomAndBoardServiceCodeSystem#1

* supportingInfo[8].sequence             = 9
* supportingInfo[8].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[8].code                 = ClaimSupportingInfoTypeCodeSystem#network-provider-indicator
* supportingInfo[8].valueString          = "Y"

* supportingInfo[9].sequence             = 10
* supportingInfo[9].category             = CLAIM-INFORMATION-CATEGORY#hospitalized
* supportingInfo[9].code                 = ClaimSupportingInfoTypeCodeSystem#admission-hour
* supportingInfo[9].valueString          = "07"

* supportingInfo[10].sequence              = 11
* supportingInfo[10].category              = CLAIM-INFORMATION-CATEGORY#hospitalized
* supportingInfo[10].code                  = ClaimSupportingInfoTypeCodeSystem#days-count
* supportingInfo[10].valueQuantity.system  = UCUM-UNIT
* supportingInfo[10].valueQuantity.unit    = "/d"
* supportingInfo[10].valueQuantity.value   = 3

* supportingInfo[11].sequence              = 12
* supportingInfo[11].category              = CLAIM-INFORMATION-CATEGORY#hospitalized
* supportingInfo[11].code                  = ClaimSupportingInfoTypeCodeSystem#days-not-covered
* supportingInfo[11].valueQuantity.system  = UCUM-UNIT
* supportingInfo[11].valueQuantity.unit    = "/d"
* supportingInfo[11].valueQuantity.value   = 1

* supportingInfo[12].sequence              = 13
* supportingInfo[12].category              = CLAIM-INFORMATION-CATEGORY#hospitalized
* supportingInfo[12].code                  = ClaimSupportingInfoTypeCodeSystem#days-long-term-care-recipient-on-leave
* supportingInfo[12].valueQuantity.system  = UCUM-UNIT
* supportingInfo[12].valueQuantity.unit    = "/d"
* supportingInfo[12].valueQuantity.value   = 0

* supportingInfo[13].sequence              = 14
* supportingInfo[13].category              = CLAIM-INFORMATION-CATEGORY#hospitalized
* supportingInfo[13].code                  = ClaimSupportingInfoTypeCodeSystem#newborn-length-of-stay
* supportingInfo[13].valueQuantity.system  = UCUM-UNIT
* supportingInfo[13].valueQuantity.unit    = "/d"
* supportingInfo[13].valueQuantity.value   = 0

* supportingInfo[14].sequence              = 15
* supportingInfo[14].category              = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[14].code                  = NUBC-OCCURRENCE-CODE-CS#11
* supportingInfo[14].timingPeriod.start    = "2017-06-02"
* supportingInfo[14].timingPeriod.end      = "2017-06-02"

* supportingInfo[15].sequence             = 16
* supportingInfo[15].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[15].code                 = ClaimSupportingInfoTypeCodeSystem#acquired-condition-indicator

* supportingInfo[16].sequence             = 17
* supportingInfo[16].category             = CLAIM-INFORMATION-CATEGORY#hospitalized
* supportingInfo[16].code                 = ClaimSupportingInfoTypeCodeSystem#discharge-hour
* supportingInfo[16].valueString          = "22"

* referral = Reference(CDMServiceRequestInstance)

* insurance.sequence          = 1
* insurance.focal             = true
* insurance.identifier.system = "http://acme-health.com/BCBS"
* insurance.identifier.value  = "PPOB"
* insurance.coverage          = Reference(CoverageExample)

* extension[admitCount].valueInteger                       = 1
* extension[aggregateClaimIndicator].valueString           = "N"
* extension[claimCategory].valueCodeableConcept            = CLAIM-STATUS-CATEGORY#F0
* extension[claimStatus].valueCodeableConcept              = CLAIM-STATUS#F0
* extension[claimSnapshotProviderName].valueString         = "Dr Smith"
* extension[claimSnapshotProviderZipCode].valueString      = "79912"
* extension[employer].valueCodeableConcept                 = http://acme-health.com/CodeSystem/local-employer-code#EmployerCode
* extension[employeeBusinessUnit].valueCodeableConcept     = http://acme-health.com/CodeSystem/local-employee-business-unit#EmpBusUnit
* extension[financialSystem].valueCodeableConcept          = http://acme-health.com/CodeSystem/local-financial-system#LocFinanceSys
* extension[lastClaimIndicator].valueString                = "Y"
* extension[participatingPlan].valueCodeableConcept        = http://acme-health.com/CodeSystem/local-participating-plan#LocParticipatingPlan
* extension[referralIndicator].valueString                 = "N"
* extension[snapshotAgeInYears].valueUnsignedInt           = 20
* extension[submissionType].valueCodeableConcept           = http://acme-health.com/CodeSystem/local-submission-type#SubmitType
* extension[payerPcpResponsibilityIndicator].valueString = "N"

* item.sequence                           = 1
* item.careTeamSequence                   = 2
* item.servicedDate                       = "2017-06-02"
* item.locationCodeableConcept.coding[0]  = CMS-PLACE-OF-SERVICE#11 "Office" 
* item.locationCodeableConcept.coding[1]  = http://acme-health.com/CodeSystem/local-place-of-service#LocalPlcOfService
* item.productOrService.coding[0]         = CPT#20200 "superficial muscle biopsy"
* item.productOrService.coding[1]         = http://acme-health.com/CodeSystem/local-service-type#LocalServiceType
* item.modifier                           = ProcedureModifierCodeSystem#AG
* item.quantity.value                     = 3
* item.quantity.extension[localNumberOfUnitsPerService].valueQuantity.value = 5.00
* item.revenue                            = NUBC-REVENUE-CODE#0450 "Emergency Room"

* item.extension[capitatedServiceIndicator].valueString   = "N"
* item.extension[fullyInsuredIndicator].valueString       = "Y"
* item.extension[nursingHomeIndicator].valueString        = "N"
* item.extension[serviceBillDaysCount].valueUnsignedInt   = 20

* diagnosis[0].sequence                  = 1
* diagnosis[0].diagnosisCodeableConcept  = ICD10#R51 "Headache"
* diagnosis[0].type                      = DIAGNOSIS-TYPE#principal
* diagnosis[0].onAdmission               = DiagnosisPresentOnAdmissionCodeSystem#Y
* diagnosis[0].packageCode               = MSDRG#102

* diagnosis[1].sequence                  = 2
* diagnosis[1].diagnosisCodeableConcept  = ICD10#G43.909 "Migraine, Unspecified, not Intractable, without Status Migrainosus"
* diagnosis[1].type                      = DIAGNOSIS-TYPE#discharge
* diagnosis[1].onAdmission               = DiagnosisPresentOnAdmissionCodeSystem#N

* diagnosis[2].sequence                  = 3
* diagnosis[2].diagnosisCodeableConcept  = ICD10#G43.9 "Migraine, unspecified"
* diagnosis[2].type                      = DIAGNOSIS-TYPE#admitting

* diagnosis[3].sequence                  = 4
* diagnosis[3].diagnosisCodeableConcept  = ICD10#W11.XXXA "Fall on and from ladder, initial encounter"
* diagnosis[3].type                      = DiagnosisTypeCodeSystem#external-cause

* procedure[0].sequence                  = 1
* procedure[0].procedureCodeableConcept	 = CPT#95958 "Special EEG Tests"
* procedure[0].type                      = ProcedureTypeCodeSystem#surgical

* procedure[1].sequence                  = 2
* procedure[1].procedureCodeableConcept	 = CPT#86891 "Autologous blood or component, collection processing and storage"
* procedure[1].type                      = ProcedureTypeCodeSystem#surgical
