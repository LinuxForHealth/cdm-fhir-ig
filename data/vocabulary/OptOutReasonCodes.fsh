CodeSystem: OptOutReasonCodeSystem
Id:         opt-out-reason
Title:      "Opt-Out Reason Codes"
Description: "Codes indicating reasons patients may specify for opting-out of communications"
* #not-interested     "Individual has requested to no longer be contacted in this context."
* #invalid-contact    "Contact information is not valid to reach the desired individual."
* #deceased           "Individual is no longer living."
* #unknown            "Reason is unknown"
* #other              "Other reason not already listed"

ValueSet:       OptOutReasonValueSet
Id:             opt-out-reason
Title:          "Opt-Out Reason Value Set"
Description:    "Codes indicating reasons patients may specify for opting-out of communications"
* codes from system OptOutReasonCodeSystem