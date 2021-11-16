Instance:           CoverageExample
InstanceOf:         CDMCoverage
Usage:              #example
Title:              "Coverage Example"
Description:        "Example of a coverage record for a patient beneficiary"

* meta.source  = "http://acme-health.com/WellnessInsuranceCompany"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-coverage"
* meta.extension[sourceFileId].valueString     = "e00085555"

* identifier.use                 = #official
* identifier.type                = IdentifierTypeCodeSystem#SSRI
* identifier.system              = "http://acme-health.com/emr1/coverage"
* identifier.value               = "c35466d6-0d2b-4efa-8265-b9ac3f887e08"
* identifier.assigner.display    = "Acme Health - EMR1"

* payor.type              = RESOURCE-TYPE#Organiation
* payor.identifier.system = "http://acme-health.com/payer1/payer"
* payor.identifier.value  = "PayerId09876"

* beneficiary = Reference(CDMPatientInstance)

* subscriberId                                   = "encryp-familyid-98321"
* extension[unencryptedSubscriberId].valueString = "FamilyId_0001"

* status = #active

* extension[ageGenderGroup].valueCodeableConcept = AgeGenderGroupCodeSystem#7
* extension[snapshotAgeInYears].valueUnsignedInt = 21
* period.start                                   = "2000-01-01"
* period.end                                     = "2000-10-31"

* extension[cobraIndicator].valueString                  = "N"
* extension[coverageMonth].valueDate                     = "2000-06-01"
* extension[dualEligibilityIndicator].valueString        = "N"
* extension[employeeAverageScheduledHours].valueDecimal  = 35.5
* extension[employeeBirthDate].valueDate                 = "1990"
* extension[employeeBusinessUnit].valueCodeableConcept   = http://acme-health.com/CodeSystem/local-employee-business-unit#EmpBusUnit
* extension[employeeCompany].valueCodeableConcept        = http://acme-health.com/CodeSystem/local-employee-company#LocalEmpCompany
* extension[employeeCostCenter].valueCodeableConcept     = http://acme-health.com/CodeSystem/local-employee-cost-center#LocalEmpCostCenter
* extension[employeeDepartment].valueCodeableConcept     = http://acme-health.com/CodeSystem/local-employee-department#LocalEmpDepartment
* extension[employeeDivision].valueCodeableConcept       = http://acme-health.com/CodeSystem/local-employee-division#LocalEmpDivision
* extension[employeeEducationLevel].valueCodeableConcept.coding[0] = WhPayerEducationLevelCodeSystem#D
* extension[employeeEducationLevel].valueCodeableConcept.coding[1] = http://acme-health.com/CodeSystem/local-employee-education-level#AttendedCollege
* extension[employeeExemptIndicator].valueString         = "N"
* extension[employeeFamilySize].valueInteger             = 2
* extension[employeeHireDate].valueDate                  = "2000-01-01"
* extension[employeeId].valueIdentifier.value            = "555555"
* extension[employeeJobFamily].valueCodeableConcept      = http://acme-health.com/CodeSystem/local-employee-job-family#LocalEmpJobFamilyCd
* extension[employeeJobGrade].valueCodeableConcept       = http://acme-health.com/CodeSystem/local-employee-job-grade#LocalEmpJobGradeCd
* extension[employeeJobLocation].valueCodeableConcept.coding[0]    = http://acme-health.com/CodeSystem/local-physical-job-location#EmpJobLocationCd
* extension[employeeJobLocation].valueCodeableConcept.coding[1]    = http://acme-health.com/CodeSystem/local-geographic-job-location#CardingtonOhio
* extension[employeeJobTitle].valueCodeableConcept.coding[0]       = http://acme-health.com/CodeSystem/local-employee-job-title#SoftwareEngineer
* extension[employeeJobTitle].valueCodeableConcept.coding[1]       = STANDARD-OCCUPATION-CODE#15-1131
* extension[employeeLaborUnion].valueCodeableConcept               = http://acme-health.com/CodeSystem/local-employee-labor-union#LocalEmpLaborUnionCd
* extension[employeePayFrequency].valueCodeableConcept             = http://acme-health.com/CodeSystem/local-employee-pay-frequency#Monthly
* extension[employeePerformanceRating].valueCodeableConcept        = http://acme-health.com/CodeSystem/local-employee-performance-rating#Meets
* extension[employeeShift].valueCodeableConcept                    = http://acme-health.com/CodeSystem/local-employee-shift#Day
* extension[employeeStatus].valueCodeableConcept.coding[0]         = http://ibm.com/fhir/cdm/CodeSystem/wh-payer-employee-status-code#1
* extension[employeeStatus].valueCodeableConcept.coding[1]         = http://acme-health.com/CodeSystem/local-employee-status#LocalEmpStatus
* extension[employeeSubBusinessUnit].valueCodeableConcept          = http://acme-health.com/CodeSystem/local-employee-sub-business-unit#LocalEmpSubBusinessUnit
* extension[employeeTerminationDate].valueDate                     = "2099-12-31"
* extension[employeeTerminationReason].valueCodeableConcept        = http://acme-health.com/CodeSystem/local-termination-reason#NotTermed
* extension[employeeWageAmount].valueDecimal                       = 46500.00
* extension[employeeWageBasis].valueCodeableConcept                = http://acme-health.com/CodeSystem/local-employee-wage-basis#Annual
* extension[employeeYearOfService].valueUnsignedInt                = 1
* extension[employeeUnionId].valueString                           = "UnionId-407"
* extension[enrollmentPcpNameOnEnrollment].valueString    = "Dr Kelly"
* extension[enrollmentPcpZipOnEnrollment].valueString     = "75014"
* extension[enrollmentPcp].valueString                    = "EnrollmentPCP1"
* extension[employer].valueCodeableConcept                = http://acme-health.com/CodeSystem/local-employer#LocalEmployerCode
* extension[familyIncomeLevel].valueCodeableConcept       = http://acme-health.com/CodeSystem/local-income-level#26500
* extension[jobClassCode].valueCodeableConcept            = http://acme-health.com/CodeSystem/local-job-class-code#jobclass
* extension[jobLocationZipcode].valueString               = "43315"
* extension[longTermDisabilityBenefitRate].valueDecimal   = 10.00
* extension[medicareCoverage].valueCodeableConcept        = WhPayerMedicareCoverageCodeSystem#N
* extension[medicareIndicator].valueString                = "N"
* extension[memberEmployeeIndicator].valueCodeableConcept = http://acme-health.com/CodeSystem/local-member-employee-indicator#MemberEmployee
* extension[restrictedBenefits].valueCodeableConcept      = http://acme-health.com/CodeSystem/local-restricted-benefits#LocalRestrictedBenefits
* extension[employeeRetirementDate].valueDate             = "2099-12-31"
* extension[salaryIndicator].valueString                  = "Y"
* extension[shortTermDisabilityBenefitRate].valueDecimal  = 30.00
* extension[ssiIndicator].valueString                     = "N"
* extension[ssiStatus].valueCodeableConcept               = WhPayerSsiStatusCodeSystem#999
* extension[tanfBenefits].valueCodeableConcept            = WhPayerTanfBenefitCodeSystem#9
* extension[totalDependentCount].valueInteger             = 1
* extension[unionWorkerIndicator].valueString             = "N"

* class[0].type.coding  = WhPayerCoverageClassCodeSystem#election-tier
* class[0].value        = "Family"
* class[1].type         = WhPayerCoverageClassCodeSystem#election-tier
* class[1].value        = "dental employee only"
* class[2].type.coding  = WhPayerCoverageClassCodeSystem#election-tier
* class[2].value        = "vision employee only"
* class[3].type.coding  = WhPayerCoverageClassCodeSystem#group-type
* class[3].value        = "HMO" 
* class[4].type.coding  = COVERAGE-CLASS#group
* class[4].value        = "GR12345"

* relationship.coding[0] = SUBSCRIBER-RELATIONSHIP#self
* relationship.coding[1] = http://acme-health.com/CodeSystem/local-subscriber-relationship#LocalRelationship
