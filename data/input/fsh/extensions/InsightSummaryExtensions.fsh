Extension:        InsightSummary
Id:             insight-summary
Title:          "Insight Summary"
Description:    "Summarizes the insight associated with the element that the insight summary extension is embedded in. The insight array element in the meta section of the resource with the same insight record id contains the full details on the insight."

* extension contains InsightId named insightId 0..1 
* extension[insightId] ^short = "ID for the insight."
* extension[insightId] ^definition = "ID for the insight as it is known by the source (or source system) that this insight was provided from."

* extension contains Category named category 0..1
* extension[category] ^short = "Top level category classifying the type of insight, such as Natural Language Processing, Data Quality, etc."
* extension[category] ^definition = "Top level category classifying the type of insight, such as Natural Language Processing, Data Quality, etc."
* extension[category].valueCodeableConcept from InsightCategoryValueSet (example)