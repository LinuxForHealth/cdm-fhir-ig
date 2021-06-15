Profile:        QualityMeasure
Parent:         Measure
Id:             quality-measure
Title:          "Quality Measure"
Description:    "The quality measure profile is limited to measures with proportion and ratio scoring methods. The profile requires an initial population, denominator, and numerator in accordance with FHIR quality reporting guidelines. Measure population and measure population exclusions are not allowed.  The profile also supports care gap populations for additional use cases."
* contained 0..0
* meta only ProcessMeta

* experimental 0..0

* scoring from QualityMeasureScoringValueSet (extensible)
* scoring ^short      = "proportion | ratio"
* scoring ^definition = "Indicates how the calculation is performed for the measure, proportion or ratio only (continuous-variable and cohort scoring not supported by this profile). The value set is extensible, allowing additional measure scoring types to be represented."

* group.population.id ^short      = "Unique static identifier for the measure population that does not change between cohort engine runs"
* group.population.id ^definition = "Unique static identifier for the measure population that does not change between cohort engine runs"
* group.population.code from QualityMeasurePopulationTypeValueSet (extensible)
* group.population.code ^short      = "initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | care-gap"
* group.population.code ^definition = "initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | care-gap"

* group 1..1

* group.population 3..*
* group.population ^slicing.ordered = false
* group.population ^slicing.description = "Slice based on group.population.code pattern"
* group.population ^slicing.rules = #open
* group.population ^slicing.discriminator.type = #pattern
* group.population ^slicing.discriminator.path = "code"
* group.population contains
      InitialPopulation 1..1 and 
      Numerator 1..1 and
      Denominator 1..1
* group.population[InitialPopulation].code from MeasurePopulationTypeValueSet (extensible)
* group.population[Numerator].code from MeasurePopulationTypeValueSet (extensible)
* group.population[Denominator].code from MeasurePopulationTypeValueSet (extensible)

* group.population[InitialPopulation].code = MEASURE-POPULATION#initial-population
* group.population[Denominator].code = MEASURE-POPULATION#denominator
* group.population[Numerator].code = MEASURE-POPULATION#numerator

* group.population[InitialPopulation] 1..1
* group.population[Numerator] 1..1
* group.population[Denominator] 1..1

* extension contains MeasureParameter named measureParameter 0..*
* extension[measureParameter] ^short      = "Defined parameter options implemented by the measure"
* extension[measureParameter] ^definition = "Defined parameter options implemented by the measure"
