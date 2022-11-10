Instance:       PrimaryPayerExample
InstanceOf:     CDMCoverage
Usage:          #example
Title:          "Coverage Example - Primary Payer"
Description:    "Example of primary payer data originating from an EMR system"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-coverage"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/coverage"
* identifier[0].value = "c35466d6-0d2b-4efa-8265-b9ac3f887e08"
* identifier[0].assigner.display = "Acme Health - EMR1"

* status = #active
* type = COVERAGE-TYPE#PPO

* policyHolder = Reference(Employer1)

* subscriber.type = RESOURCE-TYPE#RelatedPerson
* subscriber.identifier.system = "http://acme-health.com/emr1/related-person"
* subscriber.identifier.value = "Spouse1"

* beneficiary = Reference(CDMPatientInstance)
* relationship = COVERAGE-RELATIONSHIP#spouse
* period.start = "2020-01-01T00:00:00Z"
* payor = Reference(Payer1)
* class[0].type = COVERAGE-CLASS#group
* class[0].value = "10985-PAYER1"
* class[0].name = "PPO with HSA"
* class[1].type = COVERAGE-CLASS#plan
* class[1].value = "282"
* order = 1
* network = "Choice POS II"
