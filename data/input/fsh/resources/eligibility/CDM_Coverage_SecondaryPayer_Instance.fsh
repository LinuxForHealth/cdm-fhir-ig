Instance:       SecondaryPayerExample
InstanceOf:     CDMCoverage
Usage:          #example
Title:          "Coverage Example - Secondary Payer"
Description:    "Example of secondary payer data originating from an EMR system"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-coverage"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/coverage"
* identifier[0].value = "d3f8b14e-039f-4e2b-abd5-0b59cffe2756"
* identifier[0].assigner.display = "Acme Health - EMR1"

* status = #active
* type = COVERAGE-TYPE#RETIRE
* policyHolder = Reference(CDMPatientInstance)
* subscriber = Reference(CDMPatientInstance)
* beneficiary = Reference(CDMPatientInstance)
* relationship = COVERAGE-RELATIONSHIP#self
* period.start = "2020-01-01T00:00:00Z"

* payor.type = RESOURCE-TYPE#Organization
* payor.identifier.system = "http://acme-health.com/organization/payer"
* payor.identifier.value = "VA"

* class[0].type = COVERAGE-CLASS#group
* class[0].value = "RET-VHA"
* class[0].name = "RETIREE"
* class[1].type = COVERAGE-CLASS#plan
* class[1].value = "VHA"
* order = 2
* network = "VHA"
