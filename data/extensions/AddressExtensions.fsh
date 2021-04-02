Profile:        AlvearieAddress
Id:             alvearie-address
Parent:         Address
Title:          "Alvearie Address"
Description:    "Address wtih common extensions"
* extension contains CountyCode named countyCode 0..1
* extension contains RegionCode named regionCode 0..1
* extension[countyCode] ^short = "Administrative division of a country or state"
* extension[regionCode] ^short = "Administrative area or division with definable characteristics"

Extension: CountyCode
Title: "County Code"
Description: "Administrative division of a country or state"
Id: county-code
* value[x] only CodeableConcept

Extension: RegionCode
Title: "Region Code"
Description: "Administrative area or division with definable characteristics"
Id: region-code
* value[x] only CodeableConcept