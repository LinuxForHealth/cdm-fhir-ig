Alias: USCoreRace = http://hl7.org/fhir/us/core/StructureDefinition/us-core-race
Alias: USCoreEthnicity = http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity

Alias: PatientImportance = http://hl7.org/fhir/StructureDefinition/patient-importance

Extension: AgeGroupCode
Title: "Age Group Code"
Id: age-group-code
Description: "Age Group Code"
* value[x] only CodeableConcept

Extension: AgeRollupGroupCode
Title: "Age Rollup Group Code"
Id: age-rollup-group-code
Description: "Age Rollup Group Code"
* value[x] only CodeableConcept

Extension: AgeInMonths
Title: "Age in months"
Id: coverage-snapshot-age-in-months
* value[x] only Age
* value[x].unit = "months"
* value[x].code.value = "mo"
* value[x].system = "http://unitsofmeasure.org"

Extension: AgeInYears
Title: "Age in years"
Id: coverage-snapshot-age-in-years
* value[x] only Age
* value[x].unit = "years"
* value[x].code.value = "a"
* value[x].system = "http://unitsofmeasure.org"

Extension: FamilyId
Title: "Family Id"
Description: "The unique identifier for the subscriber (contract holder, employee) and the associated dependents."
Id: family-id
* value[x] only string

Extension:      StatusCode
Id:             status-code
Title:          "Status Code"
Description:    "Client-specific patient status codes."
* value[x] only CodeableConcept
* valueCodeableConcept from PatientStatusValueSet (example)

Extension:      LanguageRank
Id:             language-rank
Title:          "Language Rank"
Description:    "Specify preferred order of language use (1 = highest)."
* value[x] only positiveInt

Extension:      CommunicationOptOut
Id:             communication-opt-out
Title:          "Communication Opt-Out"
Description:    "Opt-out details for communication with an individual"
* extension contains 
    CommunicationProduct named communicationProduct 0..1 and
    CommunicationMode named communicationMode 0..1 and
    ConversationType named conversationType 0..1 and
    CommunicationCareGap named communicationCareGap 0..1 and
    StatedReason named statedReason 0..1 and
    EffectivePeriod named effectivePeriod 0..1
* extension[communicationProduct].valueCodeableConcept from EngagementContextValueSet (extensible)
* extension[communicationProduct] ^short = "Applies opt-out for a specific product or use case"
* extension[communicationMode].valueCodeableConcept from EngagementCommunicationModeValueSet (preferred)
* extension[communicationMode] ^short = "Applies opt-out for specific mode of communication (phone | sms | email | mail | chat)."
* extension[communicationCareGap] ^short = "Applies opt-out for a specific care gap"
* extension[statedReason].valueCodeableConcept from OptOutReasonValueSet (extensible)
* extension[statedReason] ^short = "Recorded reason the recipient requested the opt-out"
* extension[effectivePeriod] ^short = "Effective period for the opt-out"

Extension:      StatedReason
Id:             stated-reason
Title:          "Stated Reason"
Description:    "Recorded reason specified by the recipient"
* value[x] only CodeableConcept

Extension:      EffectivePeriod
Id:             effective-period
Title:          "Effective Period"
Description:    "Effective period"
* value[x] only Period