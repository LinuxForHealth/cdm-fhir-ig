Instance:       MatchedLocationExample
InstanceOf:     CDMMatchLocation
Usage:          #example
Title:          "Matched Location Example"
Description:    "Sample of a matched location linked to multiple source locations, each with confidence level and period"

* meta.source = "http://linuxforhealth.org/platform/primary/location-match"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-match-location"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* meta.extension[processOrganization].valueString = "HDC"
* meta.extension[processType].valueString = "Matching"
* meta.extension[processName].valueString = "Location Matching"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-02-12T03:01:00Z"
* meta.tag = ProcessMetaSourceClassification#derived

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#MDI
* identifier[0].system = "http://linuxforhealth.org/platform/location-match-identifier"
* identifier[0].value = "7610613e-2ecb-4cf5-815c-42a9589b2245"
* identifier[0].assigner.display = "HDC"

* identifier[1].use = #secondary
* identifier[1].type = ID-TYPE#TAX
* identifier[1].system = "urn:oid:2.16.840.1.113883.4.4"
* identifier[1].value = "222333789"
* identifier[1].assigner.display = "irs.gov"

* name = "Match Family Clinic"

// AUTOMATED HIGH CONFIDENCE MATCH 1 - EMR2
* extension[seeAlso][0].extension[matchSourceReference].valueReference = Reference(MatchedLocationSource-EMR1-LocationA)
* extension[seeAlso][0].extension[matchMethod].valueCodeableConcept = MatchMethodCodeSystem#automated
* extension[seeAlso][0].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][0].extension[matchConfidenceScore].valueDecimal = 100.0
* extension[seeAlso][0].extension[matchPeriod].valuePeriod.start = "2020-02-12"
* extension[seeAlso][0].extension[matchDetail][0].extension[matchComparedTo].valueReference = Reference(MatchedLocationSource-EMR2-LocationB)
* extension[seeAlso][0].extension[matchDetail][0].extension[matchCriteria].valueString = "TIN match"
* extension[seeAlso][0].extension[matchDetail][0].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][0].extension[matchDetail][0].extension[matchConfidenceScore].valueDecimal = 100.0
////
* extension[seeAlso][0].extension[6].url = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/process-organization"
* extension[seeAlso][0].extension[6].valueString = "HDC"
* extension[seeAlso][0].extension[7].url = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/process-type"
* extension[seeAlso][0].extension[7].valueString = "Location Match"
* extension[seeAlso][0].extension[8].url = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/process-name"
* extension[seeAlso][0].extension[8].valueString = "MDM"
* extension[seeAlso][0].extension[9].url = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/process-version"
* extension[seeAlso][0].extension[9].valueString = "1.0"
* extension[seeAlso][0].extension[10].url = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/process-timestamp"
* extension[seeAlso][0].extension[10].valueDateTime = "2020-01-01T03:01:00Z"

// AUTOMATED HIGH CONFIDENCE MATCH 2 - EMR1
* extension[seeAlso][1].extension[matchSourceReference].valueReference = Reference(MatchedLocationSource-EMR1-LocationA)
* extension[seeAlso][1].extension[matchMethod].valueCodeableConcept = MatchMethodCodeSystem#automated
* extension[seeAlso][1].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][1].extension[matchConfidenceScore].valueDecimal = 100.0
* extension[seeAlso][1].extension[matchPeriod].valuePeriod.start = "2020-02-12"
* extension[seeAlso][1].extension[matchDetail][0].extension[matchComparedTo].valueReference = Reference(MatchedLocationSource-EMR2-LocationB)
* extension[seeAlso][1].extension[matchDetail][0].extension[matchCriteria].valueString = "TIN match"
* extension[seeAlso][1].extension[matchDetail][0].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][1].extension[matchDetail][0].extension[matchConfidenceScore].valueDecimal = 100.0
////
* extension[seeAlso][1].extension[6].url = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/process-organization"
* extension[seeAlso][1].extension[6].valueString = "HDC"
* extension[seeAlso][1].extension[7].url = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/process-type"
* extension[seeAlso][1].extension[7].valueString = "Location Match"
* extension[seeAlso][1].extension[8].url = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/process-name"
* extension[seeAlso][1].extension[8].valueString = "MDM"
* extension[seeAlso][1].extension[9].url = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/process-version"
* extension[seeAlso][1].extension[9].valueString = "1.0"
* extension[seeAlso][1].extension[10].url = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/process-timestamp"
* extension[seeAlso][1].extension[10].valueDateTime = "2020-01-01T03:01:00Z"
