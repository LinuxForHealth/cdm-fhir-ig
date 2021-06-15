Profile:        QualityMeasurePractitionerReport
Parent:         QualityMeasureReport
Id:             quality-measure-report-practitioner
Title:          "Practitioner Quality Measure Report"
Description:    "A quality measure report focused on practitioner performance"
* contained 0..0
* meta only ProcessMeta

* subject only Reference(Practitioner or PractitionerRole)

* group.population.subjectResults 0..1
* group.population.subjectResults only Reference(PatientList)

* group.population[InitialPopulation].subjectResults 1..1
* group.population[InitialPopulation].subjectResults only Reference(PatientList)

// All patients could be in initial-population only, leaving a numerator / denomintor of zero
* group.population[Denominator].subjectResults 1..1
* group.population[Denominator].subjectResults only Reference(PatientList)
* group.population[Numerator].subjectResults 0..1
* group.population[Numerator].subjectResults only Reference(PatientList)
