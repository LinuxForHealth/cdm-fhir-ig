Instance:       CDMServiceRequestInstance
InstanceOf:     CDMServiceRequest
Usage:          #example
Title:          "CDM Service Request Example"
Description:    "Sample of a CDM Service Request"

* meta.source  = "http://acme-health.com/WellnessMedicalCenter"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-service-request"

* meta.extension[tenantId].valueString         = "tenant7209"
* meta.extension[ingestionBatchId].valueString = "rgVCJnQBxvghkKTI8Hzz"
* meta.extension[processName].valueString      = "TREX"
* meta.extension[processClientId].valueString  = "7209"
* meta.extension[processRecordId].valueIdentifier.system  = "http://acme-health.com/WellnessMedicalCenter"
* meta.extension[processRecordId].valueIdentifier.value   = "7209_07869_e00080779_3938586_2516181"
* meta.extension[sourceFileId].valueString     = "e00080779"

* identifier[0].use                = #official
* identifier[0].type               = IdentifierTypeCodeSystem#SSRI
* identifier[0].system             = "http://acme-health.com/CodeSystem/local-identifier"
* identifier[0].value              = "000000000000000000019721078"
* identifier[0].assigner.display   = "Acme Health - Wellness Medical Center"

* status   = #completed
* intent   = #order
* subject  = Reference(CDMPatientInstance)

* category.coding.system = "http://acme-health.com/CodeSystem/local-referral-type"
* category.coding.code   = #localreferraltype
