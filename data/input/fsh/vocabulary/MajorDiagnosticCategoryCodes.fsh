CodeSystem:     PayerMajorDiagnosticCategoryCodeSystem
Id:             payer-major-diagnostic-category
Title:          "Payer Major Diagnostic Category Codes"
Description:    "Major diagnostic category codes for payers"
* ^caseSensitive = true
* #0	"Missing/Invalid Diagnosis"     "Missing/Invalid Diagnosis"
* #1	"Nervous"                       "Nervous"
* #2	"Eye"                           "Eye"
* #3	"Ear, Nose, Mouth & Throat"     "Ear, Nose, Mouth & Throat"
* #4	"Respiratory"                   "Respiratory"
* #5	"Circulatory"                   "Circulatory"
* #6	"Digestive"                     "Digestive"
* #7	"Liver, Pancreas"               "Liver, Pancreas"
* #8	"Musculoskeletal"               "Musculoskeletal"
* #9	"Skin, Breast"                  "Skin, Breast"
* #10	"Metabolic"                     "Metabolic"
* #11	"Kidney"                        "Kidney"
* #12	"Male Reproductive"             "Male Reproductive"
* #13	"Female Reproductive"           "Female Reproductive"
* #14	"Pregnancy, Childbirth"         "Pregnancy, Childbirth"
* #15	"Newborns"                      "Newborns"
* #16	"Blood"                         "Blood"
* #17	"Myeloproliferative Diseases"   "Myeloproliferative Diseases"
* #18	"Infections"                    "Infections"
* #19	"Mental"                        "Mental"
* #20	"Alcohol/Drug Use"              "Alcohol/Drug Use"
* #21	"Injuries, Poisonings"          "Injuries, Poisonings"
* #22	"Burns"                         "Burns"
* #23	"Health Status"                 "Health Status"
* #24	"Multiple Trauma"               "Multiple Trauma"
* #25	"HIV Infections"                "HIV Infections"

ValueSet:       PayerMajorDiagnosticCategoryValueSet
Id:             payer-major-diagnostic-category
Title:          "Payer Major Diagnostic Category Value Set"
Description:    "Value set containing major diagnostic category codes for payers"
* codes from system PayerMajorDiagnosticCategoryCodeSystem