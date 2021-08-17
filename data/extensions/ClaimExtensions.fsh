Extension:      CapitatedServiceIndicator
Id:             capitated-service-indicator
Title:          "Capitated Service Indicator"
Description:    "An indicator that this service (encounter record) was capitated"
* value[x] only string

Extension:      ClaimItemDetailClassification
Id:             claim-item-detail-classification
Title:          "Claim Item Detail Classification"
Description:    "Classification of the information contained in this claim item detail section"    
* value[x] only CodeableConcept

Extension:      ClaimSnapshotProviderName
Id:             claim-snapshot-provider-name
Title:          "Claim Snapshot Provider Name"
Description:    "The original provider name as reported on the claim"
* value[x] only string

Extension:      ClaimSnapshotProviderZipCode
Id:             claim-snapshot-provider-zip-code
Title:          "Claim Snapshot Provider Zip Code"
Description:    "The original provider postal code, as reported on the claim"
* value[x] only string

Extension:      CompanyCode
Id:             company-code
Title:          "Company Code"
Description:    "The company code of the subscriber as reported on the claim"    
* value[x] only CodeableConcept

Extension:      CompoundCode
Id:             compound-code
Title:          "Compound Code"
Description:    "Indicator of whether the product is a compound drug or not"    
* value[x] only CodeableConcept

Extension:      EmployeeBusinessUnit
Id:             employee-business-unit
Title:          "Employee Business Unit"
Description:    "The business unit of the subscriber as reported on the claim"    
* value[x] only CodeableConcept

Extension:      LocalNumberOfUnitsPerService
Id:             local-number-of-units-per-service
Title:          "Local Number Of Units Per Service"
Description:    "Customer-specific quantity of either services or units"
* value[x] only Quantity

Extension:      MajorDiagnosticCategory 
Id:             major-diagnostic-category 
Title:          "Major Diagnostic Category"
Description:    "Body-system or disease related groupings of clinical conditions, based on diagnosis codes" 
* value[x] only CodeableConcept 
* valueCodeableConcept from WHPayerMajorDiagnosticCategoryValueSet (extensible)

Extension:      NetworkId
Id:             network-id
Title:          "Network Id"
Description:    "Customer-specific identifier of the patient provider network in which the member is enrolled"
* value[x] only string

Extension:      ProcedureGroup
Id:             procedure-group
Title:          "Procedure Group"
Description:    "The groups of related outpatient procedures"
* value[x] only CodeableConcept 
* valueCodeableConcept from WHPayerProcedureGroupValueSet (extensible)

Extension:      ReferralIndicator
Id:             referral-indicator
Title:          "Referral Indicator"
Description:    "An indicator signifying the service resulted from a referral"
* value[x] only string

Extension:      WhPayerPcpResponsibilityIndicator
Id:             wh-payer-pcp-responsibility-indicator
Title:          "Health Data Connect PCP Responsibility Indicator"
Description:    "An indicator signifying that the primary care physician is the physician considered either responsible or accountable for this claim"
* value[x] only string

