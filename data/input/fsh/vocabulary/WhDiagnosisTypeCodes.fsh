CodeSystem:     WhDiagnosisTypeCodeSystem
Id:             wh-diagnosis-type
Title:          "Health Data Connect Diagnosis Type Codes"
Description:    "Health Data Connect standard codes for the diagnosis codes on a claim"
* ^caseSensitive = true
* #external-cause   "External Cause"     "ICD diagnosis external cause code on the facility claim record"

ValueSet:       WhDiagnosisTypeValueSet
Id:             wh-diagnosis-type
Title:          "Health Data Connect Diagnosis Type Value Set"
Description:    "Health Data Connect value set for the diagnosis codes on a claim"
* codes from system WhDiagnosisTypeCodeSystem
* codes from system DIAGNOSIS-TYPE
