CodeSystem:     WhPayerClaimTypeCodeSystem
Id:             wh-payer-claim-type
Title:          "Health Data Connect Claim Type Codes"
Description:    "IBM® Health Data Connect stanard codes for the coverage type under which the claim was paid"
* #medical          "Medical claim; Institutional/Professional unknown"                  ""
* #institutional    "Institutional; Hospital, clinic and typically inpatient claims"    ""
* #professional     "Professional; Typically, outpatient claims from Physician, Psychological, Chiropractor, Physiotherapy, Speech Pathology, rehabilitative, consulting"  ""
* #pharmacy         "Pharmacy; Pharmacy claims for goods and services"                  ""
* #oral             "Oral; Dental, Denture and Hygiene claims"                          ""
* #vision           "Vision; Vision claims for professional services and products such as glasses and contact lenses"                                                      ""
* #hearing	        "Hearing"                                               ""
* #lifeins	        "Life Insurance"                                        ""
* #ltd	            "Long Term Disability (LTD)"                            ""
* #std	            "Short Term Disability (STD)"                           ""
* #absentee	        "Absentee"                                              ""
* #workercomp	    "Worker's Compensation"                                 ""
* #capitation	    "Capitation Payment"                                    ""
* #adminfee	        "Administrative Fee"                                    ""
* #premium	        "Premium Payment"                                       ""
* #emppremcont	    "Employee Premium Contribution"                         ""
* #premiuminc	    "Premium Income (Revenue)"                              ""
* #eap	            "Employee Assistance (EAP)"                             ""
* #hra	            "Health Risk Appraisal (HRA)"                           ""
* #other	        "Other"                                                 ""

ValueSet:       ClaimTypeValueSet
Id:             claim-type
Title:          "Claim Type Value Set"
Description:    "IBM Health Data Connect standard value set for the coverage type under which the claim was paid"
* codes from system WhPayerClaimTypeCodeSystem
