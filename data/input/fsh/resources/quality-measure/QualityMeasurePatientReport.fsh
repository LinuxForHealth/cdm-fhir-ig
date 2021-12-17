Profile:        QualityMeasurePatientReport
Parent:         QualityMeasureReport
Id:             quality-measure-report-patient
Title:          "Patient Quality Measure Report"
Description:    "A quality measure report focused on a single patient"
* contained 0..*
* meta only ProcessMeta

* group.population[InitialPopulation].subjectResults 0..0
* group.population[InitialPopulation].count = 1

* group.population[Denominator].subjectResults 0..0
* group.population[Numerator].subjectResults 0..0

// Removed, some patients may be in in inital-population only, leaving denominator / numerator of zero
// * group.population[Denominator].count = 1
// * group.population[Numerator].count = 1

* extension contains MeasureReportAssignedPractitioner named measureReportAssignedPractitioner 0..1
* extension[measureReportAssignedPractitioner] ^short      = "The provider identifier of the physician(s) assigned to the rule measure using one of the physician attribution methods"
* extension[measureReportAssignedPractitioner] ^definition = "The provider identifier of the physician(s) assigned to the rule measure using one of the physician attribution methods"

* extension contains MeasureReportEvidence named measureReportEvidence 0..*
* extension[measureReportEvidence] ^short      = "Supporting evidence showing detailed data about why a patient qualified (or did not qualify) for measure rules"
* extension[measureReportEvidence] ^definition = "Supporting evidence showing detailed data about why a patient qualified (or did not qualify) for measure rules"
* extension[measureReportEvidence].extension[measureReportEvidenceText] ^short      = "Textual title or description of the rule section within a measure report"
* extension[measureReportEvidence].extension[measureReportEvidenceText] ^definition = "Textual title or description of the rule section within a measure report"
* extension[measureReportEvidence].extension[measureReportEvidenceValue] ^short      = "Output value of rule definition within a measure report"
* extension[measureReportEvidence].extension[measureReportEvidenceValue] ^definition = "Output value of rule definition within a measure report"
* extension[measureReportEvidence].extension[measureReportEvidencePopulationId] ^short      = "Population id of populations that reference or utilize the rule definition"
* extension[measureReportEvidence].extension[measureReportEvidencePopulationId] ^definition = "Population id of populations that reference or utilize the rule definition"

