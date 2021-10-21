Alias: USCoreRace = http://hl7.org/fhir/us/core/StructureDefinition/us-core-race
Alias: USCoreEthnicity = http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity
Alias: PatientImportance = http://hl7.org/fhir/StructureDefinition/patient-importance

Extension:      Ethnicity
Id:             ethnicity
Title:          "Ethnicity Code"
Description:    "Customer-specific code for the ethnicity of the person"
* value[x] only CodeableConcept

Extension:      FamilyId
Title:          "Family Id"
Description:    "The unique identifier for the subscriber (contract holder, employee) and the associated dependents"
Id:             family-id
* value[x] only Identifier

Extension:      MemberImmigrationStatus
Id:             member-immigration-status
Title:          "Member Immigration Status"
Description:    "Customer-specific code for the immigration status of the person"
* value[x] only CodeableConcept

Extension:      StatusCode
Id:             status-code
Title:          "Status Code"
Description:    "Customer-specific patient status codes"
* value[x] only CodeableConcept
* valueCodeableConcept from PatientStatusValueSet (example)

Extension:      LanguageRank
Id:             language-rank
Title:          "Language Rank"
Description:    "Specify preferred order of language use (1 = highest)"
* value[x] only positiveInt

Extension:      CommunicationOptOut
Id:             communication-opt-out
Title:          "Communication Opt-Out"
Description:    "Opt-out patient for communications by product and/or mode"
* extension contains 
    CommunicationProduct named communicationProduct 0..1 and
    CommunicationMode named communicationMode 0..1 and
    ConversationType named conversationType 0..1 and
    CommunicationCareGap named communicationCareGap 0..1 and
    StatedReason named statedReason 0..1 and
    EffectivePeriod named effectivePeriod 0..1
* extension[communicationProduct].valueCodeableConcept from EngagementProductValueSet (extensible)
* extension[communicationProduct] ^short      = "Applies opt-out for a specific product"
* extension[communicationProduct] ^definition = "Applies opt-out for a specific product"
* extension[communicationMode].valueCodeableConcept from EngagementCommunicationModeValueSet (preferred)
* extension[communicationMode] ^short      = "Applies opt-out for specific mode of communication (phone | sms | email | mail | chat)"
* extension[communicationMode] ^definition = "Applies opt-out for specific mode of communication (phone | sms | email | mail | chat)"
* extension[conversationType].valueCodeableConcept from EngagementConversationTypeValueSet (extensible)
* extension[conversationType] ^short      = "Applies opt-out for a specific conversation type"
* extension[conversationType] ^definition = "Applies opt-out for a specific conversation type"
* extension[communicationCareGap] ^short      = "Applies opt-out for a specific care gap"
* extension[communicationCareGap] ^definition = "Applies opt-out for a specific care gap"
* extension[statedReason].valueCodeableConcept from EngagementOptOutReasonValueSet (extensible)
* extension[statedReason] ^short      = "Recorded reason the recipient requested the opt-out"
* extension[statedReason] ^definition = "Recorded reason the recipient requested the opt-out"
* extension[effectivePeriod] ^short      = "Effective period for the opt-out"
* extension[effectivePeriod] ^definition = "Effective period for the opt-out"

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

Extension:      LocalRaceCd
Id:             local-race-cd
Title:          "Local Race Code"
Description:    "Customer-specific code for the race of the person"
* value[x] only CodeableConcept

Extension:      PatientCitizenship
Id:             patient-citizenship
Title:          "Patient Citizenship"
Description:    "Code to identify if the person is a U.S. Citizen"
* value[x] only CodeableConcept

Extension:      NonstandardLanguage
Id:             nonstandard-language
Title:          "Nonstandard Language"
Description:    "Customer-specific code for the language of the person"
* value[x] only CodeableConcept

Extension:      VeteranIndicator
Id:             veteran-indicator
Title:          "Veteran Indicator"
Description:    "Indicates whether the individual served in the active military, naval, or air service"
* value[x] only string
