CodeSystem:     WhPayerSsiStatusCodeSystem
Id:             wh-payer-ssi-status
Title:          "Health Data Connect SSI Status Codes"
Description:    "Supplemental Security Income (SSI) status codes for the person"
* ^caseSensitive = false
* #000     "Not Applicable"                                            ""
* #001     "Supplemental Security Income (SSI)"                        ""
* #002     "Supplemental Security Income (SSI) Eligible Spouse"        ""
* #003     "Supplemental Security Income (SSI) Pending"                ""
* #999     "Unknown"                                                   ""

ValueSet:       WhPayerSsiStatusValueSet
Id:             wh-payer-ssi-status
Title:          "Health Data Connect SSI Status Value Set"
Description:    "Supplemental Security Income (SSI) status value set for the person"
* codes from system WhPayerSsiStatusCodeSystem
