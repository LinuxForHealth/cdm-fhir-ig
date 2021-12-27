CodeSystem:     AppointmentCancellationReasonCodeSystem
Id:             appointment-cancellation-reason
Title:          "Appointment Cancellation Reason Codes"
Description:    "Extended reasons for the cancellation of an appointment"
* ^caseSensitive = false
* #deleted      "Deleted"       "Appointment was either logically deleted or physically deleted"
* #rescheduled  "Rescheduled"   "Appointment was rescheduled"

ValueSet:     AppointmentCancellationReasonValueSet
Id:             appointment-cancellation-reason
Title:          "Appointment Cancellation Reason Value Set"
Description:    "Extended set of reasons for the cancellation of an appointment"
//* codes from system http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason
// Workaround until issue is fixed in Publisher
* codes from valueset http://terminology.hl7.org/ValueSet/appointment-cancellation-reason
* codes from system AppointmentCancellationReasonCodeSystem
