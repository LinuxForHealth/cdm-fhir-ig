Instance:       MatchedPractitionerExample
InstanceOf:     CDMMatchPractitioner
Usage:          #example
Title:          "Matched Practitioner Example"
Description:    "Sample of a matched practitioner linked to multiple source practitioners, each with confidence level and period"

* meta.source = "http://ibm.com/fhir/primary/practitioner-match"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-match-practitioner"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* meta.extension[processOrganization].valueString = "IBM"
* meta.extension[processType].valueString = "Matching"
* meta.extension[processName].valueString = "Practitioner Matching"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-02-12T03:01:00Z"
* meta.tag = ProcessMetaSourceClassification#derived

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#MDI
* identifier[0].system = "http://ibm.com/fhir/primary/practitioner-match-identifier"
* identifier[0].value = "e65bdcac-6e50-4353-8faa-dc147a603468"
* identifier[0].assigner.display = "IBM"

* identifier[1].use = #official
* identifier[1].type = ID-TYPE#PRN
* identifier[1].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[1].value = "1122445599"
* identifier[1].assigner.display = "cms.gov"

* name.given = "Rosemary"
* name.given[1] = "B"
* name.family = "Match"
* name.prefix = "Dr"
* name.suffix = "MD"
* name.text = "Dr Rosemary B Match, MD"

// AUTMOMATED HIGH CONFIDENCE MATCH 1 - EMR2
* extension[seeAlso][0].extension[matchSourceReference].valueReference = Reference(MatchedPractitionerSource-EMR1-PractitionerA)
* extension[seeAlso][0].extension[matchMethod].valueCodeableConcept = MatchMethodCodeSystem#automated
* extension[seeAlso][0].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][0].extension[matchConfidenceScore].valueDecimal = 100.0
* extension[seeAlso][0].extension[matchPeriod].valuePeriod.start = "2020-02-12"
* extension[seeAlso][0].extension[matchDetail][0].extension[matchComparedTo].valueReference = Reference(MatchedPractitionerSource-EMR2-PractitionerB)
* extension[seeAlso][0].extension[matchDetail][0].extension[matchCriteria].valueString = "NPI match"
* extension[seeAlso][0].extension[matchDetail][0].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][0].extension[matchDetail][0].extension[matchConfidenceScore].valueDecimal = 100.0
* extension[seeAlso][0].extension[matchDetail][1].extension[matchComparedTo].valueReference = Reference(MatchedPractitionerSource-EMR2-PractitionerB)
* extension[seeAlso][0].extension[matchDetail][1].extension[matchCriteria].valueString = "TIN match"
* extension[seeAlso][0].extension[matchDetail][1].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][0].extension[matchDetail][1].extension[matchConfidenceScore].valueDecimal = 100.0
////
* extension[seeAlso][0].extension[7].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* extension[seeAlso][0].extension[7].valueString = "IBM"
* extension[seeAlso][0].extension[8].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* extension[seeAlso][0].extension[8].valueString = "Practitioner Match"
* extension[seeAlso][0].extension[9].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* extension[seeAlso][0].extension[9].valueString = "MDM"
* extension[seeAlso][0].extension[10].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* extension[seeAlso][0].extension[10].valueString = "1.0"
* extension[seeAlso][0].extension[11].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* extension[seeAlso][0].extension[11].valueDateTime = "2020-01-01T03:01:00Z"

// AUTMOMATED HIGH CONFIDENCE MATCH 2 - EMR1
* extension[seeAlso][1].extension[matchSourceReference].valueReference = Reference(MatchedPractitionerSource-EMR1-PractitionerA)
* extension[seeAlso][1].extension[matchMethod].valueCodeableConcept = MatchMethodCodeSystem#automated
* extension[seeAlso][1].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][1].extension[matchConfidenceScore].valueDecimal = 100.0
* extension[seeAlso][1].extension[matchPeriod].valuePeriod.start = "2020-02-12"
* extension[seeAlso][1].extension[matchDetail][0].extension[matchComparedTo].valueReference = Reference(MatchedPractitionerSource-EMR2-PractitionerB)
* extension[seeAlso][1].extension[matchDetail][0].extension[matchCriteria].valueString = "NPI match"
* extension[seeAlso][1].extension[matchDetail][0].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][1].extension[matchDetail][0].extension[matchConfidenceScore].valueDecimal = 100.0
* extension[seeAlso][1].extension[matchDetail][1].extension[matchComparedTo].valueReference = Reference(MatchedPractitionerSource-EMR2-PractitionerB)
* extension[seeAlso][1].extension[matchDetail][1].extension[matchCriteria].valueString = "TIN match"
* extension[seeAlso][1].extension[matchDetail][1].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][1].extension[matchDetail][1].extension[matchConfidenceScore].valueDecimal = 100.0
////
* extension[seeAlso][1].extension[7].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* extension[seeAlso][1].extension[7].valueString = "IBM"
* extension[seeAlso][1].extension[8].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* extension[seeAlso][1].extension[8].valueString = "Practitioner Match"
* extension[seeAlso][1].extension[9].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* extension[seeAlso][1].extension[9].valueString = "MDM"
* extension[seeAlso][1].extension[10].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* extension[seeAlso][1].extension[10].valueString = "1.0"
* extension[seeAlso][1].extension[11].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* extension[seeAlso][1].extension[11].valueDateTime = "2020-01-01T03:01:00Z"
