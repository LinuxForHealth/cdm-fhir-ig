Instance:       GeneralHospital
InstanceOf:     CDMOrganization
Usage:          #example
Title:          "CDM Organization - General Hospital"
Description:    "Sample CDM Organizationr representing a hospital ingested from a EMR or PMS system"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-organization"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/organization"
* identifier[0].value = "7d5007d6-edd0-48b5-b34f-5c5f948b6d13"
* identifier[0].assigner.display = "Acme Health - EMR1"

* name = "General Hospital"
* active = true
* type.coding[0] = ORGANIZATION-TYPE#prov
* type.coding[1] = ORGANIZATION-SIC#6324 "Hospital and Medical Service Plans"

* address.use = #work
* address.type = #physical
* address.line = "100 Easy Street"
* address.city = "Irving"
* address.state = "TX"
* address.postalCode = "75014"
* address.country = "US"
* address.district = "Dallas"

* telecom[0].system = #phone
* telecom[0].use = #work
* telecom[0].value = "214-555-6000"
* telecom[0].extension[contactpoint-country].valueString = "1"
* telecom[0].extension[contactpoint-extension].valueString = "100"

* telecom[1].system = #fax
* telecom[1].use = #work
* telecom[1].value = "214-555-6001"
* telecom[1].extension[contactpoint-country].valueString = "1"
