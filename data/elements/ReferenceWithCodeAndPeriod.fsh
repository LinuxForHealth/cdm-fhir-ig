Profile: ReferenceWithCodeAndPeriod
Parent: Reference
Title: "Reference with code and period"
Id: reference-with-code-and-period
* extension contains ReferenceCode named referenceCode 1..*
* extension contains ReferencePeriod named referencePeriod 0..1

Profile: ReferenceWithPeriod
Parent: Reference
Title: "Reference with Period"
Id: reference-with-period
* extension contains ReferencePeriod named referencePeriod 1..1

Extension: ReferenceCode
Title: "Reference Code"
Id: reference-code
* value[x] only Coding

Extension: ReferencePeriod
Title: "Reference Period"
Id: reference-period
* value[x] only Period

Extension: AttributedProviderReferenceWithPeriod
Title: "Attributed provider reference with period"
Id: attributed-provider-with-period
* value[x] only ReferenceWithPeriod
* value[x].type = RESOURCE-TYPE#Practitioner