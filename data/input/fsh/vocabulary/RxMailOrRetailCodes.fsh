CodeSystem:     RxMailOrRetailCodeSystem
Id:             rx-mail-or-retail
Title:          "Rx Mail Or Retail Codes"
Description:    "LinuxForHealth standard codes indicating the purchase place of the prescription."
* ^caseSensitive = true
* #m	"Mail Order"    "Mail Order"
* #r	"Retail"        "Retail"

ValueSet:       RxMailOrRetailValueSet
Id:             rx-mail-or-retail
Title:          "Rx Mail Or Retail Value Set"
Description:    "LinuxForHealth standard value set indicating the purchase place of the prescription."
* codes from system RxMailOrRetailCodeSystem