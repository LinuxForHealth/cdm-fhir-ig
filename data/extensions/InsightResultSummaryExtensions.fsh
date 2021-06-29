Extension:        InsightResultSummary
Id:             insight-result-summary
Title:          "Insight Result Summary"
Description:    "Value specific final insight results"

* extension contains InsightValue named insightValue 0..*
* extension[insightValue] ^short = "Field value that this insight result pertains to."
* extension[insightValue] ^definition = "Field value that this insight result pertains to."

* extension contains InsightConfidence named insightConfidence 0..*
* extension[insightConfidence] ^short = "Confidence scoring details for the insight"
* extension[insightConfidence] ^definition = "Confidence scoring details for the insight"


Extension:      InsightValue
Id:             insight-value
Title:          "Insight Value"
Description:    "Field value that this insight result pertains to."


