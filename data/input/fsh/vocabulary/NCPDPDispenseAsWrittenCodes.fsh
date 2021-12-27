CodeSystem:     NCPDPDispenseAsWrittenCodeSystem
Id:             ncpdp-dispense-as-written
Title:          "NCPDP Dispense As Written Codes"
Description:    "The NCPDP industry standard description of how the product was dispensed."
* ^caseSensitive = true
* #0      "0"                 "No Product Selection Indicated"
* #1	  "1"                 "Prescriber Required (no sub)"
* #2	  "2"                 "Patient Requested Product"
* #3	  "3"                 "Pharmacist Selected Product"
* #4	  "4"                 "Generic Drug Not in Stock"
* #5	  "5"                 "Brand Dispensed as Generic"
* #6	  "6"                 "Override"
* #7	  "7"                 "Brand Mandated by Law (no sub)"
* #8	  "8"                 "Generic Not Available"
* #9	  "9"                 "Other"

ValueSet:       NCPDPDispenseAsWrittenValueSet
Id:             ncpdp-dispense-as-written
Title:          "NCPDP Dispense As Written Value Set"
Description:    "The NCPDP industry standard description of how the product was dispensed."
* codes from system NCPDPDispenseAsWrittenCodeSystem
