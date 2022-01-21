Instance:       Payer1
InstanceOf:     CDMOrganization
Usage:          #example
Title:          "CDM Organization - Payer 1"
Description:    "Sample CDM Organization representing a payer"

* meta.source = "http://acme-health.com/organization/payer"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-organization"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/organization/payer"
* identifier[0].value = "Payer1"

* name = "Payer 1"
* active = true
* type.coding[0] = ORGANIZATION-TYPE#pay
* type.coding[1] = http://acme-health.com/CodeSystem/local-provider-type#LocPayerType

* address.use = #work
* address.type = #physical
* address.line = "200 Main Street"
* address.line[1] = "Suite 101"
* address.city = "Irving"
* address.state = "TX"
* address.postalCode = "75014"
* address.country = "US"
* address.district = "TX"
* address.extension[countyCode].valueCodeableConcept = http://acme-health.com/CodeSystem/local-county-code#057
