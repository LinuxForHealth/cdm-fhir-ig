Instance:           CoverageDeceasedExample
InstanceOf:         CDMCoverage
Usage:              #example
Title:              "Coverage Deceased Example"
Description:        "Example of a coverage record for a deceased patient beneficiary"

* meta.source  = "http://acme-health.com/WellnessInsuranceCompany"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-coverage"
* meta.extension[sourceFileId].valueString     = "e00082222"

* identifier.type                   = IdentifierTypeCodeSystem#SSRI
* identifier.system                 = "http://acme-health.com/emr1/WellnessCenter"
* identifier.value                  = "encryp-id1234"
* identifier.extension[encryptedState].valueBoolean = true

* payor.type              = RESOURCE-TYPE#Organiation
* payor.identifier.system = "http://acme-health.com/payer1/payer"
* payor.identifier.value  = "encryp-i55555"

* beneficiary = Reference(CDMPatientDeceasedExample)

* subscriberId      = "encryp-familyid-98321"

* status = #active

* extension[ageGenderGroup].valueCodeableConcept = AgeGenderGroupCodeSystem#13
* extension[snapshotAgeInYears].valueUnsignedInt = 50
* period.start                                   = "2000-01-01"
* period.end                                     = "2000-10-31"
* identifier[0].value = "unencryp-i55555"
* identifier[0].extension.url = "http://ibm.com/fhir/cdm/StructureDefinition/encrypted-state"
* identifier[0].extension.valueBoolean = false

* extension[cobraIndicator].valueString    = "N"
* extension[coverageMonth].valueDate       = "2000-06-01"
* extension[enrollmentPcp].valueString     = "EnrollmentPCP1"

* extension[employeeCompany].valueCodeableConcept        = http://acme-health.com/CodeSystem/local-employee-company#LocalEmpCompany
* extension[employeeCostCenter].valueCodeableConcept     = http://acme-health.com/CodeSystem/local-employee-cost-center#LocalEmpCostCenter
* extension[employeeStatus].valueCodeableConcept         = WhPayerEmployeeStatusCodeSystem#1
* extension[employeeBusinessUnit].valueCodeableConcept   = http://acme-health.com/CodeSystem/local-employee-business-unit#EmpBusUnit
* extension[jobClassCode].valueCodeableConcept           = http://acme-health.com/CodeSystem/local-job-class-code#jobclass
* extension[salaryIndicator].valueString                 = "Y"
* extension[unionWorkerIndicator].valueString            = "N"
* extension[medicareIndicator].valueString               = "N"

* class[0].type.coding  = WhPayerCoverageClassCodeSystem#election-tier
* class[0].value        = "Self"

* relationship.coding = SUBSCRIBER-RELATIONSHIP#self
