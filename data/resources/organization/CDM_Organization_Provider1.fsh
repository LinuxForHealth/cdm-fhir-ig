Instance:       Provider1
InstanceOf:     CDMOrganization
Usage:          #example
Title:          "CDM Organization - Provider 1"
Description:    "Sample CDM Organization representing a health care provider"

* meta.source  = "http://acme-health.com/organization/provider"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-organization"

* identifier[0].use    = #official
* identifier[0].type   = ID-TYPE#NPI
* identifier[0].system = US-NPI
* identifier[0].value  = "12345123450"

* name = "Acme Health Care"
* active = true
* type = WhPayerProviderTypeCodeSystem#1

* address.use = #work
* address.type = #physical
* address.line = "100 Mesa Drive"
* address.city = "El Paso"
* address.state = "TX"
* address.postalCode = "79912"
* address.country = "US"
* address.district = "TX"
* address.extension[countyCode].valueCodeableConcept = http://acme-health.com/CodeSystem/local-county-code#057

* telecom[0].system = #phone
* telecom[0].use = #work
* telecom[0].value = "915-555-6000"
* telecom[0].extension[contactpoint-country].valueString = "1"
* telecom[0].extension[contactpoint-extension].valueString = "100"

* telecom[1].system = #fax
* telecom[1].use = #work
* telecom[1].value = "915-555-6001"
* telecom[1].extension[contactpoint-country].valueString = "1"
