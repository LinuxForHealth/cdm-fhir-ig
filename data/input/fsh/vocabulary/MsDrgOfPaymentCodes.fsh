CodeSystem:     MsDrgOfPaymentCodeSystem
Id:             ms-drg-of-payment
Title:          "MS-Drg Of Payment Codes"
Description:    "The Diagnosis Related Group (MS-DRG) code under which the claim was paid, as reported on the facility Claim"
* ^caseSensitive = true

ValueSet:       MsDrgOfPaymentValueSet
Id:             ms-drg-of-payment
Title:          "MS-Drg Of Payment Value Set"
Description:    "The Diagnosis Related Group (MS-DRG) value set under which the claim was paid, as reported on the facility Claim"
* codes from system MSDRG
