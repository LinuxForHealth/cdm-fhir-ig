Instance:       QualityMeasurePractitionerReportExample
InstanceOf:     QualityMeasurePractitionerReport
Usage:          #example
Title:          "Quality Measure Report Example - Practitioner"
Description:    "Example measure report containing measure results for an attributed practitioner"

// Adding inline resourcse as contained resources for references
// The contained resources and inline examples are not represented as examples in the IG
// This trick prevents QA broken link errors im the IG, without having to have too many examples
* contained[0] = Patient1
* contained[1] = Patient2
* contained[2] = Patient3
* contained[3] = Patient4
* contained[4] = Patient5
* contained[5] = InitialPopulationPatientList
* contained[6] = DenominatorPatientList
* contained[7] = NumeratorPatientList
* contained[8] = CareGapPatientList

* meta.source = "http://ibm.com/fhir/measure-cohort"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/quality-measure-report-practitioner"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"
* meta.extension[processOrganization].valueString = "IBM"
* meta.extension[processType].valueString = "Cohorting"
* meta.extension[processName].valueString = "Powersearch"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-02-12T02:01:00Z"
* meta.tag = ProcessMetaSourceClassification#derived

* identifier.type = ID-TYPE#RI
* identifier.system = "http://ibm.com/fhir/cdm/quality-measure-report"
* identifier.value = "36864f66-df3a-47c0-92e2-e8ec2e46eedb"
* identifier.assigner.display = "IBM"

* status = #complete
* type = #subject-list
* subject = Reference(CDMPractitionerRole-Attributed-PCP)
* date = "2020-03-01T03:00:00Z"
* reporter = Reference(IBM)

* period.start = "2020-01-01"
* period.end = "2020-12-31"

* measure = Canonical(QualityMeasureExample)

* improvementNotation = MEASURE-IMPROVEMENT-NOTATION#increase

* group.population[0].id = "dm-hba1c-initial-pop"
* group.population[0].code = MEASURE-POPULATION#initial-population
* group.population[0].subjectResults = Reference(InitialPopulationPatientList)

* group.population[1].id = "dm-hba1c-den"
* group.population[1].code = MEASURE-POPULATION#denominator
* group.population[1].subjectResults = Reference(DenominatorPatientList)

* group.population[2].id = "dm-hba1c-num"
* group.population[2].code = MEASURE-POPULATION#numerator
* group.population[2].subjectResults = Reference(NumeratorPatientList)

* group.population[3][0].id = "dm-hba1c-caregap"
* group.population[3][0].code = MeasurePopulationTypeCodeSystem#care-gap
* group.population[3][0].subjectResults = Reference(CareGapPatientList)

// We should not have both a count and subjectResult list
// You shoould include one or the other
//* group.population[0].count = 5
//* group.population[1].count = 4
//* group.population[2].count = 3
//* group.population[3].count = 1

// Measure score value is required for proportion measures
* group.measureScore.value = 0.75

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

Instance:       InitialPopulationPatientList
InstanceOf:     List
Usage:          #inline
* status = #current
* mode = #working
* entry[0].item = Reference(Patient1)
* entry[1].item = Reference(Patient2)
* entry[2].item = Reference(Patient3)
* entry[3].item = Reference(Patient4)
* entry[4].item = Reference(Patient5)

Instance:       DenominatorPatientList
InstanceOf:     List
Usage:          #inline
* status = #current
* mode = #working
* entry[0].item = Reference(Patient1)
* entry[1].item = Reference(Patient2)
* entry[2].item = Reference(Patient3)
* entry[3].item = Reference(Patient4)

Instance:       NumeratorPatientList
InstanceOf:     PatientList
Usage:          #inline
* status = #current
* mode = #working
* entry[0].item = Reference(Patient1)
* entry[1].item = Reference(Patient2)
* entry[2].item = Reference(Patient3)

Instance:       CareGapPatientList
InstanceOf:     PatientList
Usage:          #inline
* status = #current
* mode = #working
* entry[0].item = Reference(Patient4)

Instance:       Patient1
InstanceOf:     Patient
Usage:          #inline

Instance:       Patient2
InstanceOf:     Patient
Usage:          #inline

Instance:       Patient3
InstanceOf:     Patient
Usage:          #inline

Instance:       Patient4
InstanceOf:     Patient
Usage:          #inline

Instance:       Patient5
InstanceOf:     Patient
Usage:          #inline
