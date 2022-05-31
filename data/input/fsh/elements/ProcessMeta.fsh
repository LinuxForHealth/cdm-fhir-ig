Profile:        ProcessMeta
Parent:         Meta
Id:             process-meta
Title:          "Process Meta"
Description:    "Data lineage meta with process extensions"

* extension contains IngestionBatchId named ingestionBatchId 0..1 
* extension[ingestionBatchId] ^short      = "The ID generated by an ingestion service. This represents a producer-submitted message collection"
* extension[ingestionBatchId] ^definition = "The ID generated by an ingestion service. This represents a producer-submitted message collection"

* extension contains TenantId named tenantId 0..1 
* extension[tenantId] ^short      = "The ID for either the client or tenant that holds the contract with the data receiver, as recorded by the data receiver"
* extension[tenantId] ^definition = "The ID for either the client or tenant that holds the contract with the data receiver, as recorded by the data receiver. This ID must be unique to data sent on behalf of that client or tenant within the data receiver systems. The receiver systems should associate this ID to the messages that originate from this client or tenant. This supports traceability, data protection, and data isolation, when appropriate."

* extension contains ProcessClientId named processClientId 0..1 
* extension[processClientId] ^short      = "The ID of the client as recorded in the data producer or data integrator source system(s)"
* extension[processClientId] ^definition = "The ID of the client as recorded in the data producer or data integrator source system(s)"

* extension contains ProcessOrganization named processOrganization 0..1 
* extension[processOrganization] ^short      = "The organizing entity that owns the process that has produced the data held in the FHIR resource or element"
* extension[processOrganization] ^definition = "The organizing entity that owns the process that has produced the data held in the FHIR resource or element. Example: If an analytic service has been the producer, the process-organization value should reflect the organaization reponsible for the service."

* extension contains ProcessName named processName 0..1 
* extension[processName] ^short      = "The name of the process or service that has produced the data held in the FHIR resource or element"
* extension[processName] ^definition = "The name of the process or service that has produced the data held in the FHIR resource or element. Example: If an analytic service has been the producer, use the process-name as the name of that analytic service."

* extension contains ProcessVersion named processVersion 0..1 
* extension[processVersion] ^short      = "The version of either the process or the service that has produced the data held in the FHIR resource or element"
* extension[processVersion] ^definition = "The version of either the process or the service that has produced the data held in the FHIR resource or element"

* extension contains ProcessType named processType 0..1 
* extension[processType] ^short      = "The classification type of the process that has produced the data held in either the FHIR resource or element"
* extension[processType] ^definition = "The classification type of the process that has produced the data held in either the FHIR resource or element"

* extension contains ProcessRecordId named processRecordId 0..* 
* extension[processRecordId] ^short      = "The record ID that the data producer or data integrator uses internally to identify this data"
* extension[processRecordId] ^definition = "The record ID that the data producer or data integrator uses internally to identify this data"

* extension contains ProcessTimestamp named processTimestamp 0..1 
* extension[processTimestamp] ^short      = "The timestamp when the data was generated within the FHIR resource or element"
* extension[processTimestamp] ^definition = "The timestamp when the data was generated within the FHIR resource or element"

* extension contains SourceRecordId named sourceRecordId 0..* 
* extension[sourceRecordId] ^short      = "The ID for a record that the data producer or data integrator extracted knowledge from to produce the data within the FHIR resource or element" 
* extension[sourceRecordId] ^definition = "The ID for a record that the data producer or data integrator extracted knowledge from to produce the data within the FHIR resource or element" 

* extension contains SourceFileId named sourceFileId 0..* 
* extension[sourceFileId] ^short      = "The ID for a file from which the data producer or data integrator extracted knowledge, to produce the data within this FHIR resource or element"
* extension[sourceFileId] ^definition = "The ID for a file from which the data producer or data integrator extracted knowledge, to produce the data within this FHIR resource or element"

* extension contains SourceRecordType named sourceRecordType 0..1 
* extension[sourceRecordType] ^short      = "Either the data model type or schema type that generates this FHIR resource"
* extension[sourceRecordType] ^definition = "Either the data model type or schema type that generates this FHIR resource"

* extension contains SourceDataModelVersion named sourceDataModelVersion 0..1 
* extension[sourceDataModelVersion] ^short      = "Version of the source system's data model, used by either the data producer or the data integrator"
* extension[sourceDataModelVersion] ^definition = "Version of the source system's data model, used by either the data producer or the data integrator"

* extension contains SourceEventTrigger named sourceEventTrigger 0..1 
* extension[sourceEventTrigger].valueCodeableConcept from http://terminology.hl7.org/ValueSet/v2-0003 (example)
* extension[sourceEventTrigger] ^short      = "The event that is the catalyst for creating or updating this FHIR resource"
* extension[sourceEventTrigger] ^definition = "The event that is the catalyst for creating or updating this FHIR resource"

* extension contains SourceEventTimestamp named sourceEventTimestamp 0..1 
* extension[sourceEventTimestamp] ^short      = "Date and time of the source event that triggers either the creation or updating of this FHIR resource"
* extension[sourceEventTimestamp] ^definition = "Date and time of the source event that triggers either the creation or updating of this FHIR resource"

* extension contains Insight named insight 0..*
* extension[insight] ^short = "References element level insight results pertaining to the data in this resource instance."
* extension[insight] ^definition = "References element level insight results pertaining to the data in this resource instance."

* tag 0..*
* tag ^slicing.ordered = false
* tag ^slicing.rules = #open
* tag ^slicing.discriminator.type = #value
* tag ^slicing.discriminator.path = "system"

* tag contains SourceClassificationTag 0..1
* tag[SourceClassificationTag].code from SourceClassificationValueSet (required)
* tag[SourceClassificationTag].system = "http://ibm.com/fhir/cdm/CodeSystem/process-meta-source-classification"
* tag[SourceClassificationTag] ^short      = "Identifies the origin of this FHIR resource, from either a source system of record or derived from a process"
* tag[SourceClassificationTag] ^definition = "Identifies the origin of this FHIR resource, from either a source system of record or derived from a process"

Extension:      IngestionBatchId
Id:             ingestion-batch-id
Title:          "Ingestion Batch Id"
Description:    "The ID generated by an ingestion service. This represents a producer-submitted message collection"
* value[x] only string

Extension:      TenantId
Id:             tenant-id
Title:          "Tenant Id"
Description:    "The ID for either the client or tenant that holds the contract with the data receiver, as recorded by the data receiver. This ID must be unique to data sent on behalf of that client or tenant within the data receiver systems. The receiver systems should associate this ID to the messages that originate from this client or tenant. This supports traceability, data protection, and data isolation, when appropriate."
* value[x] only string

Extension:       ProcessClientId
Id:              process-client-id
Title:          "Process Client ID"
Description:    "The ID of the client as recorded in the data producer or data integrator source system(s)"
* value[x] only string

Extension:      ProcessOrganization
Id:             process-organization
Title:          "Process Organization"
Description:    "The organizing entity that owns the process that has produced the data held in the FHIR resource or element. Example: If an analytic service has been the producer, the process-organization value should reflect the organaization reponsible for the service."
* value[x] only string

Extension:      ProcessName
Id:             process-name
Title:          "Process Name"
Description:    "The name of the process or service that has produced the data held in the FHIR resource or element. Example: If an analytic service has been the producer, use the process-name as the name of that analytic service."
* value[x] only string

Extension:      ProcessVersion
Id:             process-version
Title:          "Process Version"
Description:    "The version of either the process or the service that has produced the data held in the FHIR resource or element"
* value[x] only string

Extension:      ProcessType
Id:             process-type
Title:          "Process Type"
Description:    "The classification type of the process that has produced the data held in either the FHIR resource or element. Example: If the process is primarily a Natural Language Processing (NLP) service, you can specify NLP as the type. Or, if the process is primarily one that aggregates and groups related items, you can specify Grouper as the type."
* value[x] only string

Extension:      ProcessRecordId
Id:             process-record-id
Title:          "Process Record ID"
Description:    "The record ID that the data producer or data integrator uses internally to identify this data"
* value[x] only Identifier

Extension:      ProcessTimestamp
Id:             process-timestamp
Title:          "Process Timestamp"
Description:    "The timestamp when the data was generated within the FHIR resource or element"
* value[x] only dateTime

Extension:      SourceRecordId
Id:             source-record-id
Title:          "Source Record ID"
Description:    "The ID for a record that the data producer or data integrator extracted knowledge from to produce the data within the FHIR resource or element"
* value[x] only string

Extension:      SourceFileId
Id:             source-file-id
Title:          "Source File ID"
Description:    "The ID for a file from which the data producer or data integrator extracted knowledge, to produce the data within this FHIR resource or element"
* value[x] only string

Extension:      SourceRecordType
Id:              source-record-type
Title:          "Source Record Type"
Description:    "Either the data model type or schema type that generates this FHIR resource"
* value[x] only CodeableConcept

Extension:      SourceDataModelVersion
Id:              source-data-model-version
Title:          "Source Data Model Version"
Description:    "Version of the source system's data model, used by either the data producer or the data integrator"
* value[x] only string

Extension:      SourceEventTrigger
Id:              source-event-trigger
Title:          "Source Event Trigger"
Description:    "The event that is the catalyst for creating or updating this FHIR resource"
* value[x] only CodeableConcept

Extension:      SourceEventTimestamp
Id:              source-event-timestamp
Title:          "Source Event Timestamp"
Description:    "Date and time of the source event that triggers either the creation or updating of this FHIR resource"
* value[x] only dateTime

//NOTE: Defining this as a global extension that is intended to be able to be associated to any element in a resource to classify that 
//      field's value as originating from a system or record or a derived source
Extension:      ElementSourceClassification
Id:              element-source-classification
Title:          "Element Source Classification"
Description:    "Classification of the origin of the data value associated to a given element in a FHIR resource. The intent is that this extension value should be populated with a code from the process-meta-source-classification valueset."
* value[x] only code

CodeSystem:     ProcessMetaSourceClassification
Id:             process-meta-source-classification
Title:          "Classification of the origin of data"
Description:    "Identifies the class of origin of the data elements"
* ^caseSensitive = true
* #system-of-record      "System of record"       "Primary data that originates from the source system of record or the data integrator."
* #derived    "Derived"     "Derived data produced by a data processor that interprets, aggregates or in some other way enhances the source data."

ValueSet:       SourceClassificationValueSet
Id:             source-classification-values
Title:          "Source Classification Value Set"
Description:    "Value set for classifying data origin"
* codes from system ProcessMetaSourceClassification
