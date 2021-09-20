Instance:           CoverageExample
InstanceOf:         CDMCoverage
Usage:              #example
Title:              "Coverage Example"
Description:        "Example of a coverage record for a patient beneficiary"

* payor.type              = RESOURCE-TYPE#Organiation
* payor.identifier.system = "http://acme-health.com/payer1/payer"
* payor.identifier.value  = "encryp-id1234"

* beneficiary.type              = RESOURCE-TYPE#Person
* beneficiary.identifier.system = "http://acme-health.com/emr1/person"
* beneficiary.identifier.value  = "Payer1"

* subscriberId      = "FamilyId_0001"

* status = #active

* extension[ageGenderGroup].valueCodeableConcept = AgeGenderGroupCodeSystem#7
* extension[snapshotAgeInYears].valueUnsignedInt = 21
* period.start                                   = "2000-01-01"
* period.end                                     = "2000-10-31"
* identifier[0].value = "unencryp-id1234"
* identifier[0].extension.url = "http://ibm.com/fhir/cdm/StructureDefinition/encrypted-state"
* identifier[0].extension.valueBoolean = false

* extension[coverageMonth].valueDate       = "2017-06-01"
* extension[enrollmentPcp].valueString     = "EnrollmentPCP1"

* extension[employeeStatus].valueCodeableConcept         = WhPayerEmployeeStatusCodeSystem#1
* extension[employeeBusinessUnit].valueCodeableConcept   = http://acme-health.com/CodeSystem/local-employee-business-unit#EmpBusUnit1
* extension[jobClassCode].valueCodeableConcept           = http://acme-health.com/CodeSystem/local-job-class-code#jobclass1 
* extension[salaryIndicator].valueString                 = "Y"
* extension[unionWorkerIndicator].valueString            = "N"
* extension[medicareIndicator].valueString               = "N"

* class[0].type.coding  = http://acme-health.com/CodeSystem/local-coverage-class#tier
* class[0].value        = "F"

// Class indexes 1,2,3 are placeholders to prevent QA errors. 
// Will re-evaluate for Professional and Facility claims
* class[1].type.coding  = http://acme-health.com/CodeSystem/local-coverage-class#tier
* class[1].value        = "F"
* class[2].type.coding  = http://acme-health.com/CodeSystem/local-coverage-class#tier
* class[2].value        = "F"
* class[3].type.coding  = http://acme-health.com/CodeSystem/local-coverage-class#tier
* class[3].value        = "F"

* class[4].type.coding = http://acme-health.com/CodeSystem/local-coverage-class#group
* class[4].value       = "Group1"

* relationship.coding[0] = SUBSCRIBER-RELATIONSHIP#self
* relationship.coding[1] = WhPayerSubscriberRelationshipCodeSystem#childother
