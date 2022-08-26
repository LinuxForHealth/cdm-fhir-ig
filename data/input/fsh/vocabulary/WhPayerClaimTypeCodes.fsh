CodeSystem:     WhPayerClaimTypeCodeSystem
Id:             wh-payer-claim-type
Title:          "Health Data Connect Claim Type Codes"
Description:    "Health Data Connect stanard codes for the coverage type under which the claim was paid"
* ^caseSensitive = true
* #absentee         "Absentee"                                                        ""
* #adminfee	        "Administrative Fee"                                              ""
* #capitation       "Capitation Payment"                                              ""
* #eap              "Employee Assistance (EAP)"                                       ""
* #emppremcont      "Employee Premium Contribution"                                   ""
* #financial        "Financial information coming from the clinical data set"         ""
* #hearing          "Hearing"                                                         ""
* #hra              "Health Risk Appraisal (HRA)"                                     ""
* #lifeins          "Life Insurance"                                                  ""
* #institutional    "Institutional; Hospital, clinic and typically inpatient claims"  ""
* #ltd              "Long Term Disability (LTD)"                                      ""
* #medical          "Medical claim; Institutional/Professional unknown"               ""
* #oral             "Oral; Dental, Denture and Hygiene claims"                        ""
* #pharmacy         "Pharmacy; Pharmacy claims for goods and services"                ""
* #premium          "Premium Payment"                                                 ""
* #premiuminc       "Premium Income (Revenue)"                                        ""
* #professional     "Professional; Typically, outpatient claims from Physician, Psychological, Chiropractor, Physiotherapy, Speech Pathology, rehabilitative, consulting"  ""
* #std              "Short Term Disability (STD)"                                     ""
* #vision           "Vision; Vision claims for professional services and products such as glasses and contact lenses"    ""
* #workercomp       "Worker's Compensation"                                           ""
* #other            "Other"                                                           ""

ValueSet:       ClaimTypeValueSet
Id:             claim-type
Title:          "Claim Type Value Set"
Description:    "Health Data Connect standard value set for the coverage type under which the claim was paid"
* codes from system WhPayerClaimTypeCodeSystem
