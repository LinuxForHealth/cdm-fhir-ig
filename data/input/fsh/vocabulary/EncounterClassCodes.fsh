CodeSystem: EncounterClassCodeSystem
Id:         encounter-class
Title:      "Encounter Class Codes"
Description: "Extended class codes for encounters"
* ^caseSensitive = true
* #OTHER                    "other"       "Class of the encounter does not fit other classifications"
* #UNKNOWN                  "unknown"       "Class of the encounter is unknown or unspecified"

ValueSet:       EncounterClassValueSet
Id:             encounter-class
Title:          "Encounter Class Value Set"
Description:    "Extended class codes for encounters"
* codes from system http://terminology.hl7.org/CodeSystem/v3-ActCode
* codes from system EncounterClassCodeSystem
