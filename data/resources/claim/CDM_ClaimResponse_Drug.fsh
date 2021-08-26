Profile:        CDMClaimResponseDrug
Parent:         CDMClaimResponse
Id:             cdm-claim-response-drug
Title:          "CDM Claim Response Drug"
Description:    "This resource provides the adjudication details from the processing of a Claim resource. The CDMClaimResponseDrug profile extends the CDMClaimResponse resource with additional adjudication details that are specific to pharmacy claims."

* item.extension contains UsualAndCustomaryAmount named usualAndCustomaryAmount 0..1
* item.extension[usualAndCustomaryAmount] ^short      = "Usual and customary amount on the drug claim"
* item.extension[usualAndCustomaryAmount] ^definition = "Usual and customary amount on the drug claim"

* item.extension contains RxFormularyIndicator named rxFormularyIndicator 0..1
* item.extension[rxFormularyIndicator] ^short      = "An indicator that the prescription drug is included in the formulary"
* item.extension[rxFormularyIndicator] ^definition = "An indicator that the prescription drug is included in the formulary"

* item.extension contains RxPayTier named rxPayTier 0..1
* item.extension[rxPayTier] ^short      = "Payment tier of the prescription drug"
* item.extension[rxPayTier] ^definition = "Payment tier of the prescription drug"

* item.extension contains RxSupplyIndicator named rxSupplyIndicator 0..1
* item.extension[rxSupplyIndicator] ^short      = "An indicator of whether or not the drug claim is a medical supply (Y) or a drug (N)"
* item.extension[rxSupplyIndicator] ^definition = "An indicator of whether or not the drug claim is a medical supply (Y) or a drug (N)"
