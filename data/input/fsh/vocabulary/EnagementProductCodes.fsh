CodeSystem:     EngagementProductCodeSystem
Id:             eng-product
Title:          "Engagement Product Codes"
Description:    "LinuxForHealth engagement products"
* ^caseSensitive = true
* #campaign             "Campaign"      "Custom campaigns configured for patient engagment"
* #care-gap             "Care Gap"      "Automated comminications based on cohorting and patient care gaps"
* #appt-reminder        "Remind"        "Automated appointment reminders"

ValueSet:       EngagementProductValueSet
Id:             eng-product
Title:          "Engagement Product Value Set"
Description:    "LinuxForHealth engagement products"
* codes from system EngagementProductCodeSystem
