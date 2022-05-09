CodeSystem:     MeasurePopulationTypeCodeSystem
Id:             measure-population-type
Title:          "Measure Population Type Codes"
Description:    "Health Data Connect measure population types"
* ^caseSensitive = true
* #care-gap "Care Gap" "The care gap population contains patients and events that are non-compliant for the numerator, lacking the clinical action required to satisfy the conditions of the measure. These exclude pateints or events that are in exclusion or exception populations. The care gap is the primary focus for engagement."

ValueSet:       MeasurePopulationTypeValueSet
Id:             measure-population-type
Title:          "Measure Population Type Value Set"
Description:    "Health Data Connect measure population types"
* codes from system http://terminology.hl7.org/CodeSystem/measure-population
* codes from system MeasurePopulationTypeCodeSystem

ValueSet:       QualityMeasurePopulationTypeValueSet
Id:             quality-measure-population-type
Title:          "Quality Measure Population Type Value Set"
Description:    "Health Data Connect measure population types for qualiity measures"
* codes from system http://terminology.hl7.org/CodeSystem/measure-population
* codes from system MeasurePopulationTypeCodeSystem
* exclude MEASURE-POPULATION#measure-population
* exclude MEASURE-POPULATION#measure-population-exclusion
* exclude MEASURE-POPULATION#measure-observation



