Instance:       DrKelly
InstanceOf:     CDMPractitioner
Usage:          #example
Title:          "CDM Practitioner - Dr Kelly"
Description:    "Sample CDM Practitioner ingested from a EMR or PMS system"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-practitioner"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* name.given = "Debra"
* name.given[1] = "R"
* name.family = "Kelly"
* name.prefix = "Dr"
* name.suffix = "MD"
* name.text = "Dr Debra R Kelly, MD"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/practitioner"
* identifier[0].value = "0d82c96d-98c5-46cf-911d-a41991601320"
* identifier[0].assigner.display = "Acme Health - EMR1"

* identifier[1].use = #official
* identifier[1].type = ID-TYPE#PRN
* identifier[1].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[1].value = "1122334499"
* identifier[1].assigner.display = "cms.gov"

* identifier[2].use = #secondary
* identifier[2].type = ID-TYPE#TAX
* identifier[2].system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[2].value = "123456789"
* identifier[2].assigner.display = "irs.gov"

* address.use = #work
* address.type = #physical
* address.line = "200 Main Street"
* address.line[1] = "Suite 101"
* address.city = "Irving"
* address.state = "TX"
* address.postalCode = "75014"
* address.country = "US"
* address.district = "TX"

* telecom[0].system = #phone
* telecom[0].use = #work
* telecom[0].value = "214-555-2100"
* telecom[0].extension[contactPointCountry].valueString = "1"
* telecom[0].extension[contactPointExt].valueString = "101"
* telecom[0].extension[telAddress].valueUrl = "tel:+12145552100;ext=101"

* telecom[1].system = #fax
* telecom[1].use = #work
* telecom[1].value = "214-555-2101"
* telecom[1].extension[contactPointCountry].valueString = "1"
* telecom[1].extension[telAddress].valueUrl = "tel:+12145552101"

* telecom[2].system = #email
* telecom[2].use = #work
* telecom[2].value = "drkelly@kellyclinic.com"
