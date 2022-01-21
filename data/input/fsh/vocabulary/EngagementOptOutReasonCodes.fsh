CodeSystem: EngagementOptOutReasonCodeSystem
Id:         eng-opt-out-reason
Title:      "Engagement Opt-Out Reason Codes"
Description: "Codes indicating reasons patients may specify for opting-out of Engagement communications"
* ^caseSensitive = true
* #email-health-related     "I don't want to receive health related information via email"
* #email-address-change     "I have changed my email address"
* #sms-health-related       "I don't want to receive health related information via sms"
* #unintended-recipient     "I am not the intended recipient"
* #unknown                  "Unknown reason"
* #other                    "Other"

ValueSet:       EngagementOptOutReasonValueSet
Id:             eng-opt-out-reason
Title:          "Engagement Opt-Out Reason Value Set"
Description:    "Codes indicating reasons patients may specify for opting-out of Engagement communications"
* codes from system EngagementOptOutReasonCodeSystem
