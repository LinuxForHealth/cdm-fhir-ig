CodeSystem:     ErOrObservationRoomServiceCodeSystem
Id:             er-or-observation-room-service
Title:          "Er Or Observation Room Service Codes"
Description:    "Er Or Observation Room Service codes for claims"
* ^caseSensitive = true
* #1     "Emergency Room"                  "Indicates an ER revenue code (0450-0459) is present on a facility claim line for a given claim"
* #2     "Observation Room"                "Indicates an Observation Room revenue code (0762) is present on a facility claim line for a given claim"
* #3     "ER and Observation Room"         "Indicates and ER and Observation Room revenue code (0450-0459, 0762) is present facility claim lines for a given claim"

ValueSet:       ErOrObservationRoomServiceValueSet
Id:             er-or-observation-room-service
Title:          "Er Or Observation Room Service Value Set"
Description:    "Er Or Observation Room Service value set for claims"
* codes from system ErOrObservationRoomServiceCodeSystem
