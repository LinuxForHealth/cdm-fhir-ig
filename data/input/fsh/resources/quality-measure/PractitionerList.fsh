Profile:        PractitionerList
Parent:         List
Id:             practitioner-list
Title:          "Practitioner List"
Description:    "A list of references to specific practitioners"
* contained 0..0
* meta only ProcessMeta

* status = #current
* mode = #working
* title 0..0
* code 0..0
* subject 0..0
* encounter 0..0
* date 0..0
* source 0..0
* orderedBy 0..0
* note 0..0
* entry.item only Reference(Practitioner)
