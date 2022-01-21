Profile:          CDMPractitionerRole
Parent:           PractitionerRole
Id:               cdm-practitioner-role
Title:            "CDM Practitioner Role"
Description:      "IBM Health Data Connect Common Data Model definition of what fields we currently define for a practitioner role"

* contained 0..0
* meta only ProcessMeta

// Require at least one identifier
// Require identifiers to have one system and value 
// Type from extended set 
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type from IdentifierTypeValueSet (extensible)

// Slice Identifiers by type
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Slice based on entry system"
* identifier ^slicing.rules = #open
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "type"
* identifier contains
      Source 0..1 and 
      Derived 0..1
* identifier[Source].use = #official
* identifier[Source].type = IdentifierTypeCodeSystem#SSRI
* identifier[Source].system 1..1
* identifier[Source].value 1..1
* identifier[Derived].use = #official
* identifier[Derived].type = IdentifierTypeCodeSystem#DRI
* identifier[Derived].system 1..1
* identifier[Derived].value 1..1

* practitioner 1..1
* specialty ^slicing.ordered = false
* specialty ^slicing.description = "Slice based on provider role code"
* specialty ^slicing.rules = #open
* specialty ^slicing.discriminator.type = #exists
* specialty ^slicing.discriminator.path = "coding"
* specialty contains
     Standard 0..1 and
     NonStandard 0..1
* specialty[Standard].coding ^slicing.ordered = false
* specialty[Standard].coding ^slicing.description = "Slice based on provider role code"
* specialty[Standard].coding ^slicing.rules = #open
* specialty[Standard].coding ^slicing.discriminator.type = #pattern
* specialty[Standard].coding ^slicing.discriminator.path = "system"
* specialty[Standard].coding contains
     Taxonomy 0..1 and
     Specialty 0..1
* specialty[Standard].coding[Taxonomy].system = "http://nucc.org/provider-taxonomy"
* specialty[Standard].coding[Taxonomy].code 1..1
* specialty[Standard].coding[Specialty].system = "http://ibm.com/fhir/cdm/nucc-provider-taxonomy-specialty"
* specialty[Standard].coding[Specialty].code 1..1
* specialty[NonStandard].text 1..1

* code ^slicing.ordered = false
* code ^slicing.description = "Slice based on provider role code"
* code ^slicing.rules = #open
* code ^slicing.discriminator.type = #exists
* code ^slicing.discriminator.path = "coding"
* code contains
     Standard 0..1 and
     NonStandard 0..1
* code[Standard].coding ^slicing.ordered = false
* code[Standard].coding ^slicing.description = "Slice based on provider role code"
* code[Standard].coding ^slicing.rules = #open
* code[Standard].coding ^slicing.discriminator.type = #pattern
* code[Standard].coding ^slicing.discriminator.path = "system"
* code[Standard].coding contains
     NUCCTaxonomy 0..1 and
     NUCCType 0..1 and
     IBMType 0..1
* code[Standard].coding[NUCCTaxonomy].system = "http://nucc.org/provider-taxonomy"
* code[Standard].coding[NUCCTaxonomy].code 1..1
* code[Standard].coding[NUCCType].system = "http://ibm.com/fhir/cdm/nucc-provider-taxonomy-type"
* code[Standard].coding[NUCCType].code 1..1
* code[Standard].coding[IBMType].system = "http://ibm.com/fhir/cdm/wh-payer-provider-type"
* code[Standard].coding[IBMType].code 1..1
* code[Standard].coding[IBMType].code from  WhPractitionerRoleTypeValueSet (preferred)
* code[NonStandard].text 1..1

* telecom only CDMContactPoint

