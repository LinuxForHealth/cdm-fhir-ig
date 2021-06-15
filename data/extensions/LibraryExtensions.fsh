Profile:        ParameterDefinitionWithDefault
Id:             parameter-definition-with-default
Parent:         ParameterDefinition
Title:          "ParameterDefinition With Default"
Description:    "ParameterDefinition with optional detailt value"
* extension contains DefaultValue named defaultValue 0..1
* extension[defaultValue] ^short      = "Default value for the parameter"
* extension[defaultValue] ^definition = "Default value for the parameter"

Extension:      DefaultValue
Id:             default-value
Title:          "Default Value"
Description:    "Default value for the parameter"
* value[x] only boolean or string or integer or decimal or instant or time or date or dateTime or base64Binary or uri or Coding or CodeableConcept or Annotation or Ratio or Period or Range or Attachment or Quantity 
