Instance:       MedicationRequestDrugExample
InstanceOf:     MedicationRequest
Usage:          #example
Title:          "CDM Medication Request Drug Example"
Description:    "Sample medication request or order for a drug claim"

* meta.source = "http://acme-health.com/emr1"

* identifier[0].use                = #official
* identifier[0].type               = IdentifierTypeCodeSystem#RXN
* identifier[0].system             = "http://acmehealth.com/CodeSystem/local-claim-identifier"
* identifier[0].value              = "00000000000000000001921078"
* identifier[0].assigner.display   = "Acme Health - Wellness Center Pharmacy"

* status = #completed
* intent = #order
* medicationCodeableConcept.coding  = NdcNoHyphensCodeSystem#69452015120

* subject = Reference(CDMPatientInstance)
