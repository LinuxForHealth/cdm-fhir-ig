CodeSystem:     PayerSsiStatusCodeSystem
Id:             payer-ssi-status
Title:          "Payer SSI Status Codes"
Description:    "Payer Supplemental Security Income (SSI) status codes for the person"
* ^caseSensitive = true
* #000     "Not Applicable"                                            ""
* #001     "Supplemental Security Income (SSI)"                        ""
* #002     "Supplemental Security Income (SSI) Eligible Spouse"        ""
* #003     "Supplemental Security Income (SSI) Pending"                ""
* #999     "Unknown"                                                   ""

ValueSet:       PayerSsiStatusValueSet
Id:             payer-ssi-status
Title:          "Payer SSI Status Value Set"
Description:    "Payer Supplemental Security Income (SSI) status value set for the person"
* codes from system PayerSsiStatusCodeSystem
