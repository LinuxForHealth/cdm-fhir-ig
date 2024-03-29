Alias: ID-TYPE = http://terminology.hl7.org/CodeSystem/v2-0203
Alias: RESOURCE-TYPE = 	http://hl7.org/fhir/resource-types

Alias: SNOMED = http://snomed.info/sct
Alias: LOINC = http://loinc.org
Alias: UMLS = http://terminology.hl7.org/CodeSystem/umls

Alias: RACE = urn:oid:2.16.840.1.113883.6.238
Alias: ETHNICITY = urn:oid:2.16.840.1.113883.6.238
Alias: LANGUAGE = urn:ietf:bcp:47

// PATIENT
Alias: CITIZENSHIP       = urn:iso:std:iso:3166

Alias: CURRENCY = urn:iso:std:iso:4217

Alias: MEASURE-POPULATION = http://terminology.hl7.org/CodeSystem/measure-population

Alias: LOCATION-TYPE = http://terminology.hl7.org/CodeSystem/v3-RoleCode
Alias: CMS-PLACE-OF-SERVICE = https://www.cms.gov/Medicare/Coding/place-of-service-codes/Place_of_Service_Code_Set
Alias: LOCATION-PHYSICAL-TYPE = http://terminology.hl7.org/CodeSystem/location-physical-type

Alias: COMMUNICATION-CATEGORY = http://terminology.hl7.org/CodeSystem/communication-category

Alias: MEASURE-SCORING = http://terminology.hl7.org/CodeSystem/measure-scoring
Alias: MEASURE-TYPE = http://terminology.hl7.org/CodeSystem/measure-type
Alias: MEASURE-IMPROVEMENT-NOTATION = http://terminology.hl7.org/CodeSystem/measure-improvement-notation
Alias: EXPRESSION-LANGUAGE = http://hl7.org/fhir/expression-language

Alias: USAGE-CONTEXT-TYPE = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: DEFINITION-TOPIC = http://terminology.hl7.org/CodeSystem/definition-topic

Alias: ORGANIZATION-TYPE = http://terminology.hl7.org/CodeSystem/organization-type

// We get weird QA errors on the IG when using the HL7 code system urls on SIC codes
// Using code system OID's in examples instead prevents us from getting these odd warning messsages
Alias: ORGANIZATION-SIC = http://terminology.hl7.org/CodeSystem/sic
Alias: ORGANIZATION-SIC-OID = urn:oid:2.16.840.1.113883.6.232

Alias: PRACTITIONER-ROLE = http://terminology.hl7.org/CodeSystem/practitioner-role
Alias: US-NPI            = http://hl7.org/fhir/sid/us-npi

// APPOINTMENT
Alias: APPOINTMENT-TYPE = http://terminology.hl7.org/CodeSystem/v2-0276
Alias: PARTICIPANT-TYPE = http://terminology.hl7.org/CodeSystem/v3-ParticipationType

// We get weird QA errors on the IG when using the HL7 code system urls on SERVICE-CATEGORY and SERVICE-TYPE
// Using code system OID's in examples instead prevents us from getting these odd warning messsages
Alias: SERVICE-CATEGORY = http://terminology.hl7.org/CodeSystem/service-category
Alias: SERVICE-TYPE = http://terminology.hl7.org/CodeSystem/service-type
Alias: SERVICE-CATEGORY-OID = urn:oid:2.16.840.1.113883.4.642.3.516
Alias: SERVICE-TYPE-OID = urn:oid:2.16.840.1.113883.4.642.3.518

// ENCOUNTER & CONDITION
Alias: ENCOUNTER-STATUS = http://hl7.org/fhir/encounter-status
Alias: ENCOUNTER-CLASS = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: ENCOUNTER-PRIORITY = http://terminology.hl7.org/CodeSystem/v3-ActPriority
Alias: ENCOUNTER-DIAGNOSIS-USE = http://terminology.hl7.org/CodeSystem/diagnosis-role
Alias: CLINICAL-STATUS = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: CLINICAL-VERIFICATION-STATUS = 	http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: CONDITION-CATEGORY = http://terminology.hl7.org/CodeSystem/condition-category

// OBSERVATION
Alias: OBSERVATION-CATEGORY   = http://terminology.hl7.org/CodeSystem/observation-category
Alias: OBSERVATION-INTERPRETATION   = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation

// PROCEDURE
Alias: EVENT-STATUS = http://hl7.org/fhir/event-status

// MEDICATION
Alias: MEDICATION-REQUEST-STATUS = http://hl7.org/fhir/CodeSystem/medicationrequest-status

// MATCHING
Alias: MATCH-GRADE = http://terminology.hl7.org/CodeSystem/match-grade

// COVERAGE
Alias: COVERAGE-TYPE            = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: COVERAGE-RELATIONSHIP    = http://terminology.hl7.org/CodeSystem/subscriber-relationship
Alias: COVERAGE-CLASS           = http://terminology.hl7.org/CodeSystem/coverage-class
Alias: NAICS                    = http://terminology.hl7.org/CodeSystem/naics
Alias: INSURANCE-PLAN-TYPE      = http://terminology.hl7.org/CodeSystem/insurance-plan-type
Alias: SUBSCRIBER-RELATIONSHIP  = http://terminology.hl7.org/CodeSystem/subscriber-relationship

// We get weird QA errors on the IG when using the HL7 code system urls on SIC codes
// Using code system OID's in examples instead prevents us from getting these odd warning messsages
Alias: STANDARD-OCCUPATION-CODE = http://terminology.hl7.org/CodeSystem/soc
Alias: STANDARD-OCCUPATION-CODE-OID = urn:oid:2.16.840.1.113883.6.243


Alias: UCUM-UNIT = http://unitsofmeasure.org

// CQL
Alias: LIBRARY-TYPE = http://terminology.hl7.org/CodeSystem/library-type

// CLAIM
Alias: CLAIM-INFORMATION-CATEGORY = http://terminology.hl7.org/CodeSystem/claiminformationcategory
Alias: CLAIM-TYPE                 = http://terminology.hl7.org/CodeSystem/claim-type
Alias: CLAIM-STATUS-CATEGORY      = https://x12.org/codes/claim-status-category-codes
Alias: CLAIM-STATUS               = https://x12.org/codes/claim-status-codes
Alias: PAYMENT-TYPE               = http://terminology.hl7.org/CodeSystem/ex-paymenttype
Alias: PROCESS-PRIORITY           = http://terminology.hl7.org/CodeSystem/processpriority
Alias: USCORE-PCS                 = https://www.hl7.org/fhir/us/core/ValueSet-us-core-procedure-code.html
Alias: ICD9                       = http://hl7.org/fhir/sid/icd-9-cm
Alias: ICD10                      = http://hl7.org/fhir/sid/icd-10-cm
Alias: ICD10-PCS                  = https://www.cms.gov/medicare/icd-10/2021-icd-10-pcs
Alias: CPT                        = http://www.ama-assn.org/go/cpt
Alias: HCPCS                      = https://oidref.com/2.16.840.1.113883.6.285
Alias: DIAGNOSIS-TYPE             = http://terminology.hl7.org/CodeSystem/ex-diagnosistype
Alias: MSDRG                      = https://www.cms.gov/icd10m/version37-fullcode-cms/fullcode_cms/P0002.html
Alias: NUBC-REVENUE-CODE          = https://www.nubc.org/RevenueCodes
Alias: NUBC-PATIENT-DISCHARGE     = https://www.nubc.org/patient-discharge
Alias: NUBC-OCCURRENCE-CODE-CS    = http://terminology.hl7.org/CodeSystem/v2-0350
Alias: CURRENCIES                 = https://www.hl7.org/fhir/valueset-currencies
Alias: REMIT-ADVICE-REMARK-CODE   = https://x12.org/codes/remittance-advice-remark-codes

// Basic
Alias: BASIC-RESOURCE-TYPE        =  http://terminology.hl7.org/CodeSystem/basic-resource-type
