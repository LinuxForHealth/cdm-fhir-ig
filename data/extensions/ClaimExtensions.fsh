Extension:      AggregateClaimIndicator
Id:             aggregate-claim-indicator
Title:          "Aggregate Claim Indicator"
Description:    "Indicator that identifies whether this claim record is included in the adjustment processing of the aggregate build logic for admissions, episodes or DCGs"
* value[x] only string

Extension:      CapitatedServiceIndicator
Id:             capitated-service-indicator
Title:          "Capitated Service Indicator"
Description:    "Indicator that this service (encounter record) was capitated"
* value[x] only string

Extension:      ClaimItemDetailClassification
Id:             claim-item-detail-classification
Title:          "Claim Item Detail Classification"
Description:    "Classification of the information contained in this claim item detail section"    
* value[x] only CodeableConcept

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
Description:    "Indicator of whether the product is a compound drug or not"    
* value[x] only CodeableConcept

Extension:      CrossoverIndicator
Id:             crossover-indicator
Title:          "Crossover Indicator"
Description:    "Indicator specifying whether the claim is a crossover claim where a portion is paid by Medicare"
* value[x] only string

Extension:      EmployeeBusinessUnit
Id:             employee-business-unit
Title:          "Employee Business Unit"
Description:    "Business unit of the subscriber as reported on the claim"    
* value[x] only CodeableConcept

Extension:      Employer
Id:             employer
Title:          "Employer Code"
Description:    "Customer-specific code for the employer as reported on the claim record"    
* value[x] only CodeableConcept

Extension:      FinancialSystem
Id:             financial-system
Title:          "Financial System"
Description:    "Customer-specific code for the financial system"   
* value[x] only CodeableConcept

Extension:      FullyInsuredIndicator
Id:             fully-insured-indicator
Title:          "Fully Insured Indicator"
Description:    "Indicator that the claim was for a fully insured plan"
* value[x] only string

Extension:      HipaaClaimCategory
Id:             hipaa-claim-category
Title:          "HIPAA Claim Category"
Description:    "Standard HIPAA code for the category of the claim status"   
* value[x] only CodeableConcept
* valueCodeableConcept from CLAIM-STATUS-CATEGORY (extensible)

Extension:      HipaaClaimStatus
Id:             hipaa-claim-status
Title:          "HIPAA Claim Status"
Description:    "Standard HIPAA code for the status of an entire claim"   
* value[x] only CodeableConcept
* valueCodeableConcept from CLAIM-STATUS (extensible)

Extension:      LastClaimIndicator
Id:             last-claim-indicator
Title:          "Last Claim Indicator"
Description:    "Indicator that identifies whether this claim record is the last or most recent claim"   
* value[x] only string

Extension:      LineOfBusiness
Id:             line-of-business
Title:          "Line Of Business"
Description:    "Customer-specific code for the line of business"   
* value[x] only CodeableConcept

Extension:      LocalNumberOfUnitsPerService
Id:             local-number-of-units-per-service
Title:          "Local Number Of Units Per Service"
Description:    "Customer-specific quantity of either services or units"
* value[x] only Quantity

Extension:      NetworkId
Id:             network-id
Title:          "Network Id"
Description:    "Customer-specific identifier of the patient provider network in which the member is enrolled"
* value[x] only string

Extension:      NursingHomeIndicator
Id:             nursing-home-indicator
Title:          "Nursing Home Indicator"
Description:    "Indicator that the claim was for a nursing home patient"
* value[x] only string

Extension:      ReferralIndicator
Id:             referral-indicator
Title:          "Referral Indicator"
Description:    "Indicator signifying the service resulted from a referral"
* value[x] only string

Extension:      RxCount
Id:             rx-count
Title:          "RX Count"
Description:    "Count of prescriptions for the drug claim"
* value[x] only unsignedInt

Extension:      SubmissionType
Id:             submission-type
Title:          "Submission Type"
Description:    "Customer-specific code for the type of electronic submission"   
* value[x] only CodeableConcept

Extension:      WhPayerPcpResponsibilityIndicator
Id:             wh-payer-pcp-responsibility-indicator
Title:          "Health Data Connect PCP Responsibility Indicator"
Description:    "Indicator signifying that the primary care physician is the physician considered either responsible or accountable for this claim"
* value[x] only string
