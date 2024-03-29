CodeSystem:     EngagementCommunicationModeCodeSystem
Id:             eng-communication-mode
Title:          "Engagement Communication Mode Codes"
Description:    "Communication modes supported for Engagement communication"
* ^caseSensitive = true
* #chat         "Chat"      "Conversational chat messaging"
* #email        "Email"     "Email messaging"
* #mail         "Mail"      "Postal mail messaging"
* #phone        "Phone"     "Voice messaging by phone"
* #sms          "Sms Text"  "SMS text messaging"

ValueSet:       EngagementCommunicationModeValueSet
Id:             eng-communication-mode
Title:          "Engagement Communication Mode Value Set"
Description:    "Communication modes supported for Engagement communication"
* codes from system EngagementCommunicationModeCodeSystem
