Profile:        ReferenceWithSequence
Parent:         Reference
Id:             reference-with-sequence
Title:          "Reference With Sequence"
Description:    "A reference with an optional sequence defining the order in which the reference is considered"
* extension contains ReferenceSequence named referenceSequence 0..1
* extension[referenceSequence] ^short      = "Ordered rank of the reference"
* extension[referenceSequence] ^definition = "Ordered rank of the reference"

Extension:      ReferenceSequence
Id:             reference-sequence
Title:          "Reference Sequence"
Description:    "Ordered rank of the reference. This can apply to any of the referenced resources. For example, Procedure ranked as 1, 2,3, etc."
* value[x] only positiveInt
