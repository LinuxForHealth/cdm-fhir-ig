Instance:       CDMProcedureExample
InstanceOf:     CDMProcedure
Usage:          #example
Title:          "CDM Procedure Example"
Description:    "Sample clinical exam procedure"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-procedure"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/procedure"
* identifier[0].value = "3c4c3b81-07d2-434a-8696-0d5f325b6519"
* identifier[0].assigner.display = "Acme Health - EMR1"

* status = EVENT-STATUS#completed
* category = SNOMED#103693007 "Diagnostic procedure"
* code = SNOMED#5880005 "Clinical examination"

* subject = Reference(CDMPatientInstance)
* encounter = Reference(Encounter1)

* recorder = Reference(DrKelly)
* asserter = Reference(DrKelly)

* performer.function = SNOMED#59058001 "General physician"
* performer.actor = Reference(DrKelly)
* performer.onBehalfOf = Reference(GeneralHospital)

* location = Reference(KellyClinic)
* reasonCode = SNOMED#1119007 "Closed reduction of dislocation of foot and toe"

* bodySite = SNOMED#1484003 "Structure of metatarsal region of foot"
* outcome = SNOMED#385669000 "Successful"
* complication = SNOMED#1525003 "Blister of foot without infection"

* note.authorReference = Reference(DrKelly)
* note.time = "2020-01-06T10:45:00Z"
* note.text = "Patient complained of pain in foot. Slight fracture suspected.  None found.  Blister looks fine, no infection."

* performedDateTime = "2020-01-06T10:30:00Z"

Instance:       Encounter1
InstanceOf:     Encounter
Usage:          #inline
* status = 	ENCOUNTER-STATUS#finished
* class = ENCOUNTER-CLASS#AMB
