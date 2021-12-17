Extension:      CareGapComplianceDisplayName
Id:             care-gap-compliance-display-name
Title:          "CareGapComplianceEventDisplayName"
Description:    "Text describing the treatment or compliance event required to close the care gap.  Should be suitable for display to patient."
* value[x] only string

Extension:      CareGapComplianceFrequency
Id:             care-gap-compliance-frequency
Title:          "CareGapComplianceFrequency"
Description:    "Text describing the frequency of the treatment or compliance event required to close the care gap.  Frequency should be suitable for display to patient."
* value[x] only string

Extension:      CareGapComplianceMet
Id:             care-gap-compliance-met
Title:          "CareGapComplianceMet"
Description:    "Indicates if the patient received the targeted treatment to close the care gap."
* value[x] only boolean

Extension:      RelatedIssue
Id:             related-issue
Title:          "RelatedIssue"
Description:    "Related issues that can be combined to fulfill a single time period for a given care gap."
* value[x] only Reference(CareGapDetectedIssue)
