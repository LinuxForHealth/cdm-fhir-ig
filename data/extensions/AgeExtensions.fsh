Extension:     AgeGroup
Id:            age-group
Title:         "Age Group"
Description:   "Standard code for age groupings"
* value[x] only CodeableConcept
* valueCodeableConcept from AgeGroupValueSet (extensible)

Extension:     AgeGenderGroup
Id:            age-gender-group
Title:         "Age and Gender Groups"
Description:   "Standard code for groupings that combine age and gender"
* value[x] only CodeableConcept
* valueCodeableConcept from AgeGenderGroupValueSet (extensible)

Extension:     SnapshotAgeInMonths
Id:            snapshot-age-in-months
Title:         "Snapshot Age in months"
Description:   "Age in months at the time of the event"
* value[x] only unsignedInt

Extension:      SnapshotAgeInYears
Id:             snapshot-age-in-years
Title:          "Age In Years"
Description:    "Age in years at the time of the event"
* value[x] only unsignedInt
