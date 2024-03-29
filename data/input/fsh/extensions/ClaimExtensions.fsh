Extension:      AdmitCount
Id:             admit-count
Title:          "Admit Count"
Description:    "Used to determine which facility claims should be counted as inpatient admissions"
* value[x] only integer

Extension:      AggregateClaimIndicator
Id:             aggregate-claim-indicator
Title:          "Aggregate Claim Indicator"
Description:    "Indicates whether this claim record is included in the adjustment processing of the aggregate build logic for admissions, episodes or DCGs"
* value[x] only string

Extension:      AverageWholesalePrice
Id:             average-wholesale-price
Title:          "Average Wholesale Price"
Description:    "The average wholesale price charged by wholesalers for the specific drug"
* value[x] only Money

Extension:      CapitatedServiceIndicator
Id:             capitated-service-indicator
Title:          "Capitated Service Indicator"
Description:    "Indicates whether this service (encounter record) was capitated"
* value[x] only string

Extension:      ClaimCategory
Id:             claim-category
Title:          "Claim Category"
Description:    "Standard HIPAA code for the category of the claim status"   
* value[x] only CodeableConcept
* valueCodeableConcept from CLAIM-STATUS-CATEGORY (extensible)

Extension:      ClaimItemDetailClassification
Id:             claim-item-detail-classification
Title:          "Claim Item Detail Classification"
Description:    "Classification of the information contained in this claim item detail section"    
* value[x] only CodeableConcept
* valueCodeableConcept from ClaimItemDetailClassificationValueSet (extensible)

Extension:      ClaimSnapshotProviderName
Id:             claim-snapshot-provider-name
Title:          "Claim Snapshot Provider Name"
Description:    "Original provider name as reported on the claim"
* value[x] only string

Extension:      ClaimSnapshotProviderZipCode
Id:             claim-snapshot-provider-zip-code
Title:          "Claim Snapshot Provider Zip Code"
Description:    "Original provider postal code, as reported on the claim"
* value[x] only string

Extension:      CompanyCode
Id:             company-code
Title:          "Company Code"
Description:    "Company code of the subscriber as reported on the claim"    
* value[x] only CodeableConcept

Extension:      CompoundCode
Id:             compound-code
Title:          "Compound Code"
Description:    "Customer-specific code for the compound of the drug"    
* value[x] only CodeableConcept

Extension:      CrossoverIndicator
Id:             crossover-indicator
Title:          "Crossover Indicator"
Description:    "Indicates whether the claim is a crossover claim where a portion is paid by Medicare"
* value[x] only string

Extension:      EmployeeBusinessUnit
Id:             employee-business-unit
Title:          "Employee Business Unit"
Description:    "Business unit of the subscriber as reported on the claim"    
* value[x] only CodeableConcept

Extension:      Employer
Id:             employer
Title:          "Employer"
Description:    "Code for the employer as reported on the claim record"    
* value[x] only CodeableConcept

Extension:      FinancialSystem
Id:             financial-system
Title:          "Financial System"
Description:    "Customer-specific code for the financial system"   
* value[x] only CodeableConcept

Extension:      FullyInsuredIndicator
Id:             fully-insured-indicator
Title:          "Fully Insured Indicator"
Description:    "Indicates whether the claim was for a fully insured plan"
* value[x] only string

Extension:      LastClaimIndicator
Id:             last-claim-indicator
Title:          "Last Claim Indicator"
Description:    "Indicates whether this claim record is the last or most recent claim"   
* value[x] only string

Extension:      LineOfBusiness
Id:             line-of-business
Title:          "Line Of Business"
Description:    "Code for the line of business"   
* value[x] only CodeableConcept

Extension:      LocalNumberOfUnitsPerService
Id:             local-number-of-units-per-service
Title:          "Local Number Of Units Per Service"
Description:    "Customer-specific quantity of either services or units"
* value[x] only Quantity

Extension:      MajorDiagnosticCategory 
Id:             major-diagnostic-category 
Title:          "Major Diagnostic Category"
Description:    "Body system or disease related groupings of clinical conditions, based on diagnosis codes" 
* value[x] only CodeableConcept 
* valueCodeableConcept from PayerMajorDiagnosticCategoryValueSet (extensible)

Extension:      NetworkId
Id:             network-id
Title:          "Network Id"
Description:    "Customer-specific identifier of the patient provider network in which the member is enrolled"
* value[x] only string

Extension:      NursingHomeIndicator
Id:             nursing-home-indicator
Title:          "Nursing Home Indicator"
Description:    "Indicates whether the claim was for a nursing home patient"
* value[x] only string

Extension:      ProcedureGroup
Id:             procedure-group
Title:          "Procedure Group"
Description:    "Code assigned to categorize related procedures"
* value[x] only CodeableConcept 
* valueCodeableConcept from PayerProcedureGroupValueSet (extensible)

Extension:      ParticipatingPlan
Id:             participating-plan
Title:          "Participating Plan"
Description:    "Customer-specific code for the participating plan"   
* value[x] only CodeableConcept

Extension:      PriorAuthorizationIndicator
Id:             prior-authorization-indicator
Title:          "Prior Authorization Indicator"
Description:    "Indicates prior authorization for the claim"
* value[x] only string

Extension:      ReferralIndicator
Id:             referral-indicator
Title:          "Referral Indicator"
Description:    "Indicates whether the service resulted from a referral"
* value[x] only string

Extension:      RxCount
Id:             rx-count
Title:          "RX Count"
Description:    "Count of prescriptions for the drug claim"
* value[x] only unsignedInt

Extension:      ServiceBillDaysCount
Id:             service-bill-days-count
Title:          "Service Bill Days Count"
Description:    "Number of days between the date of service and the date the claim was received"
* value[x] only unsignedInt

Extension:      PayerPcpResponsibilityIndicator
Id:             payer-pcp-responsibility-indicator
Title:          "Payer PCP Responsibility Indicator"
Description:    "Indicates whether the primary care physician is the physician considered either responsible or accountable for this claim"
* value[x] only string

// Extensions that are also used in ClaimResponse
Extension:      ClaimStatus
Id:             claim-status
Title:          "Claim Status"
Description:    "Code for the status of a claim"   
* value[x] only CodeableConcept

Extension:      SubmissionType
Id:             submission-type
Title:          "Submission Type"
Description:    "Customer-specific code for the type of electronic submission"   
* value[x] only CodeableConcept
