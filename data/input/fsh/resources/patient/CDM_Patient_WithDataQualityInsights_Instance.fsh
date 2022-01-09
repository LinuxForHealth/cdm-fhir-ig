Instance:       CDMPatientInstanceWithDataQualityInsights
InstanceOf:     CDMPatient
Title:          "Data Quality Insights"
Usage:          #example
Description:    "CDM Patient example where data quality process has specified value specific data quality cross-check insights"

* meta.source = "http://acme-health.com/emr"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/cdm-patient"
* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"

//header for phone insights
* meta.extension[insight][0].extension[path].valueString = "contact.telecom.value(where system = 'phone')"
* meta.extension[insight][0].extension[insightId].valueIdentifier.system = "http://www.claro.com/insights"
* meta.extension[insight][0].extension[insightId].valueIdentifier.value = "data-state-id-2"
* meta.extension[insight][0].extension[sourceId].valueIdentifier.system = "http://www.claro.com/analytics/phone-validator"
* meta.extension[insight][0].extension[sourceId].valueIdentifier.value = "watson-md"
* meta.extension[insight][0].extension[detected].valueDateTime = "2020-01-01T03:01:00Z"
* meta.extension[insight][0].extension[category].valueCodeableConcept = InsightCategoryCodeSystem#data-quality

//Insight scoring result for phone value of 555-000-5500
* meta.extension[insight][0].extension[insight-result-summary][0].extension[insight-value][0].valueString = "555-000-5500"
* meta.extension[insight][0].extension[insight-result-summary][0].extension[insight-confidence][0].extension[method].valueCodeableConcept.coding[0].code = #INCONSISTENT_PHONE_AREA_CODE
* meta.extension[insight][0].extension[insight-result-summary][0].extension[insight-confidence][0].extension[method].valueCodeableConcept.coding[0].system = "http://www.claro.com/phone-number-insights"
* meta.extension[insight][0].extension[insight-result-summary][0].extension[insight-confidence][0].extension[score].valueDecimal = 0
* meta.extension[insight][0].extension[insight-result-summary][0].extension[insight-confidence][0].extension[description].valueString = "555 is not an area code in Chicago."

//Insight scoring result for phone value of 773-555-0100
* meta.extension[insight][0].extension[insight-result-summary][1].extension[insight-value][0].valueString = "773-555-0100"
* meta.extension[insight][0].extension[insight-result-summary][1].extension[insight-confidence][0].extension[method].valueCodeableConcept.coding[0].code = #INCONSISTENT_PHONE_AREA_CODE
* meta.extension[insight][0].extension[insight-result-summary][1].extension[insight-confidence][0].extension[method].valueCodeableConcept.coding[0].system = "http://www.claro.com/phone-number-insights"
* meta.extension[insight][0].extension[insight-result-summary][1].extension[insight-confidence][0].extension[score].valueDecimal = 1
* meta.extension[insight][0].extension[insight-result-summary][1].extension[insight-confidence][0].extension[description].valueString = "773 is a valid area code in Chicago."

//phone value insight leverages address.city value from this same patient for its data quality assessment
* meta.extension[insight][0].extension[insightDetail][0].extension[reference].valueReference = Reference(CDMPatientInstanceWithDataQualityInsights)
* meta.extension[insight][0].extension[insightDetail][0].extension[referencePath].valueString = "address.city"
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[based-on-value].valueString = "Chicago"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr/patient"
* identifier[0].value = "unencryp-id1234"
* identifier[0].assigner.display = "Acme Health - EMR System (unencrypted)"

* name.given = "Firstname"
* name.family = "McLastname"
* birthDate = "1990-01-04"

* gender = #male

* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-000-5500"
* contact.telecom[0].use = #home

* contact.telecom[1].system = #phone
* contact.telecom[1].value = "773-555-0100"
* contact.telecom[1].use = #home

* address[0].use = #home
* address[0].type = #physical
* address[0].line = "123 East St"
* address[0].city = "Chicago"
* address[0].state = "IL"
* address[0].postalCode = "60603"
