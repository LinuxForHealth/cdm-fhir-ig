Profile:        CDMCoverage
Parent:         Coverage
Id:             cdm-coverage
Title:          "CDM Coverage"
Description:    "Describes the healthcare benefit coverage of a member as it relates to a health plan. Coverage determines how the health care products and services the member receives may be paid. The CDMCoverage profile extends the base FHIR Coverage resource with additional benefit coverage details."
* contained 0..0
* meta only ProcessMeta

* identifier only CDMIdentifier

* class.type from WhPayerCoverageClassValueSet (extensible)
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

* extension contains AttributedProviderReferenceWithPeriod named attributedProviderReferenceWithPeriod 0..1
* extension[attributedProviderReferenceWithPeriod] ^short      = "Attributed provider reference with period"
* extension[attributedProviderReferenceWithPeriod] ^definition = "Attributed provider reference with period"

* extension contains ClaimGroupIdentifier named claimGroupIdentifier 0..1
* extension[claimGroupIdentifier] ^short      = "Group ID of the plan member"
* extension[claimGroupIdentifier] ^definition = "Group ID of the plan member. This ID associates the primary plan holder with any dependents."

* extension contains CobraIndicator named cobraIndicator 0..1
* extension[cobraIndicator] ^short      = "Indicator of Consolidated Omnibus Budget Reconciliation Act (COBRA) continuation for the person"
* extension[cobraIndicator] ^definition = "Indicator of Consolidated Omnibus Budget Reconciliation Act (COBRA) continuation for the person"

* extension contains CoverageDays named coverageDays 0..1
* extension[coverageDays] ^short      = "The number of covered days of eligibility"
* extension[coverageDays] ^definition = "The number of covered days of eligibility"

* extension contains CoverageMonth named coverageMonth 0..1
* extension[coverageMonth] ^short      = "The date which reflects the month of eligibility"
* extension[coverageMonth] ^definition = "The date which reflects the month of eligibility"

* extension contains CoverageInsurancePlan named coverageInsurancePlan 0..1
* extension[coverageInsurancePlan] ^short      = "The insurance plan providing coverage"
* extension[coverageInsurancePlan] ^definition = "The insurance plan providing coverage"

* extension contains DualEligibilityIndicator named dualEligibilityIndicator 0..1
* extension[dualEligibilityIndicator] ^short      = "Indicator of dual eligibility for the Medicaid market"
* extension[dualEligibilityIndicator] ^definition = "Indicator of dual eligibility for the Medicaid market"

* extension contains EnrollmentPcp named enrollmentPcp 0..1
* extension[enrollmentPcp] ^short      = "Provider identifier of the primary care physician for the plan member"
* extension[enrollmentPcp] ^definition = "Provider identifier of the primary care physician for the plan member"

* extension contains EnrollmentPcpNameOnEnrollment named enrollmentPcpNameOnEnrollment 0..1
* extension[enrollmentPcpNameOnEnrollment] ^short      = "Original primary care physician (PCP) name as reporting on the eligibility record"
* extension[enrollmentPcpNameOnEnrollment] ^definition = "Original primary care physician (PCP) name as reporting on the eligibility record"

* extension contains EnrollmentPcpZipOnEnrollment named enrollmentPcpZipOnEnrollment 0..1
* extension[enrollmentPcpZipOnEnrollment] ^short      = "Original primary care physician (PCP) zip as reporting on the eligibility record"
* extension[enrollmentPcpZipOnEnrollment] ^definition = "Original primary care physician (PCP) zip as reporting on the eligibility record"

* extension contains 
    EmployeeAverageScheduledHours named employeeAverageScheduledHours 0..1 and
    EmployeeBirthDate named employeeBirthDate 0..1 and
    EmployeeCompany named employeeCompany 0..1 and
    EmployeeCostCenter named employeeCostCenter 0..1 and
    EmployeeCount named employeeCount 0..1 and
    EmployeeBusinessUnit named employeeBusinessUnit 0..1 and
    EmployeeDepartment named employeeDepartment 0..1 and 
    EmployeeDivision named employeeDivision 0..1 and
    EmployeeExemptIndicator named employeeExemptIndicator 0..1 and
    EmployeeFamilySize named employeeFamilySize 0..1 and
    EmployeeFTECount named employeeFTECount 0..1 and
    EmployeeId named employeeId 0..* and
    EmployeeJobFamily named employeeJobFamily 0..1 and
    EmployeeJobGrade named employeeJobGrade 0..1 and
    EmployeeJobLocation named employeeJobLocation 0..1 and
    EmployeePayFrequency named employeePayFrequency 0..1 and
    EmployeePerformanceRating named employeePerformanceRating 0..1 and
    EmployeeShift named employeeShift 0..1 and
    EmployeeSubBusinessUnit named employeeSubBusinessUnit 0..1 and 
    SalaryIndicator named salaryIndicator 0..1 and
    UnionWorkerIndicator named unionWorkerIndicator 0..1

 * extension[employeeAverageScheduledHours] ^short      = "Average number of hours the employee is scheduled to work per day"
 * extension[employeeAverageScheduledHours] ^definition = "Average number of hours the employee is scheduled to work per day"
 * extension[employeeBirthDate] ^short      = "Birthdate of the employee or contract holder"
 * extension[employeeBirthDate] ^definition = "Birthdate of the employee or contract holder. For security, this field may be hidden or the value stored in this field should only contain the year."
 * extension[employeeCompany] ^short      = "Customer-specific code for the company of the employee"
 * extension[employeeCompany] ^definition = "Customer-specific code for the company of the employee"
 * extension[employeeCostCenter] ^short      = "Customer-specific code for the cost center of the employee"
 * extension[employeeCostCenter] ^definition = "Customer-specific code for the cost center of the employee"
 * extension[employeeCount] ^short      = "A flag of the employees in the eligibility record"
 * extension[employeeCount] ^definition = "A flag of the employees in the eligibility record. Each employee is identified with a value of 1. All others are given values of 0."
 * extension[employeeBusinessUnit] ^short      = "Code for the business unit of the employee" 
 * extension[employeeBusinessUnit] ^definition = "Code for the business unit of the employee" 
 * extension[employeeDepartment] ^short      = "Customer-specific code for the department of the employee"
 * extension[employeeDepartment] ^definition = "Customer-specific code for the department of the employee"
 * extension[employeeDivision] ^short      = "Customer-specific code for the division of the employee"
 * extension[employeeDivision] ^definition = "Customer-specific code for the division of the employee"
 * extension[employeeExemptIndicator] ^short      = "Indicator of whether the employee status is exempt or non-exempt"
 * extension[employeeExemptIndicator] ^definition = "Indicator of whether the employee status is exempt or non-exempt"
 * extension[employeeFamilySize] ^short      = "The total family size of the employee, whether or not dependents are insured or participating in any programs"
 * extension[employeeFamilySize] ^definition = "The total family size of the employee, whether or not dependents are insured or participating in any programs"
 * extension[employeeFTECount] ^short      = "The Full Time Equivalent calculation for the employee"
 * extension[employeeFTECount] ^definition = "The Full Time Equivalent calculation for the employee. Example 1: A full-time employee would have a value of 1. Example 2: A 20-hour per week employee would have a value of 0.5."
 * extension[employeeId] ^short      = "Customer-specific identifier for the employee"
 * extension[employeeId] ^definition = "Customer-specific identifier for the employee"
 * extension[employeeJobFamily] ^short      = "Customer-specific code for the job family of the employee"
 * extension[employeeJobFamily] ^definition = "Customer-specific code for the job family of the employee"
 * extension[employeeJobGrade] ^short      = "Customer-specific job grade code of the employee"
 * extension[employeeJobGrade] ^definition = "Customer-specific job grade code of the employee"
 * extension[employeeJobLocation] ^short      = "Customer-specific code for the physical location where the employee works"
 * extension[employeeJobLocation] ^definition = "Customer-specific code for the physical location where the employee works"
 * extension[employeePayFrequency] ^short      = "Customer-specific code indicating the frequency with which the employee is paid (e.g., daily, weekly, monthly)"
 * extension[employeePayFrequency] ^definition = "Customer-specific code indicating the frequency with which the employee is paid (e.g., daily, weekly, monthly)"
 * extension[employeePerformanceRating] ^short      = "Customer-specific code indicating the performance rating of the employee, assigned as of the last review period"
 * extension[employeePerformanceRating] ^definition = "Customer-specific code indicating the performance rating of the employee, assigned as of the last review period"
 * extension[employeeShift] ^short      = "Customer-specific code indicating the regular shift which the employee is scheduled to work"
 * extension[employeeShift] ^definition = "Customer-specific code indicating the regular shift which the employee is scheduled to work (e.g., day, afternoon, midnight)"
 * extension[employeeSubBusinessUnit] ^short      = "Customer-specific code of the sub business unit of the employee"
 * extension[employeeSubBusinessUnit] ^definition = "Customer-specific code of the sub business unit of the employee"
 * extension[salaryIndicator] ^short       = "An indicator of whether the employee status is salaried"
 * extension[salaryIndicator] ^definition  = "An indicator of whether the employee status is salaried"
 * extension[unionWorkerIndicator] ^short      = "An indicator that the contract holder (subscriber) belongs to a union"
 * extension[unionWorkerIndicator] ^definition = "An indicator that the contract holder (subscriber) belongs to a union"

* extension contains EmployeeEducationLevel named employeeEducationLevel 0..1
* extension[employeeEducationLevel].valueCodeableConcept from WhPayerEducationLevelValueSet (extensible)
* extension[employeeEducationLevel] ^short      = "Code indicating the highest level of education that the employee has completed"
* extension[employeeEducationLevel] ^definition = "Code indicating the highest level of education that the employee has completed (e.g., not a high school graduate, high school graduate, some college, associates degree, bachelors degree, graduate degree)"

* extension contains 
    EmployeeHireDate named employeeHireDate 0..* and
    EmployeeTerminationDate named employeeTerminationDate 0..* and
    EmployeeTerminationReason named employeeTerminationReason 0..*
    
* extension[employeeHireDate] ^short      = "The first date of employment for the employee"
* extension[employeeHireDate] ^definition = "The first date of employment for the employee"
* extension[employeeTerminationDate] ^short      = "The last date of employment for the employee"
* extension[employeeTerminationDate] ^definition = "The last date of employment for the employee"
* extension[employeeTerminationReason] ^short      = "Customer-specific code indicating the reason for termination"
* extension[employeeTerminationReason] ^definition = "Customer-specific code indicating the reason for termination, if the employee was terminated (e.g., discharged, resigned)"

* extension contains EmployeeJobTitle named employeeJobTitle 0..1
* extension[employeeJobTitle].valueCodeableConcept from WhPayerJobTitleValueSet (extensible)
* extension[employeeJobTitle] ^short      = "Job title of the employee"
* extension[employeeJobTitle] ^definition = "Job title of the employee"
 
* extension contains EmployeeLaborUnion named employeeLaborUnion 0..1
* extension[employeeLaborUnion] ^short      = "Customer-specific code for the labor union"
* extension[employeeLaborUnion] ^definition = "Customer-specific code for the labor union"

* extension contains EmployeeRetirementDate named employeeRetirementDate 0..1
* extension[employeeRetirementDate] ^short      = "Date of retirement for the employee or contract holder"
* extension[employeeRetirementDate] ^definition = "Date of retirement for the employee or contract holder"

* extension contains EmployeeStatus named employeeStatus 0..1
* extension[employeeStatus].valueCodeableConcept from WHPayerEmployeeStatusValueSet (example)
* extension[employeeStatus] ^short      = "The code for the status of the employee"
* extension[employeeStatus] ^definition = "The code for the status of the employee"

* extension contains EmployeeUnionId named employeeUnionId 0..1
* extension[employeeUnionId] ^short      = "Customer-specific identification for the labor union"
* extension[employeeUnionId] ^definition = "Customer-specific identification for the labor union"

* extension contains EmployeeWageAmount named employeeWageAmount 0..1
* extension[employeeWageAmount] ^short      =  "Wage amount of the employee for the time period represented by the Wage Basis field"
* extension[employeeWageAmount] ^definition =  "Wage amount of the employee for the time period represented by the Wage Basis field"

* extension contains EmployeeWageBasis named employeeWageBasis 0..1
* extension[employeeWageBasis] ^short      =  "Customer-specific code indicating the basis on which the wages of the employee are calculated"
* extension[employeeWageBasis] ^definition =  "Customer-specific code indicating the basis on which the wages of the employee are calculated (e.g., hourly, daily, weekly, bimonthly, monthly, annually)"

* extension contains EmployeeYearOfService named employeeYearOfService 0..1
* extension[employeeYearOfService] ^short      = "Net credited service in years for the employee"
* extension[employeeYearOfService] ^definition = "Net credited service in years for the employee"

// Note: Employer is defined in ClaimExtensions.fsh, with a different definition here
* extension contains Employer named employer 0..1
* extension[employer] ^short      = "Customer-specific code for the employer"
* extension[employeeId] ^definition = "Customer-specific code for the employer"
 
* extension contains FamilyIncomeLevel named familyIncomeLevel 0..1
* extension[familyIncomeLevel] ^short      = "Customer-specific code for the family income level of the person based on the Federal Poverty Level (FPL)"
* extension[familyIncomeLevel] ^definition = "Customer-specific code for the family income level of the person based on the Federal Poverty Level (FPL)"

* extension contains JobClassCode named jobClassCode 0..1
* extension[jobClassCode] ^short      = "Classifcation group of the job role of the employee, for example, Top Executives, Post-secondary teachers, and Engineers"
* extension[jobClassCode] ^definition = "Classifcation group of the job role of the employee, for example, Top Executives, Post-secondary teachers, and Engineers"

* extension contains JobLocationZipcode named jobLocationZipcode 0..1
* extension[jobLocationZipcode] ^short      = "5-digit zip code of the facility where the employee works"
* extension[jobLocationZipcode] ^definition = "5-digit zip code of the facility where the employee works"

* extension contains  LongTermDisabilityBenefitRate named longTermDisabilityBenefitRate 0..1
* extension[longTermDisabilityBenefitRate] ^short      = "Long term disability (LTD) benefit rate, expressed as a percentage of base wages (for example, 50.00%, 60.00%, 70.00%)"
* extension[longTermDisabilityBenefitRate] ^definition = "Long term disability (LTD) benefit rate, expressed as a percentage of base wages (for example, 50.00%, 60.00%, 70.00%)"

* extension contains MedicareCoverage named medicareCoverage 0..1
* extension[medicareCoverage].valueCodeableConcept from WhPayerMedicareCoverageValueSet (extensible)
* extension[medicareCoverage] ^short      = "Standard code for the type of Medicare coverage, if any, for the person"
* extension[medicareCoverage] ^definition = "Standard code for the type of Medicare coverage, if any, for the person"

* extension contains MedicareIndicator named medicareIndicator 0..1
* extension[medicareIndicator] ^short      = "An indicator of Medicare coverage for the member"
* extension[medicareIndicator] ^definition = "An indicator of Medicare coverage for the member"

* extension contains MemberEmployeeIndicator named memberEmployeeIndicator 0..1
* extension[memberEmployeeIndicator] ^short      = "Customer-specific code indicates whether the member is either an employee of the health plan, or the dependent of an employee of the health plan"
* extension[memberEmployeeIndicator] ^definition = "Customer-specific code indicates whether the member is either an employee of the health plan, or the dependent of an employee of the health plan"

* extension contains RegionCode named regionCode 0..1
* extension[regionCode] ^short      = "Customer-specific code for the geographic region of the employee"
* extension[regionCode] ^definition = "Customer-specific code for the geographic region of the employee"

* extension contains RestrictedBenefits named restrictedBenefits 0..1
* extension[restrictedBenefits] ^short      = "Customer-specific code of the scope of Medicaid or CHIP benefits for a person"
* extension[restrictedBenefits] ^definition = "Customer-specific code of the scope of Medicaid or CHIP benefits for a person"

* extension contains PlanEmployeeCode named planEmployeeCode 0..1
* extension[planEmployeeCode] ^short      = "Customer-specific code indicating whether the member is an employee of the health plan or the dependent of an employee of the health plan"
* extension[planEmployeeCode] ^definition = "Customer-specific code indicating whether the member is an employee of the health plan or the dependent of an employee of the health plan"

* extension contains  ShortTermDisabilityBenefitRate named shortTermDisabilityBenefitRate 0..1
* extension[shortTermDisabilityBenefitRate] ^short      = "Short term disability (STD) benefit rate, expressed as a percentage of base wages or benefit amount (for example, 50.00%, 60.00%, 70.00%)"
* extension[shortTermDisabilityBenefitRate] ^definition = "Short term disability (STD) benefit rate, expressed as a percentage of base wages or benefit amount (for example, 50.00%, 60.00%, 70.00%)"

* extension contains SsiStatus named ssiStatus 0..1
* extension[ssiStatus].valueCodeableConcept from WhPayerSsiStatusValueSet (extensible)
* extension[ssiStatus] ^short      = "Standard code of the Supplemental Security Income (SSI) status for the person"
* extension[ssiStatus] ^definition = "Standard code of the Supplemental Security Income (SSI) status for the person"

* extension contains TanfBenefit named tanfBenefit 0..1
* extension[tanfBenefit].valueCodeableConcept from WhPayerTanfBenefitValueSet (extensible)
* extension[tanfBenefit] ^short      = "Standard code of the Temporary Assistance for Needy Families (TANF) benefits for the person"
* extension[tanfBenefit] ^definition = "Standard code of the Temporary Assistance for Needy Families (TANF) benefits for the person"

* extension contains TotalDependentCount named totalDependentCount 0..1
* extension[totalDependentCount] ^short      = "Number of dependents covered by the group health medical plan"
* extension[totalDependentCount] ^definition = "Number of dependents covered by the group health medical plan"

* extension contains UnencryptedSubscriberId named unencryptedSubscriberId 0..1
* extension[unencryptedSubscriberId] ^short      = "Unencrypted identifier of the family"
* extension[unencryptedSubscriberId] ^definition = "Unencrypted identifier of the family. This field must have limited access for security reasons."

* extension contains WhPayerRecordPopulationCount named whPayerRecordPopulationCount 0..1
* extension[whPayerRecordPopulationCount] ^short      = "Specifies whether the member should be counted as eligible for the coverage period"
* extension[whPayerRecordPopulationCount] ^definition = "Specifies whether the member should be counted as eligible for the coverage period. A value of 1 is used to count the member as eligible for the coverage period. Else the value should be 0."

* extension contains    
    WhPayerSubscriberRelationshipCode named whPayerSubscriberRelationshipCode 0..1 and
    LocalSubscriberRelationshipCode named localSubscriberRelationshipCode 0..1
* extension[whPayerSubscriberRelationshipCode] ^short      = "Health Data Connect standard code for the relationship of the member to the contract holder"
* extension[whPayerSubscriberRelationshipCode] ^definition = "Health Data Connect standard code for the relationship of the member to the contract holder"
* extension[localSubscriberRelationshipCode] ^short      = "Customer-specific code for the relationship of the member to the subscriber"
* extension[localSubscriberRelationshipCode] ^definition = "Customer-specific code for the relationship of the member to the subscriber"
