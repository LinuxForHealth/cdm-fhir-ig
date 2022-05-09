Instance:       MatchedPatientExample
InstanceOf:     CDMMatchPatient
Usage:          #example
Title:          "Matched Patient Example"
Description:    "Sample of a matched patient linked to multiple source patients, each with confidence level and period"

* meta.source = "http://ibm.com/fhir/primary/patient-match"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-match-patient"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* meta.extension[processOrganization].valueString = "HDC"
* meta.extension[processType].valueString = "Matching"
* meta.extension[processName].valueString = "Patient Matching"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-02-12T03:01:00Z"
* meta.tag = ProcessMetaSourceClassification#derived

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#MDI
* identifier[0].system = "http://ibm.com/fhir/primary/patient-match-identifier"
* identifier[0].value = "c82a8fce-11db-4396-b10c-1150abd1a222"
* identifier[0].assigner.display = "HDC"

* active = true

* name.given = "Maggie"
* name.family = "Match"
* birthDate = "1990-01-04"

* gender = #female
* extension[sexAssignedAtBirth].valueCodeableConcept = SexAssignedAtBirthCodeSystem#female

// AUTOMATED HIGH CONFIDENCE MATCH 1 - EMR2 duplicate patient 1
* extension[seeAlso][0].extension[matchSourceReference].valueReference = Reference(MatchedPatientSource-EMR2-PatientB)
* extension[seeAlso][0].extension[matchMethod].valueCodeableConcept = MatchMethodCodeSystem#automated
* extension[seeAlso][0].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][0].extension[matchConfidenceScore].valueDecimal = 100.0
* extension[seeAlso][0].extension[matchPeriod].valuePeriod.start = "2020-02-12"
* extension[seeAlso][0].extension[matchDetail][0].extension[matchComparedTo].valueReference = Reference(MatchedPatientSource-EMR2-PatientC)
* extension[seeAlso][0].extension[matchDetail][0].extension[matchCriteria].valueString = "Exact name match"
* extension[seeAlso][0].extension[matchDetail][0].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][0].extension[matchDetail][0].extension[matchConfidenceScore].valueDecimal = 100.0
* extension[seeAlso][0].extension[matchDetail][1].extension[matchComparedTo].valueReference = Reference(MatchedPatientSource-EMR2-PatientC)
* extension[seeAlso][0].extension[matchDetail][1].extension[matchCriteria].valueString = "Fuzzy match"
* extension[seeAlso][0].extension[matchDetail][1].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][0].extension[matchDetail][1].extension[matchConfidenceScore].valueDecimal = 100.0
/////
* extension[seeAlso][0].extension[7].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* extension[seeAlso][0].extension[7].valueString = "HDC"
* extension[seeAlso][0].extension[8].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* extension[seeAlso][0].extension[8].valueString = "Patient Match"
* extension[seeAlso][0].extension[9].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* extension[seeAlso][0].extension[9].valueString = "MDM"
* extension[seeAlso][0].extension[10].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* extension[seeAlso][0].extension[10].valueString = "1.0"
* extension[seeAlso][0].extension[11].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* extension[seeAlso][0].extension[11].valueDateTime = "2020-01-01T03:01:00Z"

// AUTOMATED HIGH CONFIDENCE MATCH 2 - EMR2 duplicate patient 2
* extension[seeAlso][1].extension[matchSourceReference].valueReference = Reference(MatchedPatientSource-EMR2-PatientB)
* extension[seeAlso][1].extension[matchMethod].valueCodeableConcept = MatchMethodCodeSystem#automated
* extension[seeAlso][1].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][1].extension[matchConfidenceScore].valueDecimal = 100.0
* extension[seeAlso][1].extension[matchPeriod].valuePeriod.start = "2020-02-12"
* extension[seeAlso][1].extension[matchDetail][0].extension[matchComparedTo].valueReference = Reference(MatchedPatientSource-EMR2-PatientC)
* extension[seeAlso][1].extension[matchDetail][0].extension[matchCriteria].valueString = "Exact name match"
* extension[seeAlso][1].extension[matchDetail][0].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][1].extension[matchDetail][0].extension[matchConfidenceScore].valueDecimal = 100.0
* extension[seeAlso][1].extension[matchDetail][1].extension[matchComparedTo].valueReference = Reference(MatchedPatientSource-EMR2-PatientC)
* extension[seeAlso][1].extension[matchDetail][1].extension[matchCriteria].valueString = "Fuzzy match"
* extension[seeAlso][1].extension[matchDetail][1].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][1].extension[matchDetail][1].extension[matchConfidenceScore].valueDecimal = 100.0
/////
* extension[seeAlso][1].extension[7].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* extension[seeAlso][1].extension[7].valueString = "HDC"
* extension[seeAlso][1].extension[8].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* extension[seeAlso][1].extension[8].valueString = "Patient Match"
* extension[seeAlso][1].extension[9].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* extension[seeAlso][1].extension[9].valueString = "MDM"
* extension[seeAlso][1].extension[10].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* extension[seeAlso][1].extension[10].valueString = "1.0"
* extension[seeAlso][1].extension[11].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* extension[seeAlso][1].extension[11].valueDateTime = "2020-01-01T03:01:00Z"

// MANUAL MATCH BY CUSTOMER VIA WEB PORTAL - EMR1
* extension[seeAlso][2].extension[matchSourceReference].valueReference = Reference(MatchedPatientSource-EMR1-PatientA)
* extension[seeAlso][2].extension[matchMethod].valueCodeableConcept = MatchMethodCodeSystem#manual
* extension[seeAlso][2].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][2].extension[matchConfidenceScore].valueDecimal = 100.0
* extension[seeAlso][2].extension[matchPeriod].valuePeriod.start = "2020-04-18"
* extension[seeAlso][2].extension[matchDetail][0].extension[matchComparedTo].valueReference = Reference(MatchedPatientSource-EMR2-PatientB)
* extension[seeAlso][2].extension[matchDetail][0].extension[matchCriteria].valueString = "Exact name match"
* extension[seeAlso][2].extension[matchDetail][0].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certainly-not
* extension[seeAlso][2].extension[matchDetail][0].extension[matchConfidenceScore].valueDecimal = 0.0
* extension[seeAlso][2].extension[matchDetail][1].extension[matchComparedTo].valueReference = Reference(MatchedPatientSource-EMR2-PatientB)
* extension[seeAlso][2].extension[matchDetail][1].extension[matchCriteria].valueString = "Fuzzy match"
* extension[seeAlso][2].extension[matchDetail][1].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#possible
* extension[seeAlso][2].extension[matchDetail][1].extension[matchConfidenceScore].valueDecimal = 70.0
* extension[seeAlso][2].extension[matchDetail][2].extension[matchComparedTo].valueReference = Reference(MatchedPatientSource-EMR2-PatientB)
* extension[seeAlso][2].extension[matchDetail][2].extension[matchCriteria].valueString = "Manual User Match"
* extension[seeAlso][2].extension[matchDetail][2].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certain
* extension[seeAlso][2].extension[matchDetail][2].extension[matchConfidenceScore].valueDecimal = 100.0
/////
* extension[seeAlso][2].extension[8].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* extension[seeAlso][2].extension[8].valueString = "HDC"
* extension[seeAlso][2].extension[9].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* extension[seeAlso][2].extension[9].valueString = "Manual Patient Match"
* extension[seeAlso][2].extension[10].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* extension[seeAlso][2].extension[10].valueString = "Web Portal"
* extension[seeAlso][2].extension[11].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* extension[seeAlso][2].extension[11].valueString = "1.0"
* extension[seeAlso][2].extension[12].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* extension[seeAlso][2].extension[12].valueDateTime = "2020-04-18T10:35:01Z"

// LOW CONFINDENCE MATCH WITH MANUAL SPLIT BY CUSTOMER VIA WEB PORTAL - AllScripts
* extension[seeAlso][3].extension[matchSourceReference].valueReference = Reference(MatchedPatientSource-EMR3-PatientD)
* extension[seeAlso][3].extension[matchMethod].valueCodeableConcept = MatchMethodCodeSystem#manual
* extension[seeAlso][3].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certainly-not
* extension[seeAlso][3].extension[matchConfidenceScore].valueDecimal = 0.0
* extension[seeAlso][3].extension[matchPeriod].valuePeriod.start = "2020-04-14"
* extension[seeAlso][3].extension[matchPeriod].valuePeriod.end = "2020-04-18"
* extension[seeAlso][3].extension[matchDetail][0].extension[matchComparedTo].valueReference = Reference(MatchedPatientSource-EMR1-PatientA)
* extension[seeAlso][3].extension[matchDetail][0].extension[matchCriteria].valueString = "Exact name match"
* extension[seeAlso][3].extension[matchDetail][0].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certainly-not
* extension[seeAlso][3].extension[matchDetail][0].extension[matchConfidenceScore].valueDecimal = 0.0
* extension[seeAlso][3].extension[matchDetail][1].extension[matchComparedTo].valueReference = Reference(MatchedPatientSource-EMR1-PatientA)
* extension[seeAlso][3].extension[matchDetail][1].extension[matchCriteria].valueString = "Fuzzy match"
* extension[seeAlso][3].extension[matchDetail][1].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#probable
* extension[seeAlso][3].extension[matchDetail][1].extension[matchConfidenceScore].valueDecimal = 80.0
* extension[seeAlso][3].extension[matchDetail][2].extension[matchComparedTo].valueReference = Reference(MatchedPatientSource-EMR1-PatientA)
* extension[seeAlso][3].extension[matchDetail][2].extension[matchCriteria].valueString = "Manual User Split"
* extension[seeAlso][3].extension[matchDetail][2].extension[matchConfidenceLevel].valueCoding = MATCH-GRADE#certainly-not
* extension[seeAlso][3].extension[matchDetail][2].extension[matchConfidenceScore].valueDecimal = 0.0
// Adding this elememt by index on this one to avoid Sushi issue that causes dangling extension urls on other links within the same resource
// This occurs when you use an extension in one element, but not in another sibling element on the same instance
* extension[seeAlso][3].extension[8].url = "http://ibm.com/fhir/cdm/StructureDefinition/split-method"
* extension[seeAlso][3].extension[8].valueCodeableConcept = MatchMethodCodeSystem#manual
* extension[seeAlso][3].extension[9].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-organization"
* extension[seeAlso][3].extension[9].valueString = "HDC"
* extension[seeAlso][3].extension[10].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-type"
* extension[seeAlso][3].extension[10].valueString = "Manual Patient Split"
* extension[seeAlso][3].extension[11].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-name"
* extension[seeAlso][3].extension[11].valueString = "Web Portal"
* extension[seeAlso][3].extension[12].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-version"
* extension[seeAlso][3].extension[12].valueString = "1.0"
* extension[seeAlso][3].extension[13].url = "http://ibm.com/fhir/cdm/StructureDefinition/process-timestamp"
* extension[seeAlso][3].extension[13].valueDateTime = "2020-04-18T10:36:02Z"
