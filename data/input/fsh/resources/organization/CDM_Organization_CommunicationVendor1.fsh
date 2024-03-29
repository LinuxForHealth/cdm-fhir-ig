Instance:       CommunicationVendor1
InstanceOf:     CDMOrganization
Usage:          #example
Title:          "CDM Oganization - Communication Vendor 1"
Description:    "Sample CDM Organization representing a communication vendor"

* meta.source = "http://linuxforhealth.org/platform"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-organization"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://linuxforhealth.org/platform/communication-vendor"
* identifier[0].value = "CommunicationVendor1"

* name = "Communication Vendor 1"
* active = true
* type = ORGANIZATION-TYPE#bus
