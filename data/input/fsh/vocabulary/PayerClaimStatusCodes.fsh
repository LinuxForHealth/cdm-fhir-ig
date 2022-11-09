CodeSystem:     PayerClaimStatusCodeSystem
Id:             payer-claim-status
Title:          "Payer Claim Status Codes"
Description:    "Payer codes for the payment status of the claim."
* ^caseSensitive = true
* #P	"Paid"
* #A	"Adjusted"
* #D	"Denied"

ValueSet:       PayerClaimStatusValueSet
Id:             payer-claim-status
Title:          "Payer Claim Status Codes Value Set"
Description:    "Value set containing payer codes for the payment status of the claim."
* codes from system PayerClaimStatusCodeSystem
