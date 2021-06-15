Extension:      CommunicationProduct
Id:             communication-product
Title:          "Communication Product"
Description:    "Product generating the communication"
* value[x] only CodeableConcept
* valueCodeableConcept from EngagementProductValueSet (extensible)

Extension:      CommunicationOnBehalfOf
Id:             communication-on-behalf-of
Title:          "Communication On-Behalf Of"
Description:    "Attributed provider, location, or organization communication is on-behalf of"
* value[x] only Reference(Practitioner or PractitionerRole or Organization or Location)

Extension:      CommunicationMeasure
Id:             communication-measure
Title:          "Communication Measure"
Description:    "Reference to the measure that resulted in the communication"
* value[x] only Reference(Measure)

Extension:      CommunicationCareGap
Id:             communication-care-gap
Title:          "Communication Care Gap"
Description:    "ID of care gap for which we are communicating"
* value[x] only string

Extension:      CommunicationPrioritySequence
Id:             communication-priority-sequence
Title:          "Communication Priority Sequence"
Description:    "Priority of the communication request (1 = highest)"
* value[x] only decimal

Extension:      CommunicationContact
Id:             communication-contact
Title:          "Communication Contact"
Description:    "Phone number, email, or address to contact"
* value[x] only CDMCommunicationContactPoint or Address

Extension:      CommunicationMode
Id:             communication-mode
Title:          "Communication Mode"
Description:    "Mode of communication (phone | sms | email | mail | chat)"
* value[x] only CodeableConcept 
* valueCodeableConcept from EngagementCommunicationModeValueSet (preferred)

Extension:      ConversationType
Id:             conversation-type
Title:          "Conversation Type"
Description:    "Type of conversation, used for ihe chat communications"
* value[x] only CodeableConcept
* valueCodeableConcept from EngagementConversationTypeValueSet (extensible)

Extension:      CommunicationLanguage
Id:             communication-language
Title:          "Communication Language"
Description:    "Language used for communication messaging content"
* value[x] only code
* valueCode from http://hl7.org/fhir/ValueSet/all-languages (preferred)

Extension:      CommunicationTemplate
Id:             communication-template
Title:          "Communication Template"
Description:    "ID or url reference to template to be used for communication"
* value[x] only string or Attachment

Extension:      CommunicationRetryLimit
Id:             communication-retry-limt
Title:          "Communication Retry Limit"
Description:    "Retry limit configuration, may vary by medium and vendor"
* value[x] only string or unsignedInt

Extension:      CommunicationPayloadData
Id:             communication-payload-data
Title:          "Communication Payload Data"
Description:    "Contains dynamic data elements and vendor / medium specific elements to be included in the message payload"
* value[x] only string

Extension:      CommunicationVendor
Id:             communication-vendor
Title:          "Communication Vendor"
Description:    "Vendor used to send the communication"
* value[x] only Reference(Organization)

////////////////////////////////////

Extension:      SentToVendor
Id:             sent-to-vendor
Title:          "Sent To Vendor"
Description:    "Records date/time and outcome of communications sent to vendor"
* extension contains
    CommunicationSentTime named communicationSentTime 0..1 and
    CommunicationOutcome named communicationOutcome 0..*
* extension[communicationSentTime] ^short      = "Time communication was attempted"
* extension[communicationSentTime] ^definition = "Time communication was attempted"
* extension[communicationOutcome] ^short      = "Vendor-specific communication response code or text"
* extension[communicationOutcome] ^definition = "Vendor-specific communication response code or text"

Extension:      SentToRecipient
Id:             sent-to-recipient
Title:          "Sent To recipient"
Description:    "Records date/time and outcome of communication attempts with the recipient"
* extension contains
    CommunicationSentTime named communicationSentTime 0..1 and
    CommunicationOutcome named communicationOutcome 0..*
* extension[communicationSentTime] ^short      = "Time communication was attempted"
* extension[communicationSentTime] ^definition = "Time communication was attempted"
* extension[communicationOutcome] ^short      = "Vendor-specific communication response code or text"
* extension[communicationOutcome] ^definition = "Vendor-specific communication response code or text"

Extension:      CommunicationSentTime
Id:             sent-time
Title:          "Communication Sent Time"
Description:    "Time communication was attempted"
* value[x] only dateTime

Extension:      CommunicationOutcome
Id:             outcome
Title:          "Communication Outcome"
Description:    "Vendor-specific communication response code or text"
* value[x] only CodeableConcept

///////////////////////////////////

Extension:      CommunicationReengagement
Id:             communication-reengagement
Title:          "Communication Reengagement"
Description:    "Sequence for subsequent communication attempts to reengage the patient"
* extension contains
    ReengagementValue named reengagementValue 0..1 and
    ReengagementDisplay named reengagementDisplay 0..1
* extension[reengagementValue] ^short      = "Communication reengagement sequence value"
* extension[reengagementValue] ^definition = "Communication reengagement sequence value"
* extension[reengagementDisplay] ^short      = "Communication reengagement sequence display text"
* extension[reengagementDisplay] ^definition = "Communication reengagement sequence display text"

Extension:      ReengagementValue
Id:             reengagement-value
Title:          "ReengagementValue"
Description:    "Communication reengagement sequence value"
* value[x] only unsignedInt

Extension:      ReengagementDisplay
Id:             reengagement-display
Title:          "Reengagement Display"
Description:    "Communication reengagement sequence display text"
* value[x] only string

///////////////////////////////////
