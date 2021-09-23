Instance:       MedicationKnowledgeDrugExample
InstanceOf:     MedicationKnowledge
Usage:          #example
Title:          "CDM Medication Knowledge Drug Example"
Description:    "Sample information about a medication for a drug claim"

* meta.source = "http://acme-health.com/pharmacy1"

* code.coding  = NdcNoHyphensCodeSystem#69452015120
* status       = #active

* cost.cost.currency = CURRENCY#USD
* cost.source        = "NDC"
* cost.type.coding   = WhPayerMedicationKnowledgeCostTypeCodeSystem#federal-upper-limit
