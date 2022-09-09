Instance:       CDMBasicPIIInstance
InstanceOf:     CDMBasic
Usage:          #example
Title:          "CDM Claim - Basic Resource Example"
Description:    "Sample of a CDM Basic Resource with PII token"

* meta.source  = "http://linuxforhealth.org/ApplicationA"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-basic"

* meta.extension[tenantId].valueString         = "tenant12345"
* meta.extension[ingestionBatchId].valueString = "zgVCJnQBxvshkKBI8Hzz"
* meta.extension[processName].valueString      = "HDP"
* meta.extension[processClientId].valueString  = "1234"
* meta.extension[processRecordId].valueIdentifier.system  = "http://linuxforhealth.org/ApplicationA"
* meta.extension[processRecordId].valueIdentifier.value   = "7209_07869_e00080779_3938586_2516181"
* meta.extension[sourceFileId].valueString     = "e00014543"

* identifier.use                = #official
* identifier.type               = IdentifierTypeCodeSystem#TKN
* identifier.system             = "http://linuxforhealth.org/CodeSystem/local-pii-identifier"
* identifier.value              = "2d86c4246a3c1eb516628bf324w6b9b3"

* code     =  BasicResourceTypeCodeSystem#patient-tokens
* subject  =  Reference(CDMPatientInstance)
* created  = "2017-07-25"

