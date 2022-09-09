Instance:       MatchedLocationSource-EMR1-LocationA
InstanceOf:     CDMLocation
Usage:          #example
Title:          "Matched Location Source - EMR1 Location A"
Description:    "Sample of a matched source location with mpi guid identifier and reference to the match location"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-location"

/// ADDING TENANT-ID, BATCH-ID
* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/location"
* identifier[0].value = "locationA"
* identifier[0].assigner.display = "Acme Health - EMR1"

* identifier[1].use = #secondary
* identifier[1].type = ID-TYPE#TAX
* identifier[1].system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[1].value = "222333789"
* identifier[1].assigner.display = "irs.gov"

* identifier[2].use = #secondary
* identifier[2].type = IdentifierTypeCodeSystem#MDI
* identifier[2].system = "http://linuxforhealth.org/platform/location-match-identifier"
* identifier[2].value = "7610613e-2ecb-4cf5-815c-42a9589b2245"
* identifier[2].assigner.display = "HDC"

* name = "Match Family Clinic"
