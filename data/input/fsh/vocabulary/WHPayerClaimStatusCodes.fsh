CodeSystem:     WhPayerClaimStatusCodeSystem
Id:             wh-payer-claim-status
Title:          "Health Data Connect Claim Status Codes"
Description:    "IBM® Health Data Connect standard code for the payment status of the claim."
* ^caseSensitive = true
* #P	"Paid"
* #A	"Adjusted"
* #D	"Denied"

ValueSet:       WHPayerClaimStatusValueSet
Id:             wh-payer-claim-status
Title:          "Health Data Connect Claim Status Codes Value Set"
Description:    "IBM® Health Data Connect  standard value set for the payment status of the claim."
* codes from system WhPayerClaimStatusCodeSystem
