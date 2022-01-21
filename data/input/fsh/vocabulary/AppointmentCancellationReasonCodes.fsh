CodeSystem:     AppointmentCancellationReasonCodeSystem
Id:             appointment-cancellation-reason
Title:          "Appointment Cancellation Reason Codes"
Description:    "Extended reasons for the cancellation of an appointment"
* ^caseSensitive = true
* #deleted      "Deleted"       "Appointment was either logically deleted or physically deleted"
* #rescheduled  "Rescheduled"   "Appointment was rescheduled"

ValueSet:     AppointmentCancellationReasonValueSet
Id:             appointment-cancellation-reason
Title:          "Appointment Cancellation Reason Value Set"
Description:    "Extended set of reasons for the cancellation of an appointment"
// Workaround until issue is fixed in FHIR Publisher
// Using the FHIR code system throws publisher errors for some reason, using valueset instead corrects it
//* codes from system http://terminology.hl7.org/CodeSystem/appointment-cancellation-reason
* codes from valueset http://terminology.hl7.org/ValueSet/appointment-cancellation-reason
* codes from system AppointmentCancellationReasonCodeSystem
