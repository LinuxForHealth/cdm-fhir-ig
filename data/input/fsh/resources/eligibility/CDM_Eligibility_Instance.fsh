Instance: EligibilityExample
InstanceOf: CDMEligibility
Title: "Eligibility Example"
Usage:  #inline
* entry[Coverage].resource = CoverageExample
* entry[Coverage].fullUrl = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-coverage"
* entry[InsurancePlan].resource = InsurancePlanExample
* entry[InsurancePlan].fullUrl = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-insurance-plan"
* entry[PractitionerRole].resource = CDMPractitionerRole-Payer
* entry[PractitionerRole].fullUrl = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-practitioner-role"
