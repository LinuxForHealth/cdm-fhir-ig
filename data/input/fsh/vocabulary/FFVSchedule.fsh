CodeSystem:     FFVScheduleCodeSystem
Id:             ffv-schedule
Title:          "FFV Schedule Codes"
Description:    "LinuxForHealth fee for value initiative schedule codes"
* ^caseSensitive = true
* #monthly          "Monthly"
* #quarterly        "Quarterly"
* #biannually       "Biannually"
* #annually         "Annually"
* #ondatareceipt    "On reciept of data"

ValueSet:       FFVScheduleValueSet
Id:             ffv-schedule
Title:          "FFV Schedule Value Set"
Description:    "LinuxForHealth valuset defining fee for value initiative schedule codes"
* codes from system FFVScheduleCodeSystem
