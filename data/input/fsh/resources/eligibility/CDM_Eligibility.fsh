Profile: CDMEligibility
Parent: Bundle
Id: cdm-eligibility
Title: "CDM Eligibility"
Description: "Health Data Connect Common Data Model definition of what fields we currently define for an eligibility record"
* type = #document
* meta only ProcessMeta
* entry ^slicing.ordered = false
* entry ^slicing.description = "Slice based on entry element type"
* entry ^slicing.rules = #open
* entry ^slicing.discriminator.type = #type
* entry ^slicing.discriminator.path = "resource"
* entry contains
      Coverage 1..1 and
      InsurancePlan 1..1 and
      PractitionerRole 1..1
* entry[Coverage].resource only CDMCoverage
* entry[InsurancePlan].resource only CDMInsurancePlan




