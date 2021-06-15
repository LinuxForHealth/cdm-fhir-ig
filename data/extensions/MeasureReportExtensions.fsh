Extension:      MeasureReportAssignedPractitioner
Id:             measure-report-assigned-practitioner
Title:          "Measure Report Assigned Practitioner"
Description:    "The provider identifier of the physician(s) assigned to the rule measure using one of the physician attribution methods"
* value[x] only Reference(Practitioner or PractitionerRole)

Extension:      MeasureParameterValue
Id:             measure-parameter-value
Title:          "MeasureParameterValue"
Description:    "Measure parameter value used to generate the measure report"
* value[x] only ParameterDefinitionWithValue

Profile:        ParameterDefinitionWithValue
Id:             parameter-definition-with-value
Parent:         ParameterDefinition
Title:          "ParameterDefinition With Value"
Description:    "ParameterDefinition with the parameter value that was used"
* extension contains ParameterValue named parameterValue 0..1
* extension[parameterValue] ^short      = "Value that was used for the parameter"
* extension[parameterValue] ^definition = "Value that was used for the parameter"

Extension:      ParameterValue
Id:             parameter-value
Title:          "Parameter Value"
Description:    "Value that was used for the parameter"
* value[x] only boolean or string or integer or decimal or instant or time or date or dateTime or base64Binary or uri or Coding or CodeableConcept or Annotation or Ratio or Period or Range or Attachment or Quantity 

Extension:      MeasureReportEvidence
Id:             measure-report-evidence
Title:          "Measure Report Evidence"
Description:    "Supporting evidence showing detailed data about why a patient qualified (or did not qualify) for measure rules"
* extension contains
    MeasureReportEvidenceText named measureReportEvidenceText 1..1 and
    MeasureReportEvidenceValue named measureReportEvidenceValue 0..* and
    MeasureReportEvidencePopulationId named measureReportEvidencePopulationId 0..* 
* extension[measureReportEvidenceText] ^short      = "Textual title or description of the rule definition within a measure report"
* extension[measureReportEvidenceText] ^definition = "Textual title or description of the rule definition within a measure report"
* extension[measureReportEvidenceValue] ^short      = "Output value of rule definition within a measure report"
* extension[measureReportEvidenceValue] ^definition = "Output value of rule definition within a measure report"
* extension[measureReportEvidencePopulationId] ^short      = "Population id of populations that reference or utilize the rule definition"
* extension[measureReportEvidencePopulationId] ^definition = "Population id of populations that reference or utilize the rule definition"

Extension:      MeasureReportEvidenceText
Id:             measure-report-evidence-text
Title:          "Measure Report Evidence Text"
Description:    "Textual title or description of the rule definition within a measure report"
* value[x] only string

Extension:      MeasureReportEvidenceValue
Id:             measure-report-evidence-value
Title:          "Measure Report Evidence Value"
Description:    "Output value of rule definition within a measure report"
* value[x] only boolean or string or integer or decimal or Quantity or dateTime or Period or base64Binary or CodeableConcept or uri or Annotation or Attachment or RelatedArtifact or Reference

Extension:      MeasureReportEvidencePopulationId
Id:             measure-report-evidence-population-id
Title:          "Measure Report Evidence Population Id"
Description:    "Population id of populations that reference or utilize the rule definition"
* value[x] only string
