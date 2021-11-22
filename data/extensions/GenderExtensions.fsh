// CDM TODO: REMOVE US-CORE-BIRTH-SEX THIS AFTER TREX HAS STOPPED USING IT
// Have to keep it in the meantime because removing it causes FHIR validation errors on claims data
Alias: USCoreBirthSex = http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex

Alias: PatientGenderIdentity = http://hl7.org/fhir/StructureDefinition/patient-genderIdentity

Extension:      SexAssignedAtBirth
Id:             sex-assigned-at-birth
Title:          "Sex Assigned At Birth"
Description:    "Sex assigned at birth based on observation by a physician.  Also called phenotype, or how the genes were expressed, based on the observation of the doctor. This assignment may not match the gender identity of the person, which will not be known until the newborn is older."
* value[x] only CodeableConcept
* valueCodeableConcept from SexAssignedAtBirthValueSet (extensible)

Extension:      IdentifiedPronouns
Id:             identified-pronouns
Title:          "Identified Pronouns"
Description:    "Gender, typically described in terms of masculinity and femininity, is a social construction that varies across different cultures and over time.  This value is often used for identity purposes and should be collected directly from the patient."
* value[x] only string

Extension:      SexualOrientation
Id:             sexual-orientation
Title:          "SexualOrientation"
Description:    "Patient's physical, romantic, and/or emotional attraction towards other people"
* value[x] only CodeableConcept
* valueCodeableConcept from SexualOrientationValueSet (extensible)

// Legally Documented Sex Complex Extension
Extension:      LegallyDocumentedSex
Id:             legally-documented-sex
Title:          "Legally Documented Sex"
Description:    "Sex as defined or amended on the patient's legal documentation, for example a birth certificate or driver's license"
* extension contains 
    DocumentedSex named documentedSex 1..1 and
    DocumentedSource named documentedSource 1..1 and
    DocumentedSystem named documentedSystem 1..1 
* extension[documentedSex].valueCodeableConcept from SexAssignedAtBirthValueSet (extensible)
* extension[documentedSource].valueCodeableConcept from LegalDocumentSourceValueSet (extensible)
* extension[documentedSystem].valueCodeableConcept from LegalDocumentSystemValueSet (extensible)
* extension[documentedSex] ^short      = "Sex coding identified on the legal document"
* extension[documentedSex] ^definition = "Sex coding identified on the legal document"
* extension[documentedSource] ^short      = "Source type of the legal document"
* extension[documentedSource] ^definition = "Source type of the legal document"
* extension[documentedSystem] ^short      = "Source system or jurisdiction of the legal document"
* extension[documentedSystem] ^definition = "Source system or jurisdiction of the legal document"

Extension:      DocumentedSex
Id:             documented-sex
Title:          "Documented Sex"
Description:    "Sex coding indicated on the legal document"
* value[x] only CodeableConcept
* valueCodeableConcept from SexAssignedAtBirthValueSet (extensible)

Extension:      DocumentedSource
Id:             documented-source
Title:          "Documented Source"
Description:    "Source type of the legal document"
* value[x] only CodeableConcept
* valueCodeableConcept from LegalDocumentSourceValueSet (extensible)

Extension:      DocumentedSystem
Id:             documented-system
Title:          "Documented System"
Description:    "Source system or jurisdiction of the legal document"
* value[x] only CodeableConcept
* valueCodeableConcept from LegalDocumentSystemValueSet (extensible)

Extension:      EmployeeGender
Id:             employee-gender
Title:          "Employee Gender"
Description:    "Employee gender code"
* value[x] only CodeableConcept
