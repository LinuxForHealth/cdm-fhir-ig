Instance:       MatchedPractitionerSource-EMR1-PractitionerA
InstanceOf:     CDMPractitioner
Usage:          #example
Title:          "Matched Practitioner Source - EMR1 Practitioner A"
Description:    "Sample of a matched source practitioner with mpi guid identifier and reference to the match practitioner"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-practitioner"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/practitioner"
* identifier[0].value = "providerA"
* identifier[0].assigner.display = "Acme Health - EMR1"

* identifier[1].use = #official
* identifier[1].type = ID-TYPE#PRN
* identifier[1].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[1].value = "1122445599"
* identifier[1].assigner.display = "cms.gov"

* identifier[2].use = #secondary
* identifier[2].type = 	IdentifierTypeCodeSystem#MDI
* identifier[2].system = "http://ibm.com/fhir/primary/practitioner-match-identifier"
* identifier[2].value = "e65bdcac-6e50-4353-8faa-dc147a603468"
* identifier[2].assigner.display = "IBM"

* name.given = "Rosemary"
* name.given[1] = "B"
* name.family = "Match"
* name.prefix = "Dr"
* name.suffix = "MD"
* name.text = "Dr Rosemary B Match, MD"

