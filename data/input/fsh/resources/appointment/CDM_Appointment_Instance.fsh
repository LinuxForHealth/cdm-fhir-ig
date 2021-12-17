Instance:       AppointmentExample
InstanceOf:     CDMAppointment
Usage:          #example
Title:          "CDM Appointment Example"
Description:    "Sample appointment in booked status"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-appointment"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/appointment"
* identifier[0].value = "7e5ce175-e626-43ec-b8d2-9c1c1207e9ba"
* identifier[0].assigner.display = "Acme Health - EMR1"

* status = #booked
* serviceCategory = SERVICE-CATEGORY#17 "General Practice"
* serviceType = SERVICE-TYPE#367 "Hypertension"
* specialty =  SNOMED#394802001   "General medicine"
* appointmentType = APPOINTMENT-TYPE#CHECKUP
* reasonCode = SNOMED#1201005  "Benign essential hypertension" 

* start = "2020-04-15T09:00:00Z"
* end = "2020-04-15T09:15:00Z"
* minutesDuration = 15
* created = "2020-04-01T11:45:00Z"

* comment = "Patient medications working as expected. DM under control. Refill Bytolic and Valartan."
* patientInstruction = "Take your meds every day.  Excercise more, eat less!"

// Participant - Patient
* participant[0].actor = Reference(CDMPatientInstance)
* participant[0].required = #required
* participant[0].status = #accepted

// Participant - Practiionter (PPRF)
* participant[1].type = PARTICIPANT-TYPE#PPRF "primary performer"
* participant[1].actor = Reference(DrKelly)
* participant[1].required = #required
* participant[1].status = #accepted
* participant[1].period.start = "2020-04-15T09:00:00Z"
* participant[1].period.end = "2020-04-15T09:15:00Z"

// Participant - Location
* participant[2].actor = Reference(KellyClinic)
* participant[2].required = #required
* participant[2].status = #accepted
* participant[2].period.start = "2020-04-15T09:00:00Z"
* participant[2].period.end = "2020-04-15T09:15:00Z"
