Profile:        CDMAddress
Id:             cdm-address
Parent:         Address
Title:          "CDM Address"
Description:    "Address wtih common extensions"
* extension contains CountyCode named countyCode 0..1
* extension[countyCode] ^short      = "The county code for the address"
* extension[countyCode] ^definition = "The county code for the address"
* extension contains Latitude named latitude 0..1
* extension[latitude] ^short      = "Latitude for the address"
* extension[latitude] ^definition = "Latitude for the address"
* extension contains Longitude named longitude 0..1
* extension[longitude] ^short      = "Longitude for the address"
* extension[longitude] ^definition = "Longitude for the address"
* extension contains RegionCode named regionCode 0..1
* extension[regionCode] ^short      = "Customer-specific code for the geographic region of the address"
* extension[regionCode] ^definition = "Customer-specific code for the geographic region of the address"

Extension: CountyCode
Title: "County Code"
Description: "The county code for the address"
Id: county-code
* value[x] only CodeableConcept

Extension:   Latitude
Title:       "Latitude"
Description: "Latitude for the address"
Id:           latitude
* value[x] only string

Extension:   Longitude
Title:       "Longitude"
Description: "Longitude for the address"
Id:           longitude
* value[x] only string

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
