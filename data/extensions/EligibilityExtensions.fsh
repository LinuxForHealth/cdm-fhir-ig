Extension:      ClaimGroupIdentifier
Id:             claim-group-identifier
Title:          "Claim Group Identifier"
Description:    "Group ID of the plan member. This ID associates the primary plan holder with any dependents."
* value[x] only string

Extension:      CoverageDays
Id:             coverage-days
Title:          "Coverage Days"
Description:    "The number of days for the month of eligibility"
* value[x] only unsignedInt

Extension:      CoverageMonth
Id:             coverage-month
Title:          "Coverage Month"
Description:    "The date which reflects the month of eligibility"
* value[x] only date

Extension:      CoverageInsurancePlan
Id:             coverage-insurance-plan
Title:          "Coverage Insurance Plan"
Description:    "A reference to the insurance plan for this coverage"
* value[x] only Reference
* valueReference only Reference(InsurancePlan)

Extension:      EnrollmentPcp
Id:             enrollment-pcp
Title:          "Enrollment PCP"
Description:    "Provider identifier of the primary care physician for the plan member"
* value[x] only string

Extension:      EmployeeCount
Id:             employee-count
Title:          "Employee Count"
Description:    "A flag of the employees in the eligibility record. Each employee is identified with a value of 1. All others are given values of 0."
* value[x] only unsignedInt

Extension:      EmployeeFTECount
Id:             employee-fte-count
Title:          "Employee FTE Count"
Description:    "The Full Time Equivalent calculation for the employee. Example 1: A full-time employee would have a value of 1. Example 2: A 20-hour per week employee would have a value of 0.5."
* value[x] only decimal

Extension:      JobClassCode
Id:             job-class-code
Title:          "Job Class Code"
Description:    "Classifcation group of the job role of the employee, for example, Top Executives, Post-secondary teachers, and Engineers"
* value[x] only CodeableConcept

Extension:      JobTitleCode
Id:             job-title-code
Title:          "Job Title Code"
Description:    "Detailed job title of the employee"
* value[x] only CodeableConcept
* valueCodeableConcept from WhPayerJobTitleValueSet (extensible)

Extension:      EmployeeStatus
Id:             employee-status
Title:          "Employee Status"
Description:    "The code for the status of the employee"
* value[x] only CodeableConcept
* valueCodeableConcept from WHPayerEmployeeStatusValueSet (example)

Extension:      EmployeeHireDate
Id:             employee-hire-date
Title:          "Employee Hire Date"
Description:    "The first date of employment for the employee"
* value[x] only date

Extension:      EmployeeTerminationDate
Id:             employee-termination-date
Title:          "Employee Termination Date"
Description:    "The last date of employment for the employee"
* value[x] only date

Extension:      MemberEmployeeIndicator
Id:             member-employee-indicator
Title:          "Member Employee Indicator"
Description:    "Indicates whether the member is either an employee of the health plan, or the dependent of an employee of the health plan"
* value[x] only CodeableConcept

Extension:      MedicareIndicator
Id:             medicare-indicator
Title:          "Medicare Indicator"
Description:    "An indicator of Medicare coverage for the member"
* value[x] only string

Extension:      SalaryIndicator
Id:             salary-indicator
Title:          "Salary Indicator"
Description:    "An indicator of whether the employee status is salaried"
* value[x] only string

Extension:      UnionWorkerIndicator
Id:             union-worker-indicator
Title:          "Union Worker Indicator"
Description:    "An indicator that the contract holder (subscriber) belongs to a union"
* value[x] only string

Extension:      WhPayerRecordPopulationCount
Id:             wh-payer-record-population-count
Title:          "Health Data Connect Record Population Count"
Description:    "Specifies whether the member should be counted as eligible for the coverage period"
* value[x] only integer

Extension:      LocalSubscriberRelationshipCode
Id:             local-subscriber-relationship-code
Title:          "Local Subscriber Relationship Code"
Description:    "Customer-specific code for the relationship of the member to the subscriber"
* value[x] only string

Extension:      WhPayerSubscriberRelationshipCode
Id:             wh-payer-subscriber-relationship
Title:          "Health Data Connect Subscriber Relationship Code"
Description:    "IBM® Health Data Connect standard code for the relationship of the member to the contract holder."
* value[x] only string

Extension:      PlanEmployeeCode
Id:             plan-employee-code
Title:          "Plan Employee Code"
Description:    "Customer-specific code indicating whether the member is an employee of the health plan or the dependent of an employee of the health plan"
* value[x] only string
