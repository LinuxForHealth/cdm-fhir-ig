Instance:       CDMPractitionerRole-Attributed-PCP
InstanceOf:     CDMPractitionerRole
Title:          "CDM Practitioner Role - Attributed PCP"
Description:    "Sample CDM PractitionerRole created by engagement PCP attribution"
Usage:          #example

* meta.source = "http://ibm.com/fhir/engagement-attribution"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-practitioner-role"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* meta.extension[processOrganization].valueString = "IBM"
* meta.extension[processType].valueString = "Attribution"
* meta.extension[processName].valueString = "EngagementAttribution"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-02-14T03:18:00Z"
* meta.tag = ProcessMetaSourceClassification#derived

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#DRI
* identifier[0].system = "http://ibm.com/fhir/cdm/engagement-attributed-pcp"
* identifier[0].value = "dd914419-12db-4367-aa93-5c7930510e19"
* identifier[0].assigner.display = "IBM"

* active = true
* practitioner = Reference(DrKelly)
* location = Reference(KellyClinic)
