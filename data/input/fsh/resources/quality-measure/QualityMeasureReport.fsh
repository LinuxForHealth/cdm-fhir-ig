Profile:          QualityMeasureReport
Parent:           MeasureReport
Id:               quality-measure-report
Title:            "Quality Measure Report"
Description:      "An abstract quality measure report profile. This profile serves as the base for organizational, practitioner, and patient-focused quality measure reports."
* contained 0..*
* meta only ProcessMeta

* status =  #complete
* subject 1..1

* group 1..1
* group.population 3..*
* group.population.id ^short      = "Unique static identifier for the measure population that does not change between cohort engine runs"
* group.population.id ^definition = "Unique static identifier for the measure population that does not change between cohort engine runs"
* group.population.code from QualityMeasurePopulationTypeValueSet (extensible)
* group.population.code ^short      = "initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | care-gap"
* group.population.code ^definition = "initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | care-gap"

* group.population ^slicing.ordered = false
* group.population ^slicing.description = "Slice based on group.population.code pattern"
* group.population ^slicing.rules = #open
* group.population ^slicing.discriminator.type = #pattern
* group.population ^slicing.discriminator.path = "code"
* group.population contains
      InitialPopulation 1..1 and
      Denominator 1..1 and 
      Numerator 1..1 and
      CareGap 0..*

* group.population[InitialPopulation].code from QualityMeasurePopulationTypeValueSet (extensible)
* group.population[Denominator].code from QualityMeasurePopulationTypeValueSet (extensible)
* group.population[Numerator].code from QualityMeasurePopulationTypeValueSet (extensible)
* group.population[CareGap].code from QualityMeasurePopulationTypeValueSet (extensible)

* group.population[InitialPopulation].code = MEASURE-POPULATION#initial-population
* group.population[Denominator].code = MEASURE-POPULATION#denominator
* group.population[Numerator].code = MEASURE-POPULATION#numerator
* group.population[CareGap].code = MeasurePopulationTypeCodeSystem#care-gap

* group.population[InitialPopulation] 1..1
* group.population[Denominator] 1..1
* group.population[Numerator] 1..1
* group.population[CareGap] 0..*

* group.population[InitialPopulation].count 0..1
* group.population[Denominator].count 0..1
* group.population[Numerator].count 0..1
* group.population[CareGap].count 0..1

* extension contains MeasureParameterValue named measureParameterValue 0..*
* extension[measureParameterValue] ^short      = "Measure parameter value used to generate the measure report"
* extension[measureParameterValue] ^definition = "Measure parameter value used to generate the measure report"
