Extension:      EpisodeBodySystem
Id:             episode-body-system
Title:          "Episode Body System"
Description:    "Body system related to the episode of care"
* value[x] only string

Extension:      EpisodeSummaryGroupCode
Id:             episode-summary-group-code
Title:          "Episode Summary Group Code"
Description:    "Summary group code for the episode of care"
* value[x] only code

Extension:      EpisodeDerivedIndicator
Id:             episode-derived-indicator
Title:          "Episode Derived Indicator"
Description:    "Derived indicator for the episode of care"
* value[x] only boolean
* valueBoolean = true

Extension:      EpisodeDerivedCode
Id:             episode-derived-code
Title:          "Episode Derived Code"
Description:    "Derived code for the episode of care"
* value[x] only code
* valueCode = IdentifierTypeCodeSystem#DRI

Extension:      EpisodePrimaryPhysician
Id:             episode-primary-physician
Title:          "Episode Primary Physician"
Description:    "Primary physician associated with the episode of care"
* value[x] only Reference(Practitioner)

Extension:      EpisodeRxCount
Id:             episode-rx-count
Title:          "Episode Rx Count"
Description:    "Count of medications for the episode of care"
* value[x] only integer

Extension:      EpisodeProcedureTypeCode
Id:             episode-procedure-type-code
Title:          "Episode Procedure Type Code"
Description:    "Primary procedure type AHRQ code for the episode of care"
* value[x] only code

Extension:      EpisodeUseScale
Id:             episode-use-scale
Title:          "Episode Use Scale"
Description:    "Use scale for the episode of care"
* value[x] only integer

Extension:      EpisodeDiseaseStageCode
Id:             episode-disease-stage-code
Title:          "Episode Disease Stage Code"
Description:    "Disease stage code for the episode of care"
* value[x] only code

Extension:      EpisodeDuration
Id:             episode-duration
Title:          "Episode Duration (Days)"
Description:    "Duration of the episode of care, specified in days"
* value[x] only integer

Extension:      EpisodeCostScale
Id:             episode-cost-scale
Title:          "Episode Cost Scale"
Description:    "Cost scale of the episode of care"
* value[x] only integer

Extension:      EpisodeGroupCode
Id:             episode-group-code
Title:          "Episode Group Code"
Description:    "Group code for the episode of care"
* value[x] only code
   
Extension:      EpisodeAdmitCount
Id:             admit-count-epis
Title:          "Episode Admit Count"
Description:    "Number of admissions related to the episode of care"
* value[x] only integer

Extension:      AllowedAmountInpatient
Id:             allowed-amount-inpatient-epis
Title:          "Allowed Amount Inpatient (USD)"
Description:    "Allowed amount for an in-patient, in USD"
* value[x] only Money
* valueMoney.currency = CURRENCY#USD

Extension:      AllowedAmountManagingPhysician
Id:             allowed-amount-managing-phys-epis
Title:          "Allowed Amount Managing Physician (USD)"
Description:    "Allowed amount for the managing physician, in USD"
* value[x] only Money
* valueMoney.currency = CURRENCY#USD

Extension:      EpisodeAllowedAmountOutpatient
Id:             episode-allowed-amount-outpatient
Title:          "Episode Allowed Amount Outpatient (USD)"
Description:    "Allowed amount for an out-patient episode, in USD"
* value[x] only Money
* valueMoney.currency = CURRENCY#USD

Extension:      EpisodeAllowedAmountPCP
Id:             episode-allowed-amount-pcp
Title:          "Episode Allowed Amount PCP (USD)"
Description:    "Allowed amount per episide for the primary care physician, in USD"
* value[x] only Money
* valueMoney.currency = CURRENCY#USD

Extension:      EpisodeAllowedAmountPrimaryPhysician
Id:             episode-allowed-amount-primary-physician
Title:          "Episode Allowed Amount Primary Physician (USD)"
Description:    "Allowed amount per episide for the primary physician, in USD"
* value[x] only Money
* valueMoney.currency = CURRENCY#USD

Extension:      EpisodeAllowedAmountRx
Id:             episode-allowed-amount-rx
Title:          "Episode Allowed Amount Rx (USD)" 
Description:    "Allowed amount per episode for the medications, in USD"
* value[x] only Money
* valueMoney.currency = CURRENCY#USD

Extension:      EpisodeAllowedAmountTotal
Id:             episode-allowed-amount-total
Title:          "Episode Allowed Amount Total (USD)"
Description:    "Total allowed amount per episode, in USD"
* value[x] only Money
* valueMoney.currency = http://hl7.org/fhir/ValueSet/currencies#USD
