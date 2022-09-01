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

Extension:     SnapshotAgeInWeeks
Id:            snapshot-age-in-weeks
Title:         "Snapshot Age in Weeks"
Description:   "Age in weeks at the time of the event"
* value[x] only unsignedInt

Extension:     SnapshotAgeInMonths
Id:            snapshot-age-in-months
Title:         "Snapshot Age in Months"
Description:   "Age in months at the time of the event"
* value[x] only unsignedInt

Extension:      SnapshotAgeInYears
Id:             snapshot-age-in-years
Title:          "Snapshot Age In Years"
Description:    "Age in years at the time of the event"
* value[x] only unsignedInt

Extension:      SnapshotAgeCalculated
Id:             snapshot-age-calculated
Title:          "Snapshot Age Calculated"
Description:    "Date indicating when the age fields were calculated"
* value[x] only dateTime

Extension:      EmployeeSnapshotAgeInYears
Id:             employee-snapshot-age-in-years
Title:          "Employee Age In Years"
Description:    "Age in years at the time of the event for the employee"
* value[x] only unsignedInt
