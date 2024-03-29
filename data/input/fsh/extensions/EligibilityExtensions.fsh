Extension:      BenefitStatus
Id:             benefit-status
Title:          "Benefit Status"
Description:    "HIPAA standard code for the benefit status"
* value[x] only CodeableConcept

Extension:      ClaimGroupIdentifier
Id:             claim-group-identifier
Title:          "Claim Group Identifier"
Description:    "Group ID of the plan member. This ID associates the primary plan holder with any dependents."
* value[x] only string

Extension:      CobraIndicator
Id:             cobra-indicator
Title:          "Cobra Indicator"
Description:    "Indicator of Consolidated Omnibus Budget Reconciliation Act(COBRA) continuation for the person"
* value[x] only string

Extension:      CoverageDays
Id:             coverage-days
Title:          "Coverage Days"
Description:    "Number of covered days of eligibility"
* value[x] only unsignedInt

Extension:      CoverageMonth
Id:             coverage-month
Title:          "Coverage Month"
Description:    "Date which reflects the month of eligibility"
* value[x] only date

Extension:      CoverageInsurancePlan
Id:             coverage-insurance-plan
Title:          "Coverage Insurance Plan"
Description:    "Reference to the insurance plan for this coverage"
* value[x] only Reference
* valueReference only Reference(InsurancePlan)

Extension:      DualEligibilityIndicator
Id:             dual-eligibility-indicator
Title:          "Dual Eligibility Indicator"
Description:    "Indicator of dual eligibility for the Medicaid market"
* value[x] only string

Extension:      EnrollmentPcp
Id:             enrollment-pcp
Title:          "Enrollment PCP"
Description:    "Provider identifier of the primary care physician for the plan member"
* value[x] only string

Extension:      EnrollmentPcpNameOnEnrollment
Id:             enrollment-pcp-name-on-enrollment
Title:          "Enrollment PCP Name On Enrollment"
Description:    "Original primary care physician (PCP) name as reporting on the eligibility record"
* value[x] only string

Extension:      EnrollmentPcpZipOnEnrollment
Id:             enrollment-pcp-zip-on-enrollment
Title:          "Enrollment PCP Zip On Enrollment"
Description:    "Original primary care physician (PCP) zip code as reporting on the eligibility record"
* value[x] only string

Extension:      EmployeeAverageScheduledHours
Id:             employee-average-scheduled-hours
Title:          "Employee Average Scheduled Hours"
Description:    "Average number of hours the employee is scheduled to work per day"
* value[x] only decimal

Extension:      EmployeeBirthDate
Id:             employee-birth-date
Title:          "Employee Birth Date"
Description:    "Birthdate of the employee or contract holder. For security, this field may be hidden or the value stored in this field should only contain the year"
* value[x] only date

Extension:      EmployeeCompany
Id:             employee-company
Title:          "Employee Company"
Description:    "Code for the company of the employee"
* value[x] only CodeableConcept

Extension:      EmployeeCostCenter
Id:             employee-cost-center
Title:          "Employee Cost Center"
Description:    "Code for the cost center of the employee"
* value[x] only CodeableConcept

Extension:      EmployeeCount
Id:             employee-count
Title:          "Employee Count"
Description:    "Flag of the employees in the eligibility record. Each employee is identified with a value of 1. All others are given values of 0."
* value[x] only unsignedInt

Extension:      EmployeeDepartment
Id:             employee-department
Title:          "Employee Department"
Description:    "Code for the department of the employee"
* value[x] only CodeableConcept

Extension:      EmployeeDivision
Id:             employee-division
Title:          "Employee Division"
Description:    "Code for the division of the employee"
* value[x] only CodeableConcept

Extension:      EmployeeEducationLevel
Id:             employee-education-level
Title:          "Employee Education Level"
Description:    "Code indicating the highest level of education that the employee has completed (e.g., not a high school graduate, high school graduate, some college, associates degree, bachelors degree, graduate degree)"
* value[x] only CodeableConcept

Extension:      EmployeeExemptIndicator
Id:             employee-exempt-indicator
Title:          "Employee Exempt Indicator"
Description:    "Indicator of whether the employee status is exempt or non-exempt"
* value[x] only string

Extension:      EmployeeFamilySize
Id:             employee-family-size
Title:          "Employee Family Size"
Description:    "Total family size of the employee, whether or not dependents are insured or participating in any programs"
* value[x] only integer

Extension:      EmployeeFTECount
Id:             employee-fte-count
Title:          "Employee FTE Count"
Description:    "Full Time Equivalent calculation for the employee. Example 1: A full-time employee would have a value of 1. Example 2: A 20-hour per week employee would have a value of 0.5."
* value[x] only decimal

Extension:      EmployeeHireDate
Id:             employee-hire-date
Title:          "Employee Hire Date"
Description:    "First date of employment for the employee"
* value[x] only date

Extension:      EmployeeId
Id:             employee-id
Title:          "Employee Id"
Description:    "Identifier for the employee"
* value[x] only Identifier

Extension:      EmployeeJobFamily
Id:             employee-job-family
Title:          "Employee Job Family"
Description:    "Code for the job family of the employee"
* value[x] only CodeableConcept

Extension:      EmployeeJobGrade
Id:             employee-job-grade
Title:          "Employee Job Grade"
Description:    "Code for the job grade of the employee"
* value[x] only CodeableConcept

Extension:      EmployeeJobLocation
Id:             employee-job-location
Title:          "Employee Job Location"
Description:    "Code for the physical location where the employee works"
* value[x] only CodeableConcept

Extension:      EmployeeJobTitle
Id:             employee-job-title
Title:          "Employee Job Title"
Description:    "Job title of the employee"
* value[x] only CodeableConcept

Extension:      EmployeeLaborUnion
Id:             employee-labor-union
Title:          "Employee Labor Union"
Description:    "Code for the labor union of the employee"
* value[x] only CodeableConcept

Extension:      EmployeePayFrequency
Id:             employee-pay-frequency
Title:          "Employee Pay Frequency"
Description:    "Code indicating the frequency with which the employee is paid (e.g., daily, weekly, monthly)"
* value[x] only CodeableConcept

Extension:      EmployeePerformanceRating
Id:             employee-performance-rating
Title:          "Employee Performance Rating"
Description:    "Code indicating the performance rating of the employee, assigned as of the last review period"
* value[x] only CodeableConcept

Extension:      EmployeeRetirementDate
Id:             employee-retirement-date
Title:          "Employee Retirement Date"
Description:    "Date of retirement for the employee or contract holder"
* value[x] only date

Extension:      EmployeeShift
Id:             employee-shift
Title:          "Employee Shift"
Description:    "Code indicating the regular shift which the employee is scheduled to work (e.g., day, afternoon, midnight)"
* value[x] only CodeableConcept

Extension:      EmployeeStatus
Id:             employee-status
Title:          "Employee Status"
Description:    "Status of the employee based on one or more code systems. Example codes include HIPAA (HipaaEmployeeStatusCodeSystem), Payer (PayerEmployeeStatusCodeSystem) or customer-specific codes."
* value[x] only CodeableConcept

Extension:      EmployeeSubBusinessUnit
Id:             employee-sub-business-unit
Title:          "Employee Sub Business Unit"
Description:    "Code of the sub business unit of the employee"
* value[x] only CodeableConcept

Extension:      EmployeeTerminationDate
Id:             employee-termination-date
Title:          "Employee Termination Date"
Description:    "Last date of employment for the employee"
* value[x] only date

Extension:      EmployeeTerminationReason
Id:             employee-termination-reason
Title:          "Employee Termination Reason"
Description:    "Code indicating the reason for employee termination, if the employee was terminated (e.g., discharged, resigned)"
* value[x] only CodeableConcept

Extension:      EmployeeUnionId
Id:             employee-union-id
Title:          "Employee Union Id"
Description:    "Identification for the labor union member"
* value[x] only string

Extension:      EmployeeWageAmount
Id:             employee-wage-amount
Title:          "Employee Wage Amount"
Description:    "Wage amount of the employee for the time period represented by the Wage Basis field"
* value[x] only decimal

Extension:      EmployeeWageBasis
Id:             employee-wage-basis
Title:          "Employee Wage Basis"
Description:    "Code indicating the basis on which the wages of the employee are calculated (e.g., hourly, daily, weekly, bimonthly, monthly, annually)"
* value[x] only CodeableConcept

Extension:      EmployeeYearOfService
Id:             employee-year-of-service
Title:          "Employee Year Of Service"
Description:    "Net credited service in years for the employee"
* value[x] only unsignedInt

Extension:      FamilyIncomeLevel
Id:             family-income-level
Title:          "Family Income Level"
Description:    "Code for the family income level of the person based on the Federal Poverty Level (FPL)"
* value[x] only CodeableConcept

Extension:      JobClassCode
Id:             job-class-code
Title:          "Job Class Code"
Description:    "Classifcation group of the job role of the employee, for example, Top Executives, Post-secondary teachers, and Engineers"
* value[x] only CodeableConcept

Extension:      JobLocationZipcode
Id:             job-location-zipcode
Title:          "Job Location Zipcode"
Description:    "5-digit zip code of the facility where the employee works"
* value[x] only string

Extension:      LongTermDisabilityBenefitRate
Id:             long-term-disability-benefit-rate
Title:          "Long Term Disability Benefit Rate"
Description:    "Long term disability (LTD) benefit rate, expressed as a percentage of base wages (for example, 50.00%, 60.00%, 70.00%)"
* value[x] only decimal

Extension:      MemberEmployeeIndicator
Id:             member-employee-indicator
Title:          "Member Employee Indicator"
Description:    "Code indicates whether the member is either an employee of the health plan, or the dependent of an employee of the health plan"
* value[x] only CodeableConcept

Extension:      MedicareCoverage
Id:             medicare-coverage
Title:          "Medicare Coverage"
Description:    "Standard code for the type of Medicare coverage, if any, for the person"
* value[x] only CodeableConcept

Extension:      MedicareIndicator
Id:             medicare-indicator
Title:          "Medicare Indicator"
Description:    "Indicator of Medicare coverage for the member"
* value[x] only string

Extension:      PlanEmployeeCode
Id:             plan-employee-code
Title:          "Plan Employee Code"
Description:    "Code indicating whether the member is an employee of the health plan or the dependent of an employee of the health plan"
* value[x] only string

Extension:      RestrictedBenefits
Id:             restricted-benefits
Title:          "Restricted Benefits"
Description:    "Code of the scope of Medicaid or CHIP benefits for a person"
* value[x] only CodeableConcept

Extension:      SalaryIndicator
Id:             salary-indicator
Title:          "Salary Indicator"
Description:    "Indicator of whether the employee status is salaried"
* value[x] only string

Extension:      ShortTermDisabilityBenefitRate
Id:             short-term-disability-benefit-rate
Title:          "Short Term Disability Benefit Rate"
Description:    "Short term disability (STD) benefit rate, expressed as a percentage of base wages or benefit amount (for example, 50.00%, 60.00%, 70.00%)"
* value[x] only decimal

Extension:      SsiIndicator
Id:             ssi-indicator
Title:          "SSI Indicator"
Description:    "Indicates if the person receives Supplemental Security Income (SSI) administered via the Social Security Administration (SSA), at the time of coverage"
* value[x] only string

Extension:      SsiStatus
Id:             ssi-status
Title:          "SSI Status"
Description:    "Standard code of the Supplemental Security Income (SSI) status for the person, at the time of coverage"
* value[x] only CodeableConcept

Extension:      SubscriberIdEncrypted
Id:             subscriberId-encrypted
Title:          "SubscriberId Encrypted"
Description:    "Encrypted identifier of the subscriber or family"
* value[x] only string

Extension:      TanfBenefits
Id:             tanf-benefits
Title:          "TANF Benefits"
Description:    "Standard code of the Temporary Assistance for Needy Families (TANF) benefits for the person"
* value[x] only CodeableConcept

Extension:      TotalDependentCount
Id:             total-dependent-count
Title:          "Total Dependent Count"
Description:    "Number of dependents covered by the group health medical plan"
* value[x] only integer

Extension:      UnionWorkerIndicator
Id:             union-worker-indicator
Title:          "Union Worker Indicator"
Description:    "Indicator that the contract holder (subscriber) belongs to a union"
* value[x] only string

Extension:      PayerRecordPopulationCount
Id:             payer-record-population-count
Title:          "Payer Record Population Count"
Description:    "Specifies whether the member should be counted as eligible for the coverage period"
* value[x] only integer
