Instance:       CDMLibraryInstance
InstanceOf:     CDMLibrary
Usage:          #example
Title:          "CDM Library Example"
Description:    "Sample library entry for CMS146, including example default parameter values"

* identifier[0].use = #official
* identifier[0].type = 	IdentifierTypeCodeSystem#SSRI
* identifier[0].system = "http://ibm.com/fhir/cdm/cql-library-measure"
* identifier[0].value = "CMS146"
* identifier[0].assigner.display = "IBM"

* name = "Sample_Cql_Logic_Library"

* version = "2.0.0"
* title = "Sample CQL Logic Library"
* status = #draft
  
* type = LIBRARY-TYPE#logic-library
* date = "2015-07-22"
* description = "Sample library for sample measures used to illustrate Alvearie IG usage"
* relatedArtifact.type = #depends-on
* relatedArtifact.resource = "Library/library-quick-model-definition"
* relatedArtifact.display = "Example link to a related artifact"

* dataRequirement[0].type = #Patient

* dataRequirement[1].type = #Condition
* dataRequirement[1].codeFilter[0].path = "category"
* dataRequirement[1].codeFilter[0].code.system = CONDITION-CATEGORY
* dataRequirement[1].codeFilter[0].code.code = #encounter-diagnosis
* dataRequirement[1].codeFilter[1].path = "clinicalStatus"
* dataRequirement[1].codeFilter[1].code.system = CLINICAL-STATUS
* dataRequirement[1].codeFilter[1].code.code = #active
* dataRequirement[1].codeFilter[2].path = "code"
* dataRequirement[1].codeFilter[2].valueSet = "urn:oid:2.16.840.1.113883.3.464.1003.102.12.1011"

* dataRequirement[2].type = #Condition
* dataRequirement[2].codeFilter[0].path = "category"
* dataRequirement[2].codeFilter[0].code.system = CONDITION-CATEGORY
* dataRequirement[2].codeFilter[0].code.code = #encounter-diagnosis
* dataRequirement[2].codeFilter[1].path = "clinicalStatus"
* dataRequirement[2].codeFilter[1].code.system = CLINICAL-STATUS
* dataRequirement[2].codeFilter[1].code.code = #active
* dataRequirement[2].codeFilter[2].path = "code"
* dataRequirement[2].codeFilter[2].valueSet = "urn:oid:2.16.840.1.113883.3.464.1003.102.12.1012"

* dataRequirement[3].type = #Encounter
* dataRequirement[3].codeFilter[0].path = "status"
* dataRequirement[3].codeFilter[0].code.system = ENCOUNTER-STATUS 
* dataRequirement[3].codeFilter[0].code.code = #finished
* dataRequirement[3].codeFilter[1].path = "class"
* dataRequirement[3].codeFilter[1].code.system = ENCOUNTER-CLASS 
* dataRequirement[3].codeFilter[1].code.code = #AMB
* dataRequirement[3].codeFilter[2].path = "type"
* dataRequirement[3].codeFilter[2].valueSet = "urn:oid:2.16.840.1.113883.3.464.1003.101.12.1061"

* dataRequirement[4].type = #DiagnosticReport
* dataRequirement[4].codeFilter[0].path = "diagnosis"
* dataRequirement[4].codeFilter[0].valueSet = "urn:oid:2.16.840.1.113883.3.464.1003.198.12.1012"

* dataRequirement[5].type = #Medication
* dataRequirement[5].codeFilter[0].path = "code"
* dataRequirement[5].codeFilter[0].valueSet = "urn:oid:2.16.840.1.113883.3.464.1003.196.12.1001"

* dataRequirement[6].type = #MedicationRequest
* dataRequirement[6].codeFilter[0].path = "status"
* dataRequirement[6].codeFilter[0].code.system = MEDICATION-REQUEST-STATUS 
* dataRequirement[6].codeFilter[0].code.code = #active
* dataRequirement[6].codeFilter[1].path = "medication.code"
* dataRequirement[6].codeFilter[1].valueSet = "urn:oid:2.16.840.1.113883.3.464.1003.196.12.1001"

* content[0].contentType = #text/cql
* content[0].url = "library-cms146-example-content.cql"

* parameter[0].name = #measurePeriod
* parameter[0].use = #out
* parameter[0].type = #Period

* parameter[1].name = #complianceDisplayName
* parameter[1].use = #out 
* parameter[1].type = #string
* parameter[1].extension[defaultValue].valueString = "Pharyngitis Testing"

* parameter[2].name = #complianceFrequency
* parameter[2].use = #out
* parameter[2].type = #string
* parameter[2].extension[defaultValue].valueString = "Once yearly"
