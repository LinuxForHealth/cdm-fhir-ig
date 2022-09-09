Instance:       ConditionInstanceWithNLPInsights
InstanceOf:     CDMCondition
Usage:          #example
Title:          "Condition Instance With NLP Insights"
Description:    "Condition example where condition code is set from NLP derived insights"

// Adding inline resources as contained resources for references
// This prevents broken link errors on the example while also allowing inline references to
// that the referenced element does not show up in the final IG
* contained[0] = SourceDiagnosticReport-DiabetesMellitus

* meta.source = "http://acme-health.com/emr"
* meta.profile = "http://linuxforhealth.org/fhir/cdm/StructureDefinition/cdm-condition"
* meta.extension[tenantId].valueString = "99999"
* meta.extension[ingestionBatchId].valueString = "b069a545-9506-40c6-8498-23de2e189145"

//header for condition code insights
* meta.extension[insight][0].extension[path][0].valueString = "code.coding" 
* meta.extension[insight][0].extension[insightId].valueIdentifier.system = "https://acme.com/nlp-processor/1.0"
* meta.extension[insight][0].extension[insightId].valueIdentifier.value = "insight-1"
* meta.extension[insight][0].extension[detected].valueDateTime = "2021-01-01T03:01:00Z"
* meta.extension[insight][0].extension[category].valueCodeableConcept = InsightCategoryCodeSystem#natural-language-processing

//diagnosis code insights leverages DiagnosticReport unstructured text in the report's conclusion field 
* meta.extension[insight][0].extension[insightDetail][0].extension[reference].valueReference = Reference(SourceDiagnosticReport-DiabetesMellitus)
* meta.extension[insight][0].extension[insightDetail][0].extension[referencePath].valueString = "conclusion"

//The scoring results for this input document, pertain to the following values;
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[insight-value][0].valueCoding[0] = SNOMED#46635009  "Diabetes mellitus type 1"
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[insight-value][1].valueCoding[0] = UMLS#C0011854  "Diabetes Mellitus, Insulin-Dependent"
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[insight-value][2].valueCoding[0] = LOINC#44877-9 "Insulin dependent diabetes mellitus [Presence]"

//Each text fragment annotated and scored has individual scoring results
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[span].extension[coveredText].valueString = "results consistent with insulin-dependent diabetes"
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[span].extension[offsetBegin].valueInteger = 17
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[span].extension[offsetEnd].valueInteger = 56

//Two scoring results apply to this fragment
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[span].extension[insight-confidence][0].extension[method].valueCodeableConcept.coding[0].code = #Diagnosis_Explicit_Score
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[span].extension[insight-confidence][0].extension[method].valueCodeableConcept.coding[0].system = "http://linuxforhealth.org/fhir/cdm/CodeSystem/1.0/acd-confidence-method"
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[span].extension[insight-confidence][0].extension[score].valueDecimal = 0.996

* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[span].extension[insight-confidence][1].extension[method].valueCodeableConcept.coding[0].code = #Diagnosis_Family_History
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[span].extension[insight-confidence][1].extension[method].valueCodeableConcept.coding[0].system = "http://linuxforhealth.org/fhir/cdm/CodeSystem/1.0/acd-confidence-method"
* meta.extension[insight][0].extension[insightDetail][0].extension[insight-result][0].extension[span].extension[insight-confidence][1].extension[score].valueDecimal = 0.006

//NOTE: Could also add a second span array element for the "no family history of type 1 or type 2 diabetes" text

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://acme-health.com/emr/condition"
* identifier[0].value = "46706977-907b-453a-87bc-76002d7076ef"
* identifier[0].assigner.display = "Acme Health - EMR System"

* subject = Reference(CDMPatientInstance)
* clinicalStatus = CLINICAL-STATUS#active
* verificationStatus = CLINICAL-VERIFICATION-STATUS#confirmed

* category = CONDITION-CATEGORY#encounter-diagnosis

* code.coding[0] = SNOMED#46635009  "Diabetes mellitus type 1"
* code.coding[1] = UMLS#C0011854  "Diabetes Mellitus, Insulin-Dependent"
* code.coding[2] = LOINC#44877-9 "Insulin dependent diabetes mellitus [Presence]"

//NOTE: Commenting out the below section showing use of insight summary extension; This summary extension is meant to be used on any FHIR element.
//However, in order to enable that to be validated by a FHIR profile we would need to define this as an extension on every FHIR element, thus 
//significantly bloating the IG from its intent. So, our example here shows how to use it, but the IG has not explicitly associated it to any elements.

//* code.coding[0].extension[insightSummary][0].extension[insightId].valueIdentifier.system = "https://acme.com/nlp-processor/1.0"
//* code.coding[0].extension[insightSummary][0].extension[insightId].valueIdentifier.value = "insight-1"
//* code.coding[0].extension[insightSummary][0].extension[element-source-classification].valueCode = ProcessMetaSourceClassification#derived
//* code.coding[0].extension[insightSummary][0].extension[category][0].valueCodeableConcept = InsightCategoryCodeSystem#natural-language-processing
//* code.coding[1].extension[insightSummary][0].extension[insightId].valueIdentifier.system = "https://acme.com/nlp-processor/1.0"
//* code.coding[1].extension[insightSummary][0].extension[insightId].valueIdentifier.value = "insight-1"
//* code.coding[1].extension[insightSummary][0].extension[element-source-classificaiton].valueCode = ProcessMetaSourceClassification#derived
//* code.coding[1].extension[insightSummary][0].extension[category][0].valueCodeableConcept = InsightCategoryCodeSystem#natural-language-processing
//* code.coding[2].extension[insightSummary][0].extension[insightId].valueIdentifier.system = "https://acme.com/nlp-processor/1.0"
//* code.coding[2].extension[insightSummary][0].extension[insightId].valueIdentifier.value = "insight-1"
//* code.coding[2].extension[insightSummary][0].extension[element-source-classificaiton].valueCode = ProcessMetaSourceClassification#derived
//* code.coding[2].extension[insightSummary][0].extension[category][0].valueCodeableConcept = InsightCategoryCodeSystem#natural-language-processing

Instance:       SourceDiagnosticReport-DiabetesMellitus
InstanceOf:     DiagnosticReport
Usage:          #inline
* status = #final
* id = "insight-reference-123456-01"
* code = LOINC#10451-3
* conclusion = "Patient exhibits results consistent with insulin-dependent diabetes despite no family history of type 1 or type 2 diabetes."
