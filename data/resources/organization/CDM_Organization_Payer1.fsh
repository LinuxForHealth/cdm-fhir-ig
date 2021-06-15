Instance:       Payer1
InstanceOf:     CDMOrganization
Usage:          #example
Title:          "CDM Oganization - Payer 1"
Description:    "Sample CDM Organization representing a payer"

* meta.source = "http://acme-health.com/organization/payer"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-organization"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/organization/payer"
* identifier[0].value = "Payer1"

* name = "Payer 1"
* active = true
* type = ORGANIZATION-TYPE#pay
