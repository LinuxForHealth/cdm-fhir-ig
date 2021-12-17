Instance:       CDMPatientDeceasedExample
InstanceOf:     CDMPatient
Usage:          #example
Title:          "CDM Patient Deceased Example"
Description:    "Example of a CDMPatient representing a patient ingested from a EMR or PMS system who is deceased"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-patient"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-5555-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/patient"
* identifier[0].value = "unencryp-id5555"
* identifier[0].assigner.display = "Acme Health - EMR1 (unencrypted)"
* identifier[0].extension[encryptedState].valueBoolean = false

* identifier[1].use = #secondary
* identifier[1].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[1].system = "http://acme-health.com/emr1/patient"
* identifier[1].value = "encryp-id5555"
* identifier[1].assigner.display = "Acme Health - EMR1 (encrpyted)"
* identifier[1].extension[encryptedState].valueBoolean = true

* identifier[2].use = #official
* identifier[2].type = 	ID-TYPE#MR
* identifier[2].system = "http://acme-health.com/patient-mrn"
* identifier[2].value = "1011115555"
* identifier[2].assigner.display = "Acme Health MRN"

* identifier[3].use = #official
* identifier[3].type.coding[0] = ID-TYPE#SB
* identifier[3].type.coding[1] = ID-TYPE#SS
* identifier[3].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[3].value = "0001225555"
* identifier[3].assigner.display = "ssa.gov"

* active = true

* name.given           = "Firstname"
* name.family          = "Lastname"
* birthDate            = "1960-02-29"
* deceasedDateTime     = "2020-02-28T00:00:00Z"
* maritalStatus.coding = http://ibm.com/fhir/cdm/CodeSystem/local-marital-status#Married

* gender = #male
* extension[sexAssignedAtBirth].valueCodeableConcept = SexAssignedAtBirthCodeSystem#male

* extension[patientGenderIdentity].valueCodeableConcept = GenderIdentityCodeSystem#gender-neutral

* extension[identifiedPronouns][0].valueString = "they"
* extension[identifiedPronouns][1].valueString = "ze"

* extension[legallyDocumentedSex].extension[documentedSex].valueCodeableConcept = SexAssignedAtBirthCodeSystem#male
* extension[legallyDocumentedSex].extension[documentedSource].valueCodeableConcept = LegalDocumentSourceCodeSystem#passport
* extension[legallyDocumentedSex].extension[documentedSystem].valueCodeableConcept = LegalDocumentSystemCodeSystem#us-gov

* extension[sexualOrientation].valueCodeableConcept = SexualOrientationCodeSystem#asexual

* extension[usCoreRace].extension[ombCategory].valueCoding = RACE#2106-3 "White"
* extension[usCoreRace].extension[text].valueString = "White"
* extension[usCoreEthnicity].extension[ombCategory].valueCoding = ETHNICITY#2186-5 "Not Hispanic or Latino"
* extension[usCoreEthnicity].extension[text].valueString = "Not Hispanic or Latino"

* extension[localRaceCd].valueCodeableConcept = http://acme-health.com/CodeSystem/local-race-code#White

* extension[PatientCitizenship].valueCodeableConcept = CITIZENSHIP#US
* extension[citizenStatus].valueCodeableConcept      = http://acme-health.com/CodeSystem/local-citizen-status#LocalCitizenStatusCd

* communication[0].language = LANGUAGE#en
* communication[0].extension[languageRank].valuePositiveInt = 1

* generalPractitioner = Reference(CDMPractitionerRole-EMR-PCP)
* generalPractitioner.extension[referenceCode].valueCoding = AttributionSourceCodeSystem#client-emr
* generalPractitioner.extension[referencePeriod].valuePeriod.start = "2019-01-01"

* address.use = #home
* address.type = #both
* address.period.start = "1989-01-01"
* address.period.end = "2020-02-28"
* address.postalCode = "43315"
* address.country = "US"
* address.state = "Ohio"
* address.city = "Cardington"
* address.extension[countyCode].valueCodeableConcept  = http://acme-health.com/CodeSystem/local-county-code#001
* address.extension[regionCode].valueCodeableConcept  = http://acme-health.com/CodeSystem/local-region-code#MW

* telecom[0].system = #sms
* telecom[0].use = #mobile
* telecom[0].value = "216-248-5555"
* telecom[0].rank = 1
* telecom[0].extension[contactPointCountry].valueString = "1"
* telecom[0].extension[telAddress].valueUrl = "tel:+12162485555"

* telecom[1].system = #phone
* telecom[1].use = #home
* telecom[1].value = "216-345-5555"
* telecom[1].rank = 2
* telecom[1].extension[contactPointCountry].valueString = "1"
* telecom[1].extension[telAddress].valueUrl = "tel:+12163455555"

* telecom[2].system = #phone
* telecom[2].use = #work
* telecom[2].value = "216-555-5555"
* telecom[2].rank = 4
* telecom[2].extension[contactPointCountry].valueString = "1"
* telecom[2].extension[contactPointExt].valueString = "123"
* telecom[2].extension[telAddress].valueUrl = "tel:+12165555555;ext=123"

* telecom[3].system = #email
* telecom[3].use = #home
* telecom[3].value = "flastname@fakemail.com"
* telecom[3].rank = 3
