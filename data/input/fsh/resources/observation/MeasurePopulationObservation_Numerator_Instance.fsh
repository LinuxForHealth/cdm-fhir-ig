Instance:       NumeratorObservationExample
InstanceOf:     MeasurePopulationObservation
Usage:          #example
Title:          "Measure Population Observation - Numerator Example"
Description:    "Example of an observation indicating that the patient was in a numerator over a period of time"

* meta.source = "http://ibm.com/fhir/engagement-measure-cohort"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/measure-population-observation"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"
* meta.extension[processOrganization].valueString = "HDC"
* meta.extension[processType].valueString = "Cohorting"
* meta.extension[processName].valueString = "Powersearch"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-02-28T02:01:00Z"

* identifier.type = IdentifierTypeCodeSystem#DRI
* identifier.system = "http://ibm.com/fhir/cdm/measure-population-observation"
* identifier.value = "9591c85d-2f90-4586-b76d-be8e8ab2a719"
* identifier.assigner.display = "HDC"

* status = #final
* code = MEASURE-POPULATION#numerator

* subject = Reference(CDMPatientInstance)
* effectivePeriod.start = "2020-02-14"
* effectivePeriod.end = "2020-02-28"

* extension[canonicalMeasure].valueCanonical = Canonical(QualityMeasureExample)
* extension[measurePopulationId].valueId = "dm-hba1c-num"
* extension[assignedPractitioner][0].valueReference = Reference(CDMPractitionerRole-Attributed-PCP)
* extension[assignedPractitioner][1].valueReference = Reference(CDMPractitionerRole-EMR-PCP)

* extension[relatedObservation].valueReference = Reference(RelatedNumeratorObservation)

Instance:       RelatedNumeratorObservation
InstanceOf:     MeasurePopulationObservation
Usage:          #example
Title:          "Measure Population Observation - Related Numerator Example"
Description:    "Example of an observation indicating that the patient was in a related numerator over a period of time"

* meta.source = "http://ibm.com/fhir/engagement-measure-cohort"
* meta.profile = "http://ibm.com/fhir/cdm/StructureDefinition/measure-population-observation"

* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189143"
* meta.extension[processOrganization].valueString = "HDC"
* meta.extension[processType].valueString = "Cohorting"
* meta.extension[processName].valueString = "Powersearch"
* meta.extension[processVersion].valueString = "1.0"
* meta.extension[processTimestamp].valueDateTime = "2020-02-13T02:01:00Z"

* identifier.type = IdentifierTypeCodeSystem#DRI
* identifier.system = "http://ibm.com/fhir/cdm/measure-population-observation"
* identifier.value = "6b23568b-dccf-4546-b099-6fb8ec3c84e8"
* identifier.assigner.display = "HDC"

* status = #final
* code = MEASURE-POPULATION#numerator

* subject = Reference(CDMPatientInstance)
* effectivePeriod.start = "2020-02-01"
* effectivePeriod.end = "2020-02-13"

* extension[canonicalMeasure].valueCanonical = Canonical(QualityMeasureExample)
* extension[measurePopulationId].valueId = "dm-hba1c-num"
* extension[assignedPractitioner][0].valueReference = Reference(CDMPractitionerRole-EMR-PCP)
