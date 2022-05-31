Profile:        EngagementCommunicationRequest
Parent:         CDMCommunicationRequest
Id:             engagement-communication-request
Title:          "Engagement CommunicationRequest"
Description:    "This profile is a record of an engagement request for a communication to a patient."

* contained 0..0
* meta only ProcessMeta

* basedOn 0..0
* doNotPerform 0..0
* encounter 0..0
* reasonCode 0..0
* reasonReference 0..0
* note 0..0

* statusReason from EngagementCommunicationRequestStatusReasonValueSet (example)

* medium 1..1
* medium from EngagementCommunicationModeValueSet (preferred)
* medium ^short      = "Medium used as the mode of communication for engagement (phone | sms | email | mail | chat)"
* medium ^definition = "Medium used as the mode of communication for engagement (phone | sms | email | mail | chat)"

* about only Reference(MeasurePopulationObservation or CareGapDetectedIssue)

* extension contains ConversationType named conversationType 0..1
* extension[conversationType].valueCodeableConcept from EngagementConversationTypeValueSet (extensible)
* extension[conversationType] ^short      = "Type of conversation, used for chat communications"
* extension[conversationType] ^definition = "Type of conversation, used for chat communications"

* extension contains CommunicationReengagement named communicationReengagement 0..1
* extension[communicationReengagement] ^short      = "Sequence for subsequent communication attempts to reengage the patient"
* extension[communicationReengagement] ^definition = "Sequence for subsequent communication attempts to reengage the patient"

* extension[communicationTemplate] 1..1
* extension[communicationPayloadData] 1..1

* extension contains CommunicationRetryLimit named communicationRetryLimit 0..1
* extension[communicationRetryLimit] ^short      = "Retry limit configuration, may vary by medium and vendor"
* extension[communicationRetryLimit] ^definition = "Retry limit configuration, may vary by medium and vendor"
