Profile:        AlvearieContactPoint
Id:             alvearie-contact-point
Parent:         ContactPoint
Title:          "Alvearie ContactPoint"
Description:    "ContactPoint with common extensions"
* extension contains ContactPointCountry named contactPointCountry 0..1
* extension contains ContactPointExt named contactPointExt 0..1
* extension contains TelAddress named telAddress 0..1
* extension[contactPointCountry] ^short = "The country code as defined by the ITU. This extension is used when a system wishes to designate specific parts of a phone number"
* extension[contactPointExt] ^short = "The number that may be dialed within a private phone network or after successfully connecting to a private phone network."
* extension[telAddress] ^short = "A V3 compliant, RFC 3966 conformant URI version of the telephone or fax number"

// ContactPoint phone draft extensions
// - Adds country for phone numbers
// - Adds extension for business phone networks
Alias: ContactPointCountry = http://hl7.org/fhir/StructureDefinition/contactpoint-country
Alias: ContactPointExt = http://hl7.org/fhir/StructureDefinition/contactpoint-extension
Alias: TelAddress = http://hl7.org/fhir/StructureDefinition/iso21090-TEL-address