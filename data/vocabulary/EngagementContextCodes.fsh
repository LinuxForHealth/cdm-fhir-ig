CodeSystem:     EngagementContextCodeSystem
Id:             eng-product
Title:          "Engagement Context Codes"
Description:    "Context for an engagement action "
* #campaign     "Campaign"      "Custom campaign for patient engagement"
* #appointment-reminder         "Remind"        "Automated apppointment reminders"
* #health-reminder            "Remind"          "Health reminders associated with a clinical diagnosis, care gap, or other treatment opportunities"

ValueSet:       EngagementContextValueSet
Id:             eng-product
Title:          "Engagement Context Value Set"
Description:    "Context for an engagement action"
* codes from system EngagementContextCodeSystem
