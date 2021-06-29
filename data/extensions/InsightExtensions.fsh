Extension:        Insight
Id:             insight
Title:          "Insight"
Description:    "Element level insights relating to the element values in the contained resource instance"

* extension contains Path named path 0..*
* extension[path] ^short = "Path to the FHIR element that the insight pertains to."
* extension[path] ^definition = "Path to the FHIR element that the insight pertains to; Multiple array instances for  path should only be created when the same set of insight results pertain to more than one path. If insight results are different for each path, then multiple insight elements at the top level insight array should be created instead."

* extension contains InsightId named insightId 0..1 
* extension[insightId] ^short = "ID for the insight as known by the source (or source system) that this insight was provided from"
* extension[insightId] ^definition = "ID for the insight as it is known by the source (or source system) that this insight was provided from."

* extension contains SourceId named sourceId 0..1 
* extension[sourceId] ^short = "The ID of the source of the insight, such as an individual, algorithm, etc. that generated the insight." 
* extension[sourceId] ^definition = "The ID of the source of the insight, such as an individual, algorithm, etc. that generated the insight." 

* extension contains Detected named detected 0..1
* extension[detected] ^short = "When the insight evaluation occurred"
* extension[detected] ^definition = "When the insight evaluation occurred"

* extension contains Category named category 0..1
* extension[category] ^short = "Top level category classifying the type of insight, such as Natural Language Processing, Data Quality, etc."
* extension[category] ^definition = "Top level category classifying the type of insight, such as Natural Language Processing, Data Quality, etc."
* extension[category].valueCodeableConcept from InsightCategoryValueSet (example)

* extension contains InsightType named insightType 0..1
* extension[insightType] ^short = "Code for the specific insight type"
* extension[insightType] ^definition = "Code for the specific insight type, such as Phone Number Inconsistent with Area Code"

* extension contains InsightDetail named insightDetail 0..*
* extension[insightDetail] ^short = "Information leveraged to produce the insight results and information specific scoring breakdown when appropriate"
* extension[insightDetail] ^definition = "Information leveraged to produce the insight results and information specific scoring breakdown when appropriate"

* extension contains InsightResultSummary named result 0..*
* extension[result] ^short = "Value specific final insight results"
* extension[result] ^definition = "Value specific final insight results"


Extension:      InsightId
Id:             insight-id
Title:          "Insight Id"
Description:    "ID for the insight as it is known by the source (or source system) that this insight was provided from"
* value[x] only Identifier

Extension:      SourceId
Id:              source-id
Title:          "Source Id"
Description:    "The ID of the source of the insight, such as an individual, algorithm, etc. that generated the insight."
* value[x] only Identifier

Extension:      Path
Id:             path
Title:          "Path"
Description:    "Path to the FHIR element that the insight pertains to."
* value[x] only string

Extension:      Detected
Id:              detected
Title:          "Detected"
Description:    "When the insight evaluation occurred."
* value[x] only dateTime

Extension:      Category
Id:              category
Title:          "Category"
Description:    "Top level category classifying the type of insight."
* value[x] only CodeableConcept

Extension:      InsightType
Id:             insight-type
Title:          "Insight Type"
Description:    "Code for the specific insight type."
* value[x] only CodeableConcept

ValueSet:       InsightCategoryValueSet
Id:             insight-category-values
Title:          "Insight Category ValueSet"
Description:    "Values for the top level categorization of an insight produced relating to specific FHIR element(s) in the resource instance."
* codes from system InsightCategoryCodeSystem