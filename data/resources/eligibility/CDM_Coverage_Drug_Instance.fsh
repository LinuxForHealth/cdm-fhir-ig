Instance:       CoverageDrugExample
InstanceOf:     CDMCoverage
Usage:          #example
Title:          "CDM Claim - Drug Coverage Example"
Description:    "Sample of a CDM Drug Coverage Claim"

* meta.source  = "http://acme-health.com/WellnessCenterPharmacy"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-coverage"

* identifier[0].type                   = IdentifierTypeCodeSystem#SSRI
* identifier[0].system                 = "http://acme-health.com/emr1/WellnessCenterPharmacy"
* identifier[0].value                  = "encryp-id1234"
* identifier[0].extension.url          = "http://ibm.com/fhir/cdm/StructureDefinition/encrypted-state"
* identifier[0].extension.valueBoolean = true

* payor.type              = RESOURCE-TYPE#Organiation
* payor.identifier.system = "http://acme-health.com/payer1/payer"
* payor.identifier.value  = "encryp-id1234"

* beneficiary.type              = RESOURCE-TYPE#Person
* beneficiary.identifier.system = "http://acme-health.com/emr1/person"
* beneficiary.identifier.value  = "Payer1"

* subscriber = Reference(CDMPatientInstance)

* status      = #active

* extension[ageGenderGroup].valueCodeableConcept          = AgeGenderGroupCodeSystem#7
* extension[snapshotAgeInYears].valueUnsignedInt           = 21
* extension[claimGroupIdentifier].valueString              = "claim group id"
* extension[coverageMonth].valueDate                       = "2017-06-01"
* extension[employeeCount].valueUnsignedInt                = 1
* extension[whPayerSubscriberRelationshipCode].valueString = "2"
* extension[employeeStatus].valueCodeableConcept           = WhPayerEmployeeStatusCodeSystem#1 "Active Full Time"
* extension[employeeHireDate].valueDate                    = "2017-01-30"
* period.start                                             = "2017-06-01"
* period.end                                               = "2017-06-30"
