Profile:        ReferenceWithCodeAndPeriod
Parent:         Reference
Id:             reference-with-code-and-period
Title:          "Reference With Code and Period"
Description:    "A reference with one or more contextual codes and an optional period defining the time period in which the reference is valid"
* extension contains ReferenceCode named referenceCode 1..*
* extension[referenceCode] ^short      = "A code describing the context of the reference"
* extension[referenceCode] ^definition = "A code describing the context of the reference"
* extension contains ReferencePeriod named referencePeriod 0..1
* extension[referencePeriod] ^short      = "A time period in which the reference is valid"
* extension[referencePeriod] ^definition = "A time period in which the reference is valid"

Profile:        ReferenceWithPeriod
Parent:         Reference
Id:             reference-with-period
Title:          "Reference With Period"
Description:    "A reference with a period defining the time period in which the reference is valid"
* extension contains ReferencePeriod named referencePeriod 1..1
* extension[referencePeriod] ^short      = "A time period in which the reference is valid"
* extension[referencePeriod] ^definition = "A time period in which the reference is valid"

Extension:      ReferenceCode
Id:             reference-code
Title:          "Reference Code"
Description:    "A code describing the context of the reference"
* value[x] only Coding

Extension:      ReferencePeriod
Id:             reference-period
Title:          "Reference Period"
Description:    "A time period in which the reference is valid"
* value[x] only Period

Extension:      AttributedProviderReferenceWithPeriod
Id:             attributed-provider-with-period
Title:          "Attributed Provider Reference with Period"
Description:    "A reference to an attributed practitioner resource with a period defining the time period in which the attribution is valid"
* value[x] only ReferenceWithPeriod
* value[x].type = RESOURCE-TYPE#Practitioner
