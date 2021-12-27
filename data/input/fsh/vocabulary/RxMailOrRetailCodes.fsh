CodeSystem:     RxMailOrRetailCodeSystem
Id:             rx-mail-or-retail
Title:          "Rx Mail Or Retail Codes"
Description:    "IBM® Health Data Connect standard codes indicating the purchase place of the prescription."
* ^caseSensitive = false
* #m	"Mail Order"    "Mail Order"
* #r	"Retail"        "Retail"

ValueSet:       RxMailOrRetailValueSet
Id:             rx-mail-or-retail
Title:          "Rx Mail Or Retail Value Set"
Description:    "IBM® Health Data Connect standard value set indicating the purchase place of the prescription."
* codes from system RxMailOrRetailCodeSystem