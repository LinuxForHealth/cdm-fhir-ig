Extension:      EncryptedState
Id:             encrypted-state
Title:          "Encrypted State"
Description:    "Encrypted state"
* value[x] only boolean

Profile:        AlvearieIdentifier
Parent:         Identifier
Id:             alvearie-identifier
Title:          "Alvearie Identifier"
Description:    "Alvearie identifier with support for encrypted value"
* extension contains EncryptedState named encryptedState 0..1
* extension[encryptedState] ^short = "Used to indicates whether the identifier value is encrypted."