CodeSystem:     PatientStatusCodeSystem
Id:             patient-status
Title:          "Patient Status Codes"
Description:    "Patient status code examples"
* ^caseSensitive = false
* #anonymous        "Anonymous"                 "Patient does not provide true identity or identification"
* #asl              "American Sign Language"    "Patient communicates using American Sign Language"
* #blind            "Blind"                     "Patient is blind or legally blind."
* #blood-refusal    "Blood Refusal"             "Patient refuses blood products and transfusions"
* #charity          "Charity"                   "Patient is pro-bono or charity-care patient"
* #chronic-pain     "Chronic Pain"              "Patient is under treatment for chronic pain"
* #collection       "Collections"               "Patient has uncollected debt or account in collection status"
* #committed        "Committed"                 "Patient is committed to a mental institution"
* #confidential     "Confidential"              "Patient has special privacy concerns"
* #da-victim        "Domestic Abuse Victim"     "Patient is a victim of domestic abuse or violence at home"
* #deactivated      "Deactivated"               "Patient has been deactivated"
* #dismissed        "Dismissed"                 "Patient has been dismissed"
* #drug-seeking     "Drug Seeking"              "Patient has exhibited drug seeking behavior"
* #esrd             "ESRD"                      "Patient is in treatment for End Stage Renal Disease"
* #fraud            "Fraud"                     "Patient has a history of identity theft or fraud"
* #fraud-victim     "Fraud Victim"              "Patient is a victim of identity theft or fraud"
* #hearing-impaired "Hearing Impaired"          "Patient is deaf or hearing impaired"
* #heart            "Heart"                     "Patient is a structural heart patient"
* #incarcerated     "Incarcerated"              "Patient is incarcerated in a state or federal prison"
* #no-show          "No Show"                   "Patient has a history of repeatedly missing appointments"
* #non-compliant    "Non-Compliant"             "Patient is non-compliant"
* #sarscov2         "SARS-CoV-2"                "Patient is exhibiting symptomps of SARS-CoV-2"
* #service-animal   "Service Animal"            "Patient has a service animal"
* #support-person   "Support Person"            "Patient has a support person or assistant"
* #test             "Test"                      "Patient is a test patient used for training, system demonstration, or testing"
* #transferred      "Transferred"               "Patient has transferred to another location or pactitioner"
* #violence         "Violence"                  "Patient has a history of violent behavior"
* #vision-impaired  "Vision Impaired"           "Patient is has low-vision or other serious vision impairment"

CodeSystem:     PatientImportanceCodeSystem
Id:             patient-importance
Title:          "Patient Importance Codes"
Description:    "Patient status code examples"
* #bad-debt                 "Bad Debt"                                          "Patient is in collections or has uncollected or overdue payments on account"
* #do-not-contact           "Do Not Contact"                                    "Patient is flagged to prevent automated communications"
* #no-comm-health-reminder  "No Communication - Health Reminders"               "Patient is falgged to prevent the communication of health reminders"
* #no-comm-privacy          "No Communication - Specific Privacy Concerns"      "Patient is flagged with specific privary concerns (example HIV, Mental Health, patients)"

ValueSet:       PatientStatusValueSet
Id:             patient-status
Title:          "Patient Status Value Set"
Description:    "Examples of customer-specific patient status codes"
* codes from system http://terminology.hl7.org/ValueSet/v3-PatientImportance
* codes from system PatientStatusCodeSystem

ValueSet:       PatientImportanceValueSet
Id:             patient-importance
Title:          "Patient Importance Value Set"
Description:    "Patient importance status codes derived from customer-specific code mappings, used to trigger or limit IBM Health Data Connect patient operations."
* codes from system http://terminology.hl7.org/ValueSet/v3-PatientImportance
* codes from system PatientImportanceCodeSystem

ValueSet:       CitizenshipValueSet
Id:             citizenship
Title:          "Citizenship Value Set"
Description:    "Citizenship status codes"
* codes from system     http://hl7.org/fhir/ValueSet/iso3166-1-2
* codes from system     http://hl7.org/fhir/ValueSet/iso3166-1-3
* codes from system    	http://hl7.org/fhir/ValueSet/iso3166-1-N
