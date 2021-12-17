Profile:        WorkAddress
Parent:         Address
Id:             work-address
Title:          "Work Address"
Description:    "Physical work location or business address with CDM address extensions"
* use = #work
* type = #physical
* extension contains CountyCode named countyCode 0..1
* extension[countyCode] ^short      = "The county code for the address"
* extension[countyCode] ^definition = "The county code for the address"
* extension contains ProviderRegion named providerRegion 0..1
* extension[providerRegion] ^short      = "Customer-specific description of the region for the address"
* extension[providerRegion] ^definition = "Customer-specific description of the region for the address"
* extension contains RegionCode named regionCode 0..1
* extension[regionCode] ^short      = "Customer-specific code for the geographic region of the address"
* extension[regionCode] ^definition = "Customer-specific code for the geographic region of the address"
