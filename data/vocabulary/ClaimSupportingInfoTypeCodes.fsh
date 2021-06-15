CodeSystem:     ClaimSupportingInfoTypeCodeSystem
Id:             claim-supporting-info-type
Title:          "Claim Supporting Info Type Codes"
Description:    "Supporting information type codes for claims"
* #capitated-claim-indicator   "Capitated claim indicator"   "An indicator that all services on the claim were capitated services"
* #capitated-service-indicator "Capitated service indicator" "An indicator that this service (encounter record) was capitated"
* #compound-indicator          "Drug compound indicator"     ""
* #days-count                  "Days count"                  "The number of inpatient days for the facility Claim"
* #network-provider-indicator  "Network provider indicator"  "Indicates if the servicing provider participates in the network to which the patient belongs"
* #refill-number               "Refill number"               "A number indicating the original prescription or the refill number. This is the refill number, not the number of refills remaining."

ValueSet:       ClaimSupportingInfoTypeValueSet
Id:             claim-supporting-info-type
Title:          "Claim Supporting Info Type Value Set"
Description:    "Supporting information type codes for claims"
* codes from system ClaimSupportingInfoTypeCodeSystem
