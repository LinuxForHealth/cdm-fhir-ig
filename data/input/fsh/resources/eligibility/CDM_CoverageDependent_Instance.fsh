Instance:           CoverageDependentExample
InstanceOf:         CDMCoverage
Usage:              #example
Title:              "Coverage Dependent Example"
Description:        "Example of a coverage record for a child beneficiary"

* meta.source  = "http://acme-health.com/WellnessInsuranceCompany"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-coverage"
* meta.extension[sourceFileId].valueString     = "e00083333"

* identifier.use                 = #official
* identifier.type                = IdentifierTypeCodeSystem#SSRI
* identifier.system              = "http://acme-health.com/emr1/coverage"
* identifier.value               = "c35466d6-0d2b-4efa-8265-b9ac3f887e08"
* identifier.assigner.display    = "Acme Health - EMR1"

* payor.type              = RESOURCE-TYPE#Organiation
* payor.identifier.system = "http://acme-health.com/payer1/payer"
* payor.identifier.value  = "PayerId09876"

* beneficiary = Reference(CDMPatientInstance)

* subscriberId                                  = "FamilyId_0001"
* extension[subscriberIdEncrypted].valueString = "p58299i3-3t5z-2hyg-7256-g2un4f887e08"

* status = #active

* extension[ageGenderGroup].valueCodeableConcept         = AgeGenderGroupCodeSystem#4
* extension[snapshotAgeInYears].valueUnsignedInt         = 13
* period.start                                           = "2000-01-01"
* period.end                                             = "2000-10-31"

* extension[benefitStatus].valueCodeableConcept          = HipaaBenefitStatusCodeSystem#A
* extension[coverageMonth].valueDate                     = "2000-06-01"

* extension[enrollmentPcpNameOnEnrollment].valueString    = "Dr Kelly"
* extension[enrollmentPcpZipOnEnrollment].valueString     = "75014"
* extension[enrollmentPcp].valueString                    = "EnrollmentPCP1"

* class[0].type.coding  = PayerCoverageClassCodeSystem#election-tier
* class[0].value        = "Family"
* class[1].type.coding  = PayerCoverageClassCodeSystem#group-type
* class[1].value        = "HMO" 
* class[2].type.coding  = COVERAGE-CLASS#group
* class[2].value        = "GR12345"

* relationship.coding[0] = SUBSCRIBER-RELATIONSHIP#child
* relationship.coding[1] = PayerSubscriberRelationshipCodeSystem#childother
