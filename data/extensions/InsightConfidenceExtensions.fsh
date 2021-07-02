Extension:        InsightConfidence
Id:             insight-confidence
Title:          "Insight Confidence Details"
Description:    "Insight Confidence Details"

* extension contains ScoringMethod named method 0..1
* extension[method] ^short = "Scoring method used to assess insight"
* extension[method] ^definition = "Scoring method used to assess insight"

* extension contains InsightScore named score 0..1
* extension[score] ^short = "Insight score result"
* extension[score] ^definition = "Insight score result"

* extension contains Description named description 0..1
* extension[description] ^short = "Plain text description that explains the insight score result"
* extension[description] ^definition = "Plain text description that explains the insight score result"


Extension:      ScoringMethod
Id:             method
Title:          "Scoring Method"
Description:    "Method used to assess score the insight"
* value[x] only CodeableConcept

Extension:      InsightScore
Id:              score
Title:          "Insight Score"
Description:    "Score result produced by the scoring method for a specific insight"
* value[x] only decimal

Extension:      Description
Id:             description
Title:          "Description"
Description:    "Plain text description that explains the insight score result"
* value[x] only string