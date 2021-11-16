Extension:      EncryptedState
Id:             encrypted-state
Title:          "Encrypted State"
Description:    "Encrypted state"
* value[x] only boolean

Profile:        CDMIdentifier
Parent:         Identifier
Id:             cdm-identifier
Title:          "CDM Identifier"
Description:    "CDM identifier with extensions"

* extension contains EncryptedState named encryptedState 0..1

* extension[encryptedState] ^short      = "Used to indicate whether the identifier value is encrypted"
* extension[encryptedState] ^definition = "Used to indicate whether the identifier value is encrypted"
