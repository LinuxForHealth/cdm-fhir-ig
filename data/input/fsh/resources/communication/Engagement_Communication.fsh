Profile:        EngagementCommunication
Parent:         CDMCommunication
Id:             engagement-communication
Title:          "Engagement Communication"
Description:    "This profile is a record of an engagement communication to a patient including successful, planned, and failed communications."
* contained 0..0
* meta only ProcessMeta

* partOf 0..0
* inResponseTo 0..0
* topic 0..0
* encounter 0..0
* sent 0..0
* reasonCode 0..0
* reasonReference 0..0
* note 0..0

* basedOn only Reference(EngagementCommunicationRequest)

* statusReason from EngagementCommunicationStatusReasonValueSet (example)

* medium 1..1
* medium from EngagementCommunicationModeValueSet (preferred)
* medium ^short      = "Medium used as the mode of communication for engagement (phone | sms | email | mail | chat)"
* medium ^definition = "Medium used as the mode of communication for engagement (phone | sms | email | mail | chat)"

* about only Reference(MeasurePopulationObservation or CareGapDetectedIssue)

* extension contains ConversationType named conversationType 0..1
* extension[conversationType].valueCodeableConcept from EngagementConversationTypeValueSet (extensible)
* extension[conversationType] ^short      = "Type of conversation, used for ihe chat communications"
* extension[conversationType] ^definition = "Type of conversation, used for ihe chat communications"

* extension contains CommunicationReengagement named communicationReengagement 0..1
* extension[communicationReengagement] ^short      = "Sequence for subsequent communication attempts to reengage the patient"
* extension[communicationReengagement] ^definition = "Sequence for subsequent communication attempts to reengage the patient"

* extension[communicationTemplate] 1..1
* extension[communicationPayloadData] 1..1

* extension contains CommunicationRetryLimit named communicationRetryLimit 0..1
* extension[communicationRetryLimit] ^short      = "Retry limit configuration, may vary by medium and vendor"
* extension[communicationRetryLimit] ^definition = "Retry limit configuration, may vary by medium and vendor"

* extension contains SentToVendor named sentToVendor 0..*
* extension[sentToVendor] ^short      = "Records date/time and outcome of communications sent to vendor"
* extension[sentToVendor] ^definition = "Records date/time and outcome of communications sent to vendor"

* extension contains SentToRecipient named sentToRecipient 0..*
* extension[sentToRecipient] ^short      = "Records date/time and outcome of communication attempts with the recipient"
* extension[sentToRecipient] ^definition = "Records date/time and outcome of communication attempts with the recipient"
