Instance:       QualityMeasurePatientReportExample
InstanceOf:     QualityMeasurePatientReport
Usage:          #example
Title:          "Quality Measure Report Example - Patient"
Description:    "Example measure report containing individual measure results for a single patient"

* meta.source = "http://linuxforhealth.org/platform/measure-cohort"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/quality-measure-report-patient"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"
* meta.extension[processOrganization].valueString = "HDC"
* meta.extension[processType].valueString = "Cohorting"
* meta.extension[processName].valueString = "Powersearch"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-02-12T02:01:00Z"
* meta.tag = ProcessMetaSourceClassification#derived

* identifier.type = ID-TYPE#RI
* identifier.system = "http://linuxforhealth.org/platform/quality-measure-report"
* identifier.value = "de25d288-120e-47c1-bb76-caac8bc3f439"
* identifier.assigner.display = "HDC"

* status = #complete
* type = #individual
* subject = Reference(CDMPatientInstance)
* date = "2020-03-01T03:00:00Z"
* extension[measureReportAssignedPractitioner].valueReference = Reference(CDMPractitionerRole-Attributed-PCP)
* reporter = Reference(HDC)

* period.start = "2020-01-01"
* period.end = "2020-12-31"

* measure = Canonical(QualityMeasureExample)

* improvementNotation = MEASURE-IMPROVEMENT-NOTATION#increase

* group.population[InitialPopulation].id = "dm-hba1c-initial-pop"
* group.population[InitialPopulation].code = MEASURE-POPULATION#initial-population
* group.population[InitialPopulation].count = 1

* group.population[Denominator].id = "dm-hba1c-den"
* group.population[Denominator].code = MEASURE-POPULATION#denominator
* group.population[Denominator].count = 1

* group.population[Numerator].id = "dm-hba1c-num"
* group.population[Numerator].code = MEASURE-POPULATION#numerator
* group.population[Numerator].count = 0

* group.population[CareGap].id = "dm-hba1c-caregap"
* group.population[CareGap].code = MeasurePopulationTypeCodeSystem#care-gap
* group.population[CareGap].count = 1

// Measure score value is required for proportion measures
* group.measureScore.value = 0.0

* extension[measureParameterValue][0].valueParameterDefinition.name = #measurePeriod
* extension[measureParameterValue][0].valueParameterDefinition.use = #out
* extension[measureParameterValue][0].valueParameterDefinition.type = #Period
* extension[measureParameterValue][0].valueParameterDefinition.extension[parameterValue].valuePeriod.start = "2019-02-13"
* extension[measureParameterValue][0].valueParameterDefinition.extension[parameterValue].valuePeriod.end = "2020-02-12"

* extension[measureParameterValue][1].valueParameterDefinition.name = #complianceDisplayName
* extension[measureParameterValue][1].valueParameterDefinition.use = #out 
* extension[measureParameterValue][1].valueParameterDefinition.type = #string
* extension[measureParameterValue][1].valueParameterDefinition.extension[parameterValue].valueString = "HbA1c Testing"

* extension[measureParameterValue][2].valueParameterDefinition.name = #complianceFrequency
* extension[measureParameterValue][2].valueParameterDefinition.use = #out
* extension[measureParameterValue][2].valueParameterDefinition.type = #string
* extension[measureParameterValue][2].valueParameterDefinition.extension[parameterValue].valueString = "Once yearly"

* extension[measureReportEvidence][0].extension[measureReportEvidenceText].valueString = "Patient is adult 18-75"
* extension[measureReportEvidence][0].extension[measureReportEvidenceValue].valueBoolean = true
* extension[measureReportEvidence][1].extension[measureReportEvidenceText].valueString = "Patient is diabetic"
* extension[measureReportEvidence][1].extension[measureReportEvidenceValue].valueBoolean = true
* extension[measureReportEvidence][2].extension[measureReportEvidenceText].valueString = "Patient had HbA1c test in meeasurement period"
* extension[measureReportEvidence][2].extension[measureReportEvidenceValue].valueBoolean = false
