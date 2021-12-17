Instance:       CareGapDetectedIssueExample
InstanceOf:     CareGapDetectedIssue
Usage:          #example
Title:          "Care Gap Detected Issue Example"
Description:    "Example of an detected issue indicating that the patient was in a care gap over a period of time"

* meta.source = "http://ibm.com/fhir/engagement-measure-cohort"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/care-gap-detected-issue"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"
* meta.extension[processOrganization].valueString = "IBM"
* meta.extension[processType].valueString = "Cohorting"
* meta.extension[processName].valueString = "Powersearch"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-02-12T02:01:00Z"

* identifier.type = IdentifierTypeCodeSystem#DRI
* identifier.system = "http://ibm.com/fhir/cdm/care-gap-detected-issue"
* identifier.value = "d90a8ceb-6f1a-4bc6-8d2a-8c00e6ea8a3e"
* identifier.assigner.display = "IBM"

* status = #final

* patient = Reference(Patient1)
* identifiedPeriod.start = "2020-02-14"
* identifiedPeriod.end = "2020-02-28"

* extension[canonicalMeasure].valueCanonical = "Measure-QualityMeasureExample.html"
* extension[measurePopulationId].valueId = "dm-hba1c-caregap-poor-control"
* extension[assignedPractitioner][0].valueReference = Reference(CDMPractitionerRole-Attributed-PCP)
* extension[assignedPractitioner][1].valueReference = Reference(AttributedPractitioner2)

* extension[careGapComplianceDisplayName].valueString = "HbA1c Test"
* extension[careGapComplianceFrequency].valueString = "Once yearly"
* extension[careGapComplianceMet].valueBoolean = true

* extension[relatedIssue].valueReference = Reference(RelatedCareGapDetectedIssue)

Instance:       RelatedCareGapDetectedIssue
InstanceOf:     CareGapDetectedIssue
Usage:          #inline
* identifier.type = IdentifierTypeCodeSystem#DRI
* identifier.system = "http://ibm.com/fhir/cdm/care-gap-detected-issue"
* identifier.value = "4dee9608-e1e0-4653-9f75-b7bdb8d3a968"
* identifier.assigner.display = "IBM"
* status = #final
* patient = Reference(Patient1)
* identifiedPeriod.start = "2020-02-01"
* identifiedPeriod.end = "2020-02-13"
* extension[canonicalMeasure].valueCanonical = "Measure-QualityMeasureExample.html"
* extension[measurePopulationId].valueId = "dm-hba1c-caregap-poor-control"

Instance:       Patient1
InstanceOf:     Patient
Usage:          #inline

Instance:   AttributedPractitioner2
InstanceOf: PractitionerRole
Usage:      #inline
