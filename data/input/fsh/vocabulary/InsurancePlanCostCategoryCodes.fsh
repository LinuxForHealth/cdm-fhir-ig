CodeSystem:     InsurancePlanCostCategoryCodeSystem
Id:             insurance-plan-cost-category
Title:          "Insurance Plan Cost Category Codes"
Description:    "The codes that indicates the specific benefit categories a member may have (medical, dental, vision, etc) based on benefit election."
* ^caseSensitive = false
* #drug                       "Drug"                       ""
* #medical                    "Medical"                    ""
* #other                      "Other"                      ""
* #dental                     "Dental"                     ""
* #mental                     "Mental"                     ""
* #subst-ab                   "Substance Abuse"            ""
* #vision                     "Vision"                     ""
* #short-term                 "Short Term Disability"      ""
* #long-term                  "Long Term Disability"       ""
* #hospice                    "Hospice"                    ""
* #home                       "Home Health"                ""
* #hearing                    "Hearing"                    ""
* #lifeins                    "Life Insurance"             ""

ValueSet:       InsurancePlanCostCategoryValueSet
Id:             insurance-plan-cost-category
Title:          "Insurance Plan Cost Category Value Set"
Description:    "The value set that indicates the specific benefit categories a member may have (medical, dental, vision, etc) based on benefit election."
* codes from system InsurancePlanCostCategoryCodeSystem
