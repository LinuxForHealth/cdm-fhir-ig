CodeSystem:     MedicationKnowledgeCostTypeCodeSystem
Id:             medication-knowledge-cost-type
Title:          "Medication Knowledge Cost Type Codes"
Description:    "Medication knowledge cost type code"
* ^caseSensitive = true
* #federal-upper-limit      "The federal upper limit price for the NDC of a drug claim"
 
ValueSet:       MedicationKnowledgeCostTypValueSet
Id:             medication-knowledge-cost-type
Title:          "Medication Knowledge Cost Type Value Set"
Description:    "Medication knowledge cost type value set"
* codes from system MedicationKnowledgeCostTypeCodeSystem
