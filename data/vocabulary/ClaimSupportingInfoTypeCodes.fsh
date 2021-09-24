CodeSystem:     ClaimSupportingInfoTypeCodeSystem
Id:             claim-supporting-info-type
Title:          "Claim Supporting Info Type Codes"
Description:    "Supporting information type codes for claims"
* #acquired-condition-indicator            "Acquired Condition Indicator"          "An indicator if the patient on the  claim has a Health Care Acquired Condition"
* #admission-hour                          "Admission hour"                        "Hour of medical facility admission, expressed in military time (00-23)"
* #capitated-claim-indicator               "Capitated claim indicator"             "An indicator that all services on the claim were capitated services"
* #capitated-service-indicator             "Capitated service indicator"           "An indicator that this service (encounter record) was capitated"
* #compound-indicator                      "Drug compound indicator"               ""
* #days-long-term-care-recipient-on-leave  "Days longterm care recipient on leave" ""
* #days-count                              "Days count"                            "The number of inpatient days for the facility Claim"
* #days-not-covered                        "Days not covered"                      ""
* #discharge-hour                          "Discharge hour"                        "Hour of medical facility discharge, expressed in military time (00-23)"
* #network-provider-indicator              "Network provider indicator"            "Indicates if the servicing provider participates in the network to which the patient belongs"
* #newborn-length-of-stay                  "Newbord length of stay"                ""
* #refill-number                           "Refill number"                         "A number indicating the original prescription or the refill number. This is the refill number, not the number of refills remaining."

ValueSet:       ClaimSupportingInfoTypeValueSet
Id:             claim-supporting-info-type
Title:          "Claim Supporting Info Type Value Set"
Description:    "Supporting information type codes for claims"
* codes from system ClaimSupportingInfoTypeCodeSystem
