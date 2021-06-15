Instance:       Milestone1Initiative
InstanceOf:     FFVInitiative
Usage:          #example
Title:          "Milestone1 Initiative"
Description:    "Example instance of an Fee for Value Initative milesone incentive program"
* identifier[customerId].value = "Milestone1Initiative"
* identifier[key].value = "1"
* title = "Primary Care Incentive Program"
* extension[attributionCode].valueCodeableConcept = AttributionCodeSystem#enrollment
* supportingInfo[participatingProviders].identifier.value = "participating-providers-list-2"
* supportingInfo[includedPatients].identifier.value = "included-patients-list-2"
* supportingInfo[excludedPatients].identifier.value = "excluded-patients-list-2"
* extension[qualityMeasures].valueReference.identifier.value = "quality-measure-list-1"
* extension[ffvSchedule].valueCodeableConcept = FFVScheduleCodeSystem#monthly
