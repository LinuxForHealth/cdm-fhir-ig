CodeSystem:     DiagnosisPresentOnAdmissionCodeSystem
Id:             diagnosis-present-on-admission
Title:          "Diagnosis Present On Admission Codes"
Description:    "The Present On Admission (POA) code for diagnosis codes on an inpatient acute care facility Claim"
* #1          "Exempt from POA Reporting"        ""
* #N          "No, not present at admission"     ""
* #U          "Insufficient Documentation"       ""
* #W          "Clinically Undetermined"          ""
* #Y          "Yes, present ad admission"        ""

ValueSet:       DiagnosisPresentOnAdmissionValueSet
Id:             diagnosis-present-on-admission
Title:          "Diagnosis Present On Admission Value Set"
Description:    "The Present On Admission (POA) value set for diagnosis codes on an inpatient acute care facility Claim"
* codes from system DiagnosisPresentOnAdmissionCodeSystem

