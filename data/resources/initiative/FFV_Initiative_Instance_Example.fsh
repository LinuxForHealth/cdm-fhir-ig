Instance:       ExampleFFVInitiative
InstanceOf:     FFVInitiative
Usage:          #example
Title:          "Example FFV Initiative"
Description:    "Example instance of an Fee for Value Initative"
* identifier[customerId].value = "Example FFV Initative"
* identifier[key].value = "2"
* title = "Primary Care Incentive Program"
* extension[attributionCode].valueCodeableConcept = AttributionCodeSystem#enrollment
* extension[ffvSchedule].valueCodeableConcept = FFVScheduleCodeSystem#monthly
* supportingInfo[participatingProviders].identifier.value = "participating-providers-list-1"
* supportingInfo[includedPatients].identifier.value = "included-patients-list-1"
* supportingInfo[excludedPatients].identifier.value = "excluded-patients-list-1"
