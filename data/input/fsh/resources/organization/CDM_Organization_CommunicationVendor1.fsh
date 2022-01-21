Instance:       CommunicationVendor1
InstanceOf:     CDMOrganization
Usage:          #example
Title:          "CDM Oganization - Communication Vendor 1"
Description:    "Sample CDM Organization representing a communication vendor"

* meta.source = "http://ibm.com/wffh/platform"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-organization"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://ibm.com/wffh/communication-vendor"
* identifier[0].value = "CommunicationVendor1"

* name = "Communication Vendor 1"
* active = true
* type = ORGANIZATION-TYPE#bus
