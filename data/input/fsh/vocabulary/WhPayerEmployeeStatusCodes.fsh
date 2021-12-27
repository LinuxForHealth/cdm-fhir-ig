CodeSystem:     WhPayerEmployeeStatusCodeSystem
Id:             wh-payer-employee-status-code
Title:          "Health Data Connect Employee Status Codes"
Description:    "IBM® Health Data Connect standard employee status value set for claims"
* ^caseSensitive = false
* #1	"Active Full Time"              "Active Full Time"
* #2	"Active Part-Time/Seasonal"     "Active Part-Time/Seasonal"
* #3	"Early Retiree"                 "Early Retiree"
* #4	"Medicare Eligible Retiree"     "Medicare Eligible Retiree"
* #5	"Retiree (Status Unknown)"      "Retiree (Status Unknown)"
* #6	"COBRA Continuee"               "COBRA Continuee"
* #7	"Long Term Disability"          "Long Term Disability"
* #8	"Surviving Spouse/Dependent"    "Surviving Spouse/Dependent"
* #9	"Other/Unknown"                 "Other/Unknown"
 
ValueSet:       WhPayerEmployeeStatusValueSet
Id:             wh-payer-employee-status-code
Title:          "Health Data Connect Employee Status Value Set"
Description:    "IBM® Health Data Connect standard employee status value set for claims"
* codes from system WhPayerEmployeeStatusCodeSystem