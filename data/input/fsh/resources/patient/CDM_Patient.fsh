Profile:        CDMPatient
Parent:         Patient
Id:             cdm-patient
Title:          "CDM Patient"
Description:    "Health Data Connect Common Data Model definition of what fields we currently define for a patient"
* contained 0..0
* meta only ProcessMeta

* identifier only CDMIdentifier
* identifier 0..*
* identifier.value 1..1
* identifier.type from IdentifierTypeValueSet (extensible)

* communication.extension contains LanguageRank named languageRank 0..1
* communication.extension[languageRank] ^short      = "Specify preferred order of language use (1 = highest)"
* communication.extension[languageRank] ^definition = "Specify preferred order of language use (1 = highest)"

* extension contains ethnicity named ethnicity 0..1
* extension[ethnicity] ^short      = "Code for the ethnicity of the person"
* extension[ethnicity] ^definition = "Code for the ethnicity of the person"

* extension contains FamilyId named familyId 0..*
* extension[familyId] ^short      = "The unique identifier for the subscriber (contract holder, employee) and the associated dependents"
* extension[familyId] ^definition = "The unique identifier for the subscriber (contract holder, employee) and the associated dependents"

// CDM TODO: REMOVE US-CORE-BIRTH-SEX AFTER TREX HAS STOPPED USING IT
// Have to keep it in the meantime because it is causing validation errors
* extension contains USCoreBirthSex named usCoreBirthSex 0..1
* extension[usCoreBirthSex] ^short      = "A code classifying the person’s sex assigned at birth as specified by the Office of the National Coordinator for Health IT (ONC)"
* extension[usCoreBirthSex] ^definition = "A code classifying the person’s sex assigned at birth as specified by the Office of the National Coordinator for Health IT (ONC). This extension aligns with the C-CDA Birth Sex Observation (LOINC 76689-9)."

* extension contains USCoreRace named usCoreRace 0..1
* extension[usCoreRace] ^short      = "Complex extension for race allows one or more race codes"
* extension[usCoreRace] ^definition = "Complex extension for race allows one or more race codes. Must Support at least one code from OMB Race Categories. May include additional race codes from CDC Race Codes. Must include text description of race."

* extension contains USCoreEthnicity named usCoreEthnicity 0..1
* extension[usCoreEthnicity] ^short      = "Complex extension for ethnicity allows one or more ethnicity codes"
* extension[usCoreEthnicity] ^definition = "Complex extension for ethnicity allows one or more rethnicityce codes. Must Support at least one code from OMB Ethnicity Categories. May include additional ethnicity codes from CDC Ethnicity Codes. Must include text description of ethnicity."

* address only CDMAddress
* telecom only CDMContactPoint

* contact.address only CDMAddress
* contact.telecom only CDMContactPoint

* extension contains ImmigrationStatus named immigrationStatus 0..1
* extension[immigrationStatus] ^short = "Customer-specific code for the immigration status of the patient"
* extension[immigrationStatus] ^short = "Customer-specific code for the immigration status of the patient"

* extension contains StatusCode named statusCode 0..*
* extension[statusCode].valueCodeableConcept from PatientStatusValueSet (example)
* extension[statusCode] ^short      = "Customer-specific patient status codes"
* extension[statusCode] ^definition = "Customer-specific patient status codes"

* extension contains PatientImportance named patientImportance 0..1
* extension[patientImportance].valueCodeableConcept from PatientImportanceValueSet (extensible)
* extension[patientImportance] ^short      = "The importance of the patient.  For example: VIP, DO-NOT-CONTACT, etc."
* extension[patientImportance] ^definition = "The importance of the patient.  For example: VIP, DO-NOT-CONTACT, etc."

* generalPractitioner only ReferenceWithCodeAndPeriod

* extension contains LocalRaceCd named localRaceCd 0..1
* extension[localRaceCd] ^short      = "Customer-specific code for the race of the person"
* extension[localRaceCd] ^definition = "Customer-specific code for the race of the person"

* extension contains PatientCitizenship named patientCitizenship 0..*
* extension[patientCitizenship].valueCodeableConcept from CitizenshipValueSet (extensible)
* extension[patientCitizenship] ^short      = "Code to identify if the patient is a U.S. Citizen"
* extension[patientCitizenship] ^definition = "Code to identify if the patient is a U.S. Citizen"

* extension contains CitizenStatus named citizenStatus 0..1
* extension[citizenStatus] ^short      = "Customer-specific code for the citizenship status of the patient"
* extension[citizenStatus] ^definition = "Customer-specific code for the citizenship status of the patient"

* extension contains SexAssignedAtBirth named sexAssignedAtBirth 0..1
* extension[sexAssignedAtBirth].valueCodeableConcept from SexAssignedAtBirthValueSet (extensible)
* extension[sexAssignedAtBirth] ^short      = "Sex assigned at birth based on observation by a physician.  Also called phenotype, or how the genes were expressed, based on the observation of the doctor. This assignment may not match the gender Identity of the person, which will not be known until the newborn is older."
* extension[sexAssignedAtBirth] ^definition = "Sex assigned at birth based on observation by a physician.  Also called phenotype, or how the genes were expressed, based on the observation of the doctor. This assignment may not match the gender Identity of the person, which will not be known until the newborn is older."

* extension contains PatientGenderIdentity named patientGenderIdentity 0..1
* extension[patientGenderIdentity].valueCodeableConcept from GenderIdentityValueSet (extensible)
* extension[patientGenderIdentity] ^short      = "The gender the patient identifies with. The Patient's gender identity is used as guidance (e.g. for staff) about how to interact with the patient."
* extension[patientGenderIdentity] ^definition = "The gender the patient identifies with. The Patient's gender identity is used as guidance (e.g. for staff) about how to interact with the patient."

* extension contains IdentifiedPronouns named identifiedPronouns 0..*
* extension[identifiedPronouns] ^short      = "Gender, typically described in terms of masculinity and femininity, is a social construction that varies across different cultures and over time.  This value is often used for identity purposes and should be collected directly from the patient."
* extension[identifiedPronouns] ^definition = "Gender, typically described in terms of masculinity and femininity, is a social construction that varies across different cultures and over time.  This value is often used for identity purposes and should be collected directly from the patient."

* extension contains LegallyDocumentedSex named legallyDocumentedSex 0..1
* extension[legallyDocumentedSex] ^short      = "Sex as defined or amended on the patient's legal documentation, for example a birth certificate or driver's license"
* extension[legallyDocumentedSex] ^definition = "Sex as defined or amended on the patient's legal documentation, for example a birth certificate or driver's license"
* extension[legallyDocumentedSex].extension[documentedSex].valueCodeableConcept from SexAssignedAtBirthValueSet (extensible)
* extension[legallyDocumentedSex].extension[documentedSource].valueCodeableConcept from LegalDocumentSourceValueSet (extensible)
* extension[legallyDocumentedSex].extension[documentedSystem].valueCodeableConcept from LegalDocumentSystemValueSet (extensible)
* extension[legallyDocumentedSex].extension[documentedSex] ^short      = "Sex coding identified on the legal document"
* extension[legallyDocumentedSex].extension[documentedSex] ^definition = "Sex coding identified on the legal document"
* extension[legallyDocumentedSex].extension[documentedSource] ^short      = "Source type of the legal document"
* extension[legallyDocumentedSex].extension[documentedSource] ^definition = "Source type of the legal document"
* extension[legallyDocumentedSex].extension[documentedSystem] ^short      = "Source system or jurisdiction of the legal document"
* extension[legallyDocumentedSex].extension[documentedSystem] ^definition = "Source system or jurisdiction of the legal document"

* extension contains SexualOrientation named sexualOrientation 0..1
* extension[sexualOrientation].valueCodeableConcept from SexualOrientationValueSet (extensible)
* extension[sexualOrientation] ^short      = "Patient's physical, romantic, and/or emotional attraction towards other people"
* extension[sexualOrientation] ^definition = "Patient's physical, romantic, and/or emotional attraction towards other people"

* extension contains CommunicationOptOut named communicationOptOut 0..*
* extension[communicationOptOut] ^short      = "Opt-out patient for communications by product and/or communication mode"
* extension[communicationOptOut] ^definition = "Opt-out patient for communications by product and/or communication mode"

* extension contains NonstandardLanguage named nonstandardLanguage 0..1
* extension[nonstandardLanguage] ^short      = "Code for the language of the patient"
* extension[nonstandardLanguage] ^definition = "Code for the language of the patient"

* extension contains VeteranIndicator named veteranIndicator 0..1
* extension[veteranIndicator] ^short      = "Indicates whether the individual served in the active military, naval, or air service"
* extension[veteranIndicator] ^definition = "Indicates whether the individual served in the active military, naval, or air service"
