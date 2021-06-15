CodeSystem:     PaidInNetworkIndicatorCodeSystem
Id:             paid-in-network-indicator
Title:          "Paid In Network Indicator Codes"
Description:    "An indicator of whether the claim was paid at the in-network or out-of-network level."
* #in-network      "In Network"                  "In Network; Provider is contracted with the health insurance company to provide services to plan members for specific pre-negotiated rates."
* #out-of-network  "Out of Network"              "Out of Network; Provider is not contracted with the health insurance company to provide services to plan members for specific pre-negotiated rates."
* #other           "Other; Other applicability"  "Other; Other applicability"

ValueSet:       PaidInNetworkIndicatorValueSet
Id:             paid-in-network-indicator
Title:          "Paid In Network Indicator Value Set"
Description:    "An indicator of whether the claim was paid at the in-network or out-of-network level."
* codes from system PaidInNetworkIndicatorCodeSystem