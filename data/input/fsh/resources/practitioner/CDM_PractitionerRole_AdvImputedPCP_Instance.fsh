Instance:       CDMPractitionerRole-Advantage-Imputed-PCP
InstanceOf:     CDMPractitionerRole
Title:          "CDM Practitioner Role - Advantage Imputed PCP"
Description:    "Sample imputed PCP created from Advantage Suite"
Usage:          #example

* meta.source = "http://ibm.com/fhir/advantage-attribution"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-practitioner-role"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* meta.extension[processOrganization].valueString = "IBM"
* meta.extension[processType].valueString = "Attribution"
* meta.extension[processName].valueString = "AdvantageAtrribution"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-02-14T03:18:02Z"
* meta.tag = ProcessMetaSourceClassification#derived

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#DRI
* identifier[0].system = "http://ibm.com/fhir/cdm/advantage-imputed-pcp"
* identifier[0].value = "3cce418a-1006-4914-90b5-70bd3d3af1d8"
* identifier[0].assigner.display = "IBM Advantage Suite"

* active = true
* practitioner = Reference(DrKelly)
* location = Reference(KellyClinic)
