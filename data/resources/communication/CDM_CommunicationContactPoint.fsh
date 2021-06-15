Profile:        CDMCommunicationContactPoint
Parent:         ContactPoint
Id:             cdm-communication-contact-point
Title:          "Communication Contact Point"
Description:    "Contact point extended with country and phone ext for communications"
* extension contains ContactPointCountry named contactPointCountry 0..1 
* extension contains ContactPointExt named contactPointExt 0..1
* extension contains TelAddress named telAddress 0..1
* extension[contactPointCountry] ^short      = "The country code as defined by the ITU. This extension is used when a system wishes to designate specific parts of a phone number."
* extension[contactPointCountry] ^definition = "The country code as defined by the ITU. This extension is used when a system wishes to designate specific parts of a phone number."
* extension[contactPointExt] ^short      = "The number that may be dialed within a private phone network or after successfully connecting to a private phone network"
* extension[contactPointExt] ^definition = "The number that may be dialed within a private phone network or after successfully connecting to a private phone network"
* extension[telAddress] ^short      = "A V3 compliant, RFC 3966 conformant URI version of the telephone or fax number"
* extension[telAddress] ^definition = "A V3 compliant, RFC 3966 conformant URI version of the telephone or fax number"
