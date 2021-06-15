Profile:        CDMAddress
Id:             cdm-address
Parent:         Address
Title:          "CDM Address"
Description:    "Address wtih common extensions"
* extension contains CountyCode named countyCode 0..1
* extension[countyCode] ^short      = "The county code for the address"
* extension[countyCode] ^definition = "The county code for the address"
* extension contains RegionCode named regionCode 0..1
* extension[regionCode] ^short      = "Customer-specific code for the geographic region of the address"
* extension[regionCode] ^definition = "Customer-specific code for the geographic region of the address"

Extension: CountyCode
Title: "County Code"
Description: "The county code for the address"
Id: county-code
* value[x] only CodeableConcept

Extension: RegionCode
Title: "Region Code"
Description: "Customer-specific code for the geographic region of the address"
Id: region-code
* value[x] only CodeableConcept

Extension: ProviderRegion
Title: "Provider Region"
Description: "Customer-specific description of the region for the address"
Id: provider-region
* value[x] only string
