Instance:       KellyClinic
InstanceOf:     CDMLocation
Usage:          #example
Title:          "CDM Location - Kelly Clinic"
Description:    "Sample CDM Location ingested from a EMR or PMS system"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-location"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/location"
* identifier[0].value = "7d5007d6-edd0-48b5-b34f-5c5f948b6d13"
* identifier[0].assigner.display = "Acme Health - EMR1"

* identifier[1].use = #secondary
* identifier[1].type = ID-TYPE#TAX
* identifier[1].system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[1].value = "223338765"
* identifier[1].assigner.display = "irs.gov"

* name = "Kelly Clinic"
* status = #active

* mode = #instance
* type = CMS-PLACE-OF-SERVICE#11 "Office"  
* physicalType = LOCATION-PHYSICAL-TYPE#bu "Building"

* address.use = #work
* address.type = #physical
* address.line = "200 Main Street"
* address.city = "Irving"
* address.state = "TX"
* address.postalCode = "75014"
* address.country = "US"
* address.district = "Dallas"

* telecom[0].system = #phone
* telecom[0].use = #work
* telecom[0].value = "214-555-2100"
* telecom[0].extension[contactPointCountry].valueString = "1"
* telecom[0].extension[contactPointExt].valueString = "100"
* telecom[0].extension[telAddress].valueUrl = "tel:+12145552100;ext=100"

* telecom[1].system = #fax
* telecom[1].use = #work
* telecom[1].value = "214-555-2101"
* telecom[1].extension[contactPointCountry].valueString = "1"
* telecom[1].extension[telAddress].valueUrl = "tel:+12145552101"

* hoursOfOperation[0].daysOfWeek[0] = #mon
* hoursOfOperation[0].daysOfWeek[1] = #tue
* hoursOfOperation[0].daysOfWeek[2] = #wed
* hoursOfOperation[0].daysOfWeek[3] = #thu
* hoursOfOperation[0].openingTime = "08:00:00"
* hoursOfOperation[0].openingTime = "17:00:00"
* hoursOfOperation[1].daysOfWeek[0] = #fri
* hoursOfOperation[1].openingTime = "08:00:00"
* hoursOfOperation[1].closingTime = "12:00:00"
* hoursOfOperation[2].daysOfWeek[0] = #sat
* hoursOfOperation[2].openingTime = "10:00:00"
* hoursOfOperation[2].closingTime = "15:00:00"
