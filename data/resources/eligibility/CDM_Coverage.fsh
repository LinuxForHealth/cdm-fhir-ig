Profile:        CDMCoverage
Parent:         Coverage
Id:             cdm-coverage
Title:          "CDM Coverage"
Description:    "Describes the healthcare benefit coverage of a member as it relates to a health plan. Coverage determines how the health care products and services the member receives may be paid. The CDMCoverage profile extends the base FHIR Coverage resource with additional benefit coverage details."
* contained 0..0
* meta only ProcessMeta

* identifier only CDMIdentifier

* period 1..1
* payor 1..1

* extension contains SnapshotAgeInMonths named snapshotAgeInMonths 0..1
* extension[snapshotAgeInMonths] ^short      = "Age in months at the time of the coverage period"
* extension[snapshotAgeInMonths] ^definition = "Age in months at the time of the coverage period"

* extension contains SnapshotAgeInYears named snapshotAgeInYears 0..1
* extension[snapshotAgeInYears] ^short      = "The age of the person in years for the month of eligibility or service"
* extension[snapshotAgeInYears] ^definition = "The age of the person in years for the month of eligibility or service"

* extension contains AgeGroup named ageGroup 0..1
* extension[ageGroup].valueCodeableConcept from AgeGroupValueSet (extensible)
* extension[ageGroup] ^short      = "Standard code for age groupings"
* extension[ageGroup] ^definition = "Standard code for age groupings"

* extension contains AgeGenderGroup named ageGenderGroup 0..1
* extension[ageGenderGroup].valueCodeableConcept from AgeGenderGroupValueSet (extensible)
* extension[ageGenderGroup] ^short      = "Standard code for groupings that combine age and gender"
* extension[ageGenderGroup] ^definition = "Standard code for groupings that combine age and gender"

* extension contains CoverageDays named coverageDays 0..1
* extension[coverageDays] ^short      = "The number of covered days of eligibility"
* extension[coverageDays] ^definition = "The number of covered days of eligibility"

* extension contains CoverageMonth named coverageMonth 0..1
* extension[coverageMonth] ^short      = "The date which reflects the month of eligibility"
* extension[coverageMonth] ^definition = "The date which reflects the month of eligibility"

* extension contains CoverageInsurancePlan named coverageInsurancePlan 0..1
* extension[coverageInsurancePlan] ^short      = "The insurance plan providing coverage"
* extension[coverageInsurancePlan] ^definition = "The insurance plan providing coverage"

* extension contains EnrollmentPcp named enrollmentPcp 0..1
* extension[enrollmentPcp] ^short      = "Provider identifier of the primary care physician for the plan member"
* extension[enrollmentPcp] ^definition = "Provider identifier of the primary care physician for the plan member"

* extension contains 
    EmployeeCount named employeeCount 0..1 and
    EmployeeBusinessUnit named employeeBusinessUnit 0..1 and
    EmployeeFTECount named employeeFTECount 0..1 and
    SalaryIndicator named salaryIndicator 0..1 and
    UnionWorkerIndicator named unionWorkerIndicator 0..1
 * extension[employeeCount] ^short      = "A flag of the employees in the eligibility record"
 * extension[employeeCount] ^definition = "A flag of the employees in the eligibility record. Each employee is identified with a value of 1. All others are given values of 0."
 * extension[employeeBusinessUnit] ^short      = "Code for the business unit of the employee" 
 * extension[employeeBusinessUnit] ^definition = "Code for the business unit of the employee" 
 * extension[employeeFTECount] ^short      = "The Full Time Equivalent calculation for the employee"
 * extension[employeeFTECount] ^definition = "The Full Time Equivalent calculation for the employee. Example 1: A full-time employee would have a value of 1. Example 2: A 20-hour per week employee would have a value of 0.5."
 * extension[salaryIndicator] ^short      = "An indicator of whether the employee status is salaried"
 * extension[salaryIndicator] ^definition = "An indicator of whether the employee status is salaried"
 * extension[unionWorkerIndicator] ^short      = "An indicator that the contract holder (subscriber) belongs to a union"
 * extension[unionWorkerIndicator] ^definition = "An indicator that the contract holder (subscriber) belongs to a union"

* extension contains EmployeeStatus named employeeStatus 0..1
* extension[employeeStatus].valueCodeableConcept from WHPayerEmployeeStatusValueSet (example)
* extension[employeeStatus] ^short      = "The code for the status of the employee"
* extension[employeeStatus] ^definition = "The code for the status of the employee"

* extension contains JobClassCode named jobClassCode 0..1
* extension[jobClassCode] ^short      = "Classifcation group of the job role of the employee, for example, Top Executives, Post-secondary teachers, and Engineers"
* extension[jobClassCode] ^definition = "Classifcation group of the job role of the employee, for example, Top Executives, Post-secondary teachers, and Engineers"

* extension contains JobTitleCode named jobTitleCode 0..1
* extension[jobTitleCode].valueCodeableConcept from WhPayerJobTitleValueSet (extensible)
* extension[jobTitleCode] ^short      = "Detailed job title of the employee"
* extension[jobTitleCode] ^definition = "Detailed job title of the employee"
 
* extension contains 
    EmployeeHireDate named employeeHireDate 0..1 and
    EmployeeTerminationDate named employeeTerminationDate 0..1
* extension[employeeHireDate] ^short      = "The first date of employment for the employee"
* extension[employeeHireDate] ^definition = "The first date of employment for the employee"
* extension[employeeTerminationDate] ^short      = "The last date of employment for the employee"
* extension[employeeTerminationDate] ^definition = "The last date of employment for the employee"
 
* extension contains MedicareIndicator named medicareIndicator 0..1
* extension[medicareIndicator] ^short      = "An indicator of Medicare coverage for the member"
* extension[medicareIndicator] ^definition = "An indicator of Medicare coverage for the member"

* extension contains MemberEmployeeIndicator named memberEmployeeIndicator 0..1
* extension[memberEmployeeIndicator] ^short      = "Indicates whether the member is either an employee of the health plan, or the dependent of an employee of the health plan"
* extension[memberEmployeeIndicator] ^definition = "Indicates whether the member is either an employee of the health plan, or the dependent of an employee of the health plan"

* extension contains RegionCode named regionCode 0..1
* extension[regionCode] ^short      = "Customer-specific code for the geographic region of the employee"
* extension[regionCode] ^definition = "Customer-specific code for the geographic region of the employee"

* extension contains AttributedProviderReferenceWithPeriod named attributedProviderReferenceWithPeriod 0..1
* extension[attributedProviderReferenceWithPeriod] ^short      = "Attributed provider reference with period"
* extension[attributedProviderReferenceWithPeriod] ^definition = "Attributed provider reference with period"

* extension contains ClaimGroupIdentifier named claimGroupIdentifier 0..1
* extension[claimGroupIdentifier] ^short      = "Group ID of the plan member"
* extension[claimGroupIdentifier] ^definition = "Group ID of the plan member. This ID associates the primary plan holder with any dependents."

* extension contains WhPayerRecordPopulationCount named whPayerRecordPopulationCount 0..1
* extension[whPayerRecordPopulationCount] ^short      = "Specifies whether the member should be counted as eligible for the coverage period"
* extension[whPayerRecordPopulationCount] ^definition = "Specifies whether the member should be counted as eligible for the coverage period. A value of 1 is used to count the member as eligible for the coverage period. Else the value should be 0."

* extension contains    
    WhPayerSubscriberRelationshipCode named whPayerSubscriberRelationshipCode 0..1 and
    LocalSubscriberRelationshipCode named localSubscriberRelationshipCode 0..1
* extension[whPayerSubscriberRelationshipCode] ^short      = "IBM® Health Data Connect standard code for the relationship of the member to the contract holder"
* extension[whPayerSubscriberRelationshipCode] ^definition = "IBM® Health Data Connect standard code for the relationship of the member to the contract holder"
* extension[localSubscriberRelationshipCode] ^short      = "Customer-specific code for the relationship of the member to the subscriber"
* extension[localSubscriberRelationshipCode] ^definition = "Customer-specific code for the relationship of the member to the subscriber"

* extension contains PlanEmployeeCode named planEmployeeCode 0..1
* extension[planEmployeeCode] ^short      = "Customer-specific code indicating whether the member is an employee of the health plan or the dependent of an employee of the health plan"
* extension[planEmployeeCode] ^definition = "Customer-specific code indicating whether the member is an employee of the health plan or the dependent of an employee of the health plan"
