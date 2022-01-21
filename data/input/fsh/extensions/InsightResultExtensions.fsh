Extension:        InsightResult
Id:             insight-result
Title:          "Insight Result"
Description:    "Value specific insight result details"

* extension contains InsightValue named insightValue 0..*
* extension[insightValue] ^short = "Field value that this insight result pertains to."
* extension[insightValue] ^definition = "Field value that this insight result pertains to."

* extension contains InsightBasedOnValue named basedOnValue 0..*
* extension[basedOnValue] ^short = "Value the insight result used as input"
* extension[basedOnValue] ^definition = "Value the insight result used as input; This element is to be used when the value leveraged as input to the insight is not an extracted span of text. Note this is different than the value the insight is about. It is instead a value from another element or reference that was used in evaluating the insight. For example, if the insight pertains to a zip code value, the based-on-value may be a city name that has been specified in another element. "

* extension contains Span named span 0..* 
* extension[span] ^short = "Detail on a span of text the insight result used as input"
* extension[span] ^definition = "Detail on a span of text from a reference source used as input for an insight evaluation"


Extension:      InsightValue
Id:             insight-value
Title:          "Insight Value"
Description:    "Field value that this insight result pertains to."
* value[x] only boolean or string or integer or decimal or instant or time or date or dateTime or base64Binary or uri or Coding or CodeableConcept or Annotation or Ratio or Period or Range or Attachment or Quantity 

Extension:      InsightBasedOnValue
Id:             based-on-value
Title:          "Based On Value"
Description:    "Value the insight result used as input"
* value[x] only string