Instance:       DrSmith
InstanceOf:     CDMPractitioner
Usage:          #example
Title:          "CDM Practitioner - Dr Smith"
Description:    "Sample CDM Practitioner ingested from a EMR or PMS system"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-practitioner"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* name.given = "Samuel"
* name.given[1] = "W"
* name.family = "Smith"
* name.prefix = "Dr"
* name.suffix = "MD"
* name.text = "Dr Samuel W Smith, MD"

* identifier[0].use = #official
* identifier[0].type = ID-TYPE#PRN
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[0].value = "33449988771166"
* identifier[0].assigner.display = "Acme Health PRN"

* address.use = #work
* address.type = #physical
* address.line = "200 W Park Drive"
* address.city = "Irving"
* address.state = "TX"
* address.postalCode = "75014"
* address.country = "US"
* address.district = "TX"

* telecom[0].system = #phone
* telecom[0].use = #work
* telecom[0].value = "972-678-8755"
* telecom[0].extension[contactPointCountry].valueString = "1"
* telecom[0].extension[contactPointExt].valueString = "567"
* telecom[0].extension[telAddress].valueUrl = "tel:+119726788755;ext=567"

* telecom[1].system = #fax
* telecom[1].use = #work
* telecom[1].value = "972-678-8756"
* telecom[1].extension[contactPointCountry].valueString = "1"
* telecom[1].extension[telAddress].valueUrl = "tel:+19726788756"

* telecom[2].system = #email
* telecom[2].use = #work
* telecom[2].value = "drsmith@healthclinic.com"
