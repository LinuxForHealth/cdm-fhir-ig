Profile:        ReferenceWithReasonAndSequence
Parent:         Reference
Id:             reference-with-reason-and-sequence
Title:          "Reference With Reason And Sequence"
Description:    "A reference with one or more contextual reasons and optional sequence defining the order in which the reference is valid"
* extension contains ReasonSequence named reasonSequence 0..1
* extension[reasonSequence] ^short      = "Ordered rank in which the reason is provided"
* extension[reasonSequence] ^definition = "Ordered rank in which the reason is provided"
* extension contains ReasonReference named reasonReference 0..1
* extension[reasonReference] ^short      = "Reason that the reference resource was defined or provided"
* extension[reasonReference] ^definition = "Reason that the reference resource was defined or provided"

Extension:      ReasonSequence
Id:             reason-sequence
Title:          "Reason Sequence"
Description:    "Ordered rank in which the reason is provided. This can apply to any of the referenced resources. For example, Procedure ranked as 1, 2,3, etc."
* value[x] only positiveInt

Extension:      ReasonReference
Id:             reason-reference
Title:          "Reason Reference"
Description:    "Reason that the reference resource was defined or provided"
* value[x] only Reference(Condition or Procedure or Observation or ImmunizationRecommendation) 
