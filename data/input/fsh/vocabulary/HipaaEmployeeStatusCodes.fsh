CodeSystem: HipaaEmployeeStatusCodeSystem
Id:         hipaa-employee-status
Title:      "HIPAA Employee Status Codes"
Description: "HIPAA standard codes for the employee status"
* #AC            "Active"                     "Active employee"
* #AO            "Active Military Overseas"   "Active military overseas"
* #AU            "Active Military USA"        "Active military USA"
* #FT            "Full Time Active Employee"  "Full Time active employee"
* #L1            "Leave of Absence"           "Leave of absence"
* #PT            "Part Time Active Employee"  "Part-time active employee"
* #RT            "Retired"                    "Retired"
* #TE            "Terminated"                 "Terminated"

ValueSet:       HipaaEmployeeStatusValueSet
Id:             hipaa-employee-status
Title:          "HIPAA Employee Status Value Set"
Description:    "HIPAA standard value set for the employee status"
* codes from system HipaaEmployeeStatusCodeSystem
