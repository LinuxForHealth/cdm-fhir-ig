Extension:        InsightDetail
Id:             insight-detail
Title:          "Insight Detail"
Description:    "The break down of information referenced to produce the insight and information specific scoring breakdown and output when appropriate"

* extension contains InsightReference named reference 0..1 
* extension[reference] ^short = "Reference to content leveraged to produce the insight"
* extension[reference] ^definition = "Reference to content leveraged to produce the insight"

* extension contains ReferencePath named referencePath 0..1 
* extension[referencePath] ^short = "Path to FHIR element used in the reference"
* extension[referencePath] ^definition = "Path to FHIR element in the reference that was used to produce the insight"

* extension contains EvaluatedOutput named evaluatedOutput 0..1 
* extension[evaluatedOutput] ^short = "Attachment for content created as output when producing the insight"
* extension[evaluatedOutput] ^definition = "Attachment for content created as output when producing the insight"

* extension contains InsightResult named insightResult 0..*
* extension[insightResult] ^short = "Value specific final insight results based on a particular piece of evaluated input."
* extension[insightResult] ^definition = "Value specific final insight results based on a particular piece of evaluated input. For example, if one or more pieces of unstructured content have been used as input to the insight, the insight result is specific to one fragment of text that has been annotated from that unstructured content."

Extension:      InsightReference
Id:             reference
Title:          "Insight Reference"
Description:    "Reference to content leveraged to produce the insight."
* value[x] only Reference

Extension:      ReferencePath
Id:             reference-path
Title:          "Reference Path"
Description:    "Path to FHIR element in the reference that was leveraged to produce the insight."
* value[x] only string

Extension:      EvaluatedOutput
Id:             evaluated-output
Title:          "Evaluated Ouptut"
Description:    "Attachment for content created as output when producing the insight."
* value[x] only Attachment