Instance: EligibilityExample
InstanceOf: CDMEligibility
Title: "Eligibility Example"
Usage:  #inline
* entry[Coverage].resource = CoverageExample
* entry[Coverage].fullUrl = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-coverage"
* entry[InsurancePlan].resource = InsurancePlanExample
* entry[InsurancePlan].fullUrl = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-insurance-plan"
* entry[PractitionerRole].resource = CDMPractitionerRole-Enrollment
* entry[PractitionerRole].fullUrl = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-practitioner-role"
