Instance:       CDMPatientInstance
InstanceOf:     CDMPatient
Usage:          #example
Title:          "CDM Patient Example"
Description:    "Example of a CDMPatient representing a patient ingested from a EMR or PMS system"

* meta.source = "http://acme-health.com/emr1"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-patient"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr1/patient"
* identifier[0].value = "unencryp-id1234"
* identifier[0].assigner.display = "Acme Health - EMR1 (unencrypted)"
* identifier[0].extension[encryptedState].valueBoolean = false

* identifier[1].use = #secondary
* identifier[1].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[1].system = "http://acme-health.com/emr1/patient"
* identifier[1].value = "encryp-id1234"
* identifier[1].assigner.display = "Acme Health - EMR1 (encrpyted)"
* identifier[1].extension[encryptedState].valueBoolean = true

* identifier[2].use = #secondary
* identifier[2].type = 	ID-TYPE#MR
* identifier[2].system = "http://acme-health.com/patient-mrn"
* identifier[2].value = "1011110101"
* identifier[2].assigner.display = "Acme Health MRN"

* identifier[3].use = #usual
* identifier[3].type = 	ID-TYPE#MR
* identifier[3].system = "http://acme-health.com/patient-mrn"
* identifier[3].value = "1011110101"
* identifier[3].assigner.display = "Acme Health MRN"

* identifier[4].use = #official
* identifier[4].type.coding[0] = ID-TYPE#SB
* identifier[4].type.coding[1] = ID-TYPE#SS
* identifier[4].system = "http://hl7.org/fhir/sid/us-ssn"
* identifier[4].value = "0001223333"
* identifier[4].assigner.display = "ssa.gov"

* identifier[5].use = #official
* identifier[5].type.coding[0] = ID-TYPE#SB
* identifier[5].type.coding[1] = ID-TYPE#MC
* identifier[5].system = "http://hl7.org/fhir/sid/us-mbi"
* identifier[5].value = "1CA0CA0CC00"
* identifier[5].assigner.display = "medicare.gov"

* identifier[6].use = #official
* identifier[6].type.coding[0] = ID-TYPE#SB
* identifier[6].type.coding[1] = ID-TYPE#MA
* identifier[6].value = "987654321000"
* identifier[6].assigner.display = "medicaid.ohio.gov"

* identifier[7].use = #secondary
* identifier[7].type =  IdentifierTypeCodeSystem#MDI
* identifier[7].system = "http://linuxforhealth.org/platform/patient-match-identifier"
* identifier[7].value = "7b78d6de-46cb-4fbb-930d-2a74e24b17fe"
* identifier[7].assigner.display = "HDC"

* active = true

* name.given[0] = "Firstname"
* name.given[1] = "Middlename"
* name.family   = "McLastname"
* birthDate     = "1990-01-04"

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
* extension[ethnicity].valueCodeableConcept              = http://acme-health.com/CodeSystem/local-ethnicity-code#01

* extension[localRaceCd].valueCodeableConcept = http://acme-health.com/CodeSystem/local-race-code#White

* extension[patientCitizenship].valueCodeableConcept       = CITIZENSHIP#US
* extension[citizenStatus].valueCodeableConcept            = http://acme-health.com/CodeSystem/local-citizen-status#LocalCitizenStatusCd
* extension[immigrationStatus].valueCodeableConcept        = http://acme-health.com/CodeSystem/local-immigration-status#LocalImmigrationStatusCd
* extension[nonstandardLanguage].valueCodeableConcept      = http://acme-health.com/CodeSystem/local-nonstandard-language#E
* extension[veteranIndicator].valueString                  = "N"

* communication[0].language = LANGUAGE#en
* communication[0].extension[languageRank].valuePositiveInt = 1

* generalPractitioner = Reference(CDMPractitionerRole-EMR-PCP)
* generalPractitioner.extension[referenceCode].valueCoding = AttributionSourceCodeSystem#client-emr
* generalPractitioner.extension[referencePeriod].valuePeriod.start = "2019-01-01"

* address.use = #home
* address.type = #both
* address.period.start = "2000-01-01"
* address.period.end = "2000-10-31"
* address.postalCode = "43315"
* address.country = "US"
* address.state = "Ohio"
* address.city = "Cardington"
* address.extension[countyCode].valueCodeableConcept  = http://acme-health.com/CodeSystem/local-county-code#001
* address.extension[regionCode].valueCodeableConcept  = http://acme-health.com/CodeSystem/local-region-code#MW
* address.extension[latitude].valueString             =  "40-30'02'' N"
* address.extension[longitude].valueString            = "082-53'37'' W"

* telecom[0].system = #sms
* telecom[0].use = #mobile
* telecom[0].value = "216-248-8689"
* telecom[0].rank = 1
* telecom[0].extension[contactPointCountry].valueString = "1"
* telecom[0].extension[telAddress].valueUrl = "tel:+12162488969"

* telecom[1].system = #phone
* telecom[1].use = #home
* telecom[1].value = "216-345-2662"
* telecom[1].rank = 2
* telecom[1].extension[contactPointCountry].valueString = "1"
* telecom[1].extension[telAddress].valueUrl = "tel:+12163452662"

* telecom[2].system = #phone
* telecom[2].use = #work
* telecom[2].value = "216-555-2222"
* telecom[2].rank = 4
* telecom[2].extension[contactPointCountry].valueString = "1"
* telecom[2].extension[contactPointExt].valueString = "123"
* telecom[2].extension[telAddress].valueUrl = "tel:+12165552222;ext=123"

* telecom[3].system = #email
* telecom[3].use = #home
* telecom[3].value = "fmclastname@fakemail.com"
* telecom[3].rank = 3

* extension[snapshotAgeInWeeks].valueUnsignedInt   = 3
* extension[snapshotAgeInMonths].valueUnsignedInt  = 1
* extension[snapshotAgeCalculated].valueDateTime   = "1990-01-25T00:00:00.000Z"
