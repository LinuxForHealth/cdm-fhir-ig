Instance:       QualityMeasureExample
InstanceOf:     QualityMeasure
Usage:          #example
Title:          "Quality Measure Example"
Description:    "Example measure containing criteria for measure rules"

* meta.source = "http://linuxforhealth.org/platform/quality-measure"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/quality-measure"

* meta.extension[processOrganization].valueString = "HDC"
* meta.extension[processType].valueString = "Measure Authoring"
* meta.extension[processName].valueString = "Measure Authoring Tool (MAT)"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-01-01T00:00:00Z"
* meta.tag = ProcessMetaSourceClassification#derived

* identifier[0].type = 	ID-TYPE#RI
* identifier[0].system = "http://linuxforhealth.org/platform/quality-measure"
* identifier[0].value = "8f3a1491-a07f-4860-8977-e7dac7398175"
* identifier[0].assigner.display = "HDC"

* url = "https://linuxforhealth.org/fhir/cdm/Measure-QualityMeasureExample.html"

* version = "1.0"
* name = "Diabetes_HbA1c_Test_Performed"
* status = #active

* subjectCodeableConcept = RESOURCE-TYPE#Patient
* date = "2020-01-01"
* approvalDate = "2020-01-01"
* lastReviewDate = "2020-01-01"
* effectivePeriod.start = "2020-01-01"

* publisher = "HDC"
* contact[0].name = "Clinical Informatics"
* contact[0].telecom.system = #email
* contact[0].telecom.value = "ClinicalInformatics@us.ibm.com"

* publisher = "HDC"
* description = "Percentage of patients 18-75 years of age with diabetes who had a hemoglobin A1c test performed within the measurement period"

* useContext.code = USAGE-CONTEXT-TYPE#focus
* useContext.valueCodeableConcept = SNOMED#73211009 "Diabetes mellitus (disorder)"

* topic = DEFINITION-TOPIC#treatment

* library = "http://sample-measure-library.com/cql-library"

* scoring = MEASURE-SCORING#proportion
* type = MEASURE-TYPE#process

* guidance = "Only patients with a diagnosis of Type 1 or Type 2 diabetes should be included in the denominator of this measure.  Patients with a diagnosis of secondary diabetes due to another condition should not be included."

* improvementNotation = MEASURE-IMPROVEMENT-NOTATION#increase

* group.population[InitialPopulation].id = "dm-hba1c-initial-pop"
* group.population[InitialPopulation].code = MEASURE-POPULATION#initial-population
* group.population[InitialPopulation].description = "Patients 18-75 years of age with diabetes"
* group.population[InitialPopulation].criteria.language = EXPRESSION-LANGUAGE#text/cql
* group.population[InitialPopulation].criteria.expression = "DmHbA1cTest.InInitialPopulation"

* group.population[Denominator].id = "dm-hba1c-den"
* group.population[Denominator].code = MEASURE-POPULATION#denominator
* group.population[Denominator].description = "Patients 18-75 years of age with diabetes with a visit during the measurement period"
* group.population[Denominator].criteria.language = EXPRESSION-LANGUAGE#text/cql
* group.population[Denominator].criteria.expression = "DmHbA1cTest.InDenominator"

* group.population[Numerator].id = "dm-hba1c-num"
* group.population[Numerator].code = MEASURE-POPULATION#numerator
* group.population[Numerator].description = "Patients who have had HbA1c test within the measurement period"
* group.population[Numerator].criteria.language = 	EXPRESSION-LANGUAGE#text/cql
* group.population[Numerator].criteria.expression = "DmHbA1cTest.InNumerator"

* group.population[CareGap].id = "dm-hba1c-caregap-controlled"
* group.population[CareGap].code = MeasurePopulationTypeCodeSystem#care-gap
* group.population[CareGap].description = "DM Control - Low Risk"
* group.population[CareGap].criteria.language = 	http://hl7.org/fhir/expression-language#text/cql
* group.population[CareGap].criteria.expression = "DmHbA1cTest.InDmControlled"

* group.population[4].id = "dm-hba1c-caregap-poor-control"
* group.population[4].code = MeasurePopulationTypeCodeSystem#care-gap
* group.population[4].description = "DM Poor Control - High Risk"
* group.population[4].criteria.language = 	EXPRESSION-LANGUAGE#text/cql
* group.population[4].criteria.expression = "DmHbA1cTest.InDmPoorControl"

* extension[measureParameter][0].valueParameterDefinition.name = #measurePeriod
* extension[measureParameter][0].valueParameterDefinition.use = #out
* extension[measureParameter][0].valueParameterDefinition.type = #Period

* extension[measureParameter][1].valueParameterDefinition.name = #complianceDisplayName
* extension[measureParameter][1].valueParameterDefinition.use = #out 
* extension[measureParameter][1].valueParameterDefinition.type = #string
* extension[measureParameter][1].valueParameterDefinition.extension[defaultValue].valueString = "Pharyngitis Testing"

* extension[measureParameter][2].valueParameterDefinition.name = #complianceFrequency
* extension[measureParameter][2].valueParameterDefinition.use = #out
* extension[measureParameter][2].valueParameterDefinition.type = #string
* extension[measureParameter][2].valueParameterDefinition.extension[defaultValue].valueString = "Once yearly"
