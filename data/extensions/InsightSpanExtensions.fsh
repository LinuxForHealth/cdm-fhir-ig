Extension:        Span
Id:             span
Title:          "Span"
Description:    "Detail on a span of text from a reference source used as input for an insight evaluation"

* extension contains OffsetBegin named offsetBegin 0..1 
* extension[offsetBegin] ^short = "Offset location of the first character for the span of covered text"
* extension[offsetBegin] ^definition = "Offset location of the first character for the span of covered text in relation to the overall reference where this span of text appears"

* extension contains OffsetEnd named offsetEnd 0..1 
* extension[offsetEnd] ^short = "Offset location of the last character for the span of covered"
* extension[offsetEnd] ^definition = "Offset location of the last character for the span of covered text in relation to the overall reference where this span of text appears"

* extension contains CoveredText named coveredText 0..1 
* extension[coveredText] ^short = "Snippet of covered text used as input to the insight asseessment"
* extension[coveredText] ^definition = "Snippet of covered text used as input to the insight asseessment"

* extension contains InsightConfidence named insightConfidence 0..*
* extension[insightConfidence] ^short = "Confidence scoring details for the insight"
* extension[insightConfidence] ^definition = "Confidence scoring details for the insight"


Extension:      OffsetBegin
Id:             offset-begin
Title:          "Offset Begin"
Description:    "Offset location of the first character for the span of covered text in relation to the overall reference where this span of text appears"
* value[x] only decimal

Extension:      OffsetEnd
Id:             offset-end
Title:          "Offset End"
Description:    "Offset location of the last character for the span of covered text in relation to the overall reference where this span of text appears"
* value[x] only decimal


Extension:      CoveredText
Id:             covered-text
Title:          "Covered Text"
Description:    "Snippet of covered text used as input to the insight asseessment"
* value[x] only string