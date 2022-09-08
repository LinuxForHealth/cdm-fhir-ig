CodeSystem:     DiagnosisTypeCodeSystem
Id:             diagnosis-type
Title:          "Diagnosis Type Codes"
Description:    "Standard codes for the diagnosis codes on a claim"
* ^caseSensitive = true
* #external-cause   "External Cause"     "ICD diagnosis external cause code on the facility claim record"

ValueSet:       DiagnosisTypeValueSet
Id:             diagnosis-type
Title:          "Diagnosis Type Value Set"
Description:    "Value set for the diagnosis codes on a claim"
* codes from system DiagnosisTypeCodeSystem
* codes from system DIAGNOSIS-TYPE
