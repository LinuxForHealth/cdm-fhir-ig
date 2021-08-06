Instance:       CDMClaimFacilityInstance
InstanceOf:     CDMClaimFacility
Usage:          #example
Title:          "CDM Claim - Facility Example"
Description:    "Sample of a CDM Facility Claim"

* meta.source  = "http://acme-health.com/WellnessMedicalFacility"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-claim"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessMedicalFacility"
* meta.extension[processRecordId].valueIdentifier.value   = "7209_07869_e00080779_3938586_2516181"
* meta.extension[sourceFileId].valueString     = "e00030779"

* identifier[0].use                = #official
* identifier[0].type               = IdentifierTypeCodeSystem#SSRI
* identifier[0].system             = "http://acmehealth.com/CodeSystem/local-claim-identifier"
* identifier[0].value              = "000000000000000000019721078"
* identifier[0].assigner.display   = "Acme Health - Wellness Medical Facility"

* extension[SnapshotAgeInYears].valueUnsignedInt   = 20
* status   = #active

* type.coding[0]          = WhPayerClaimTypeCodeSystem#medical
* type.coding[1].system   = "http://acmehealth.com/CodeSystem/local-claim-type"
* type.coding[1].code     = #Medical

* use      = #claim
* patient  = Reference(CDMPatientInstance)
* created  = "2017-07-25T17:31:00-05:00"
* provider = Reference(DrKelly)
* priority = PROCESS-PRIORITY#normal
* billablePeriod.start = "2017-06-02"
* billablePeriod.end   = "2017-06-02"

* careTeam[0].sequence  = 1
* careTeam[0].provider  = Reference(DrKelly)
* careTeam[0].role      = ClaimCareTeamRoleCodeSystem#ordering

* supportingInfo[0].sequence             = 1
* supportingInfo[0].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[0].code                 = ClaimSupportingInfoTypeCodeSystem#capitated-service-indicator
* supportingInfo[0].valueString          = "N"

* supportingInfo[1].sequence             = 2
* supportingInfo[1].category             = CLAIM-INFORMATION-CATEGORY#other
* supportingInfo[1].code                 = ErOrObservationRoomServiceCodeSystem#1
* supportingInfo[1].valueString          = "N"

* supportingInfo[2].sequence             = 3
* supportingInfo[2].category             = CLAIM-INFORMATION-CATEGORY#hospitalized
// UB04 codes are licensed; need to discuss use with Content Governance
//* supportingInfo[2].code                 = Ub04AdmitSourceCodeSystem#7

* supportingInfo[3].sequence             = 4
* supportingInfo[3].category             = CLAIM-INFORMATION-CATEGORY#hospitalized
// UB04 codes are licensed; need to discuss use with Content Governance
//* supportingInfo[3].code                 = Ub04AdmitTypeCodeSystem#1

* supportingInfo[4].sequence             = 5
* supportingInfo[4].category             = CLAIM-INFORMATION-CATEGORY#hospitalized
// UB04 codes are licensed; need to discuss use with Content Governance
//* supportingInfo[4].code                 = Ub04AdmitBillTypeCodeSystem#1

* supportingInfo[5].sequence              = 6 
* supportingInfo[5].category              = CLAIM-INFORMATION-CATEGORY#hospitalized
* supportingInfo[5].code                  = ClaimSupportingInfoTypeCodeSystem#days-count
* supportingInfo[5].valueQuantity.system  = UCUM-UNIT
* supportingInfo[5].valueQuantity.unit    = "/d"
* supportingInfo[5].valueQuantity.value   = 3

* supportingInfo[6].sequence             = 8
* supportingInfo[6].category             = CLAIM-INFORMATION-CATEGORY#other
* supportingInfo[6].code                 = RoomAndBoardServiceCodeSystem#1

* supportingInfo[7].sequence             = 9
* supportingInfo[7].category             = CLAIM-INFORMATION-CATEGORY#info
* supportingInfo[7].code                 = ClaimSupportingInfoTypeCodeSystem#network-provider-indicator
* supportingInfo[7].valueString          = "N"

* insurance.sequence          = 1
* insurance.focal             = true
* insurance.identifier.system = "http://acme-health.com/BCBS"
* insurance.identifier.value  = "PPOB"
* insurance.coverage          = Reference(CoverageExample)

* extension[claimSnapshotProviderName].valueString         = "Dr D. Kelly, MD"
* extension[claimSnapshotProviderZipCode].valueString      = "75014"
* extension[employeeBusinessUnit].valueCodeableConcept     = http://acme-health.com/CodeSystem/local-employee-business-unit#EmpBusUnit1
* extension[referralIndicator].valueString                 = "N"
* extension[whPayerPcpResponsibilityIndicator].valueString = "N"

* item[0].sequence                       = 1
* item[0].servicedDate                   = "2017-06-02"
* item[0].locationCodeableConcept[0]     = CMS-PLACE-OF-SERVICE#23
* item[0].productOrService.coding[0]     = CPT#20200 "superficial muscle biopsy"
* item[0].productOrService.coding[1]     = NdcNoHyphensCodeSystem#69452015120
* item[0].modifier[0]                    = HCPCS#AF
* item[0].extension[capitatedServiceIndicator].valueString = "N"
* item[0].extension[companyCode].valueCodeableConcept = http://acmehealth.com/CodeSystem/local-company-code#LocCompanyCd
* item[0].quantity.value                 = 3
* item[0].quantity.extension[localNumberOfUnitsPerService].valueQuantity.value = 5.00
* item[0].revenue                        = NUBC-REVENUE-CODE#0450 "Emergency Room"

* diagnosis[0].sequence                  = 1
* diagnosis[0].diagnosisCodeableConcept  = ICD10#R51 "Headache"
* diagnosis[0].type                      = DIAGNOSIS-TYPE#principal
* diagnosis[0].onAdmission               = DiagnosisPresentOnAdmissionCodeSystem#Y
* diagnosis[0].packageCode               = MSDRG#102

* diagnosis[1].sequence                  = 2
* diagnosis[1].diagnosisCodeableConcept  = ICD10#G43.909 "Migraine, Unspecified, not Intractable, without Status Migrainosus"
* diagnosis[1].type                      = DIAGNOSIS-TYPE#discharge
* diagnosis[1].onAdmission               = DiagnosisPresentOnAdmissionCodeSystem#Y

* procedure[0].sequence                  = 1
* procedure[0].procedureCodeableConcept	 = ICD10-PCS#30230Q1
* procedure[0].type                      = ProcedureTypeCodeSystem#surgical
