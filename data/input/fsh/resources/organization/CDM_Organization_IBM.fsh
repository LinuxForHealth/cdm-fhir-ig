Instance:       IBM
InstanceOf:     CDMOrganization
Usage:          #example
Title:          "CDM Oganization - IBM"
Description:    "Sample CDM Organization representing IBM"

* meta.source = "http://ibm.com/wffh/platform"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-organization"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://ibm.com/wffh/organization"
* identifier[0].value = "IBM"

* name = "IBM"
* active = true
* type = ORGANIZATION-TYPE#bus