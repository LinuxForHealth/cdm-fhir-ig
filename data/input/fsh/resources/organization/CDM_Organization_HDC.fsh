Instance:       HDC
InstanceOf:     CDMOrganization
Usage:          #example
Title:          "CDM Oganization - HDC"
Description:    "Sample CDM Organization representing Health Data Connect"

* meta.source = "http://ibm.com/wffh/platform"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-organization"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://ibm.com/wffh/organization"
* identifier[0].value = "HDC"

* name = "HDC"
* active = true
* type = ORGANIZATION-TYPE#bus