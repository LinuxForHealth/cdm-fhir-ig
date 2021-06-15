Instance:       Employer1
InstanceOf:     CDMOrganization
Usage:          #example
Title:          "CDM Oganization - Employer 1"
Description:    "Sample CDM Organization representing an employer"

* meta.source = "http://acme-health.com/organization/employer"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-organization"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/organization/employer"
* identifier[0].value = "Employer1"

* name = "Employer 1"
* active = true
* type = ORGANIZATION-TYPE#bus
