Instance:       Provider1
InstanceOf:     CDMOrganization
Usage:          #example
Title:          "CDM Organization - Provider 1"
Description:    "Sample CDM Organization representing a provider"

* meta.source  = "http://acme-health.com/emr1/provider-organization"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-organization"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/provier-organization"
* identifier[0].value = "7a44c7b9-da71-4138-a48c-48b94163bbd3"
* identifier[0].assigner.display = "Acme Health - EMR1"

* identifier[1].use    = #secondary
* identifier[1].type   = ID-TYPE#NPI
* identifier[1].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[1].value  = "1122445599"
* identifier[1].assigner.display = "cms.gov"

* identifier[2].use = #secondary
* identifier[2].type = ID-TYPE#TAX
* identifier[2].system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[2].value = "123444222"
* identifier[2].assigner.display = "irs.gov"

* name = "Dr Smith"
* active = true
* type = PayerProviderTypeCodeSystem#204

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
