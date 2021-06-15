Profile:        CDMMatchPatient
Parent:         Patient
Id:             cdm-match-patient
Title:          "CDM Match Patient"
Description:    "Match patient record created when matched patients are found, containing links to the source patient resources that were matched"
* contained 0..0
* meta only ProcessMeta

* telecom 0..0
* address 0..0
* maritalStatus 0..0
* multipleBirth[x] 0..0
* photo 0..0
* contact 0..0
* communication 0..0
* generalPractitioner 0..0
* managingOrganization 0..0
* link 0..0

// Require at least one identifier
// Require identifiers to have one system and value 
// Type from extended set 
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* identifier.type from IdentifierTypeValueSet (extensible)

* extension contains SexAssignedAtBirth named sexAssignedAtBirth 0..1
* extension[sexAssignedAtBirth].valueCodeableConcept from SexAssignedAtBirthValueSet (extensible)
* extension[sexAssignedAtBirth] ^short      = "Sex assigned at birth based on observation by a physician.  Also called phenotype, or how the genes were expressed, based on the observation of the doctor. This assignment may not match the gender identity of the person, which will not be known until the newborn is older."
* extension[sexAssignedAtBirth] ^definition = "Sex assigned at birth based on observation by a physician.  Also called phenotype, or how the genes were expressed, based on the observation of the doctor. This assignment may not match the gender Identity of the person, which will not be known until the newborn is older."

* extension contains PatientGenderIdentity named patientGenderIdentity 0..1
* extension[patientGenderIdentity].valueCodeableConcept from GenderIdentityValueSet (extensible)
* extension[patientGenderIdentity] ^short      = "The gender the patient identifies with. The Patient's gender identity is used as guidance (e.g. for staff) about how to interact with the patient."
* extension[patientGenderIdentity] ^definition = "The gender the patient identifies with. The Patient's gender identity is used as guidance (e.g. for staff) about how to interact with the patient."

* extension contains SeeAlso named seeAlso 0..*
* extension[seeAlso].extension[matchSourceReference].valueReference only Reference(Patient)
* extension[seeAlso].extension[matchDetail].extension[matchComparedTo].valueReference only Reference(Patient)
* extension[seeAlso] ^short      = "References matched source patients. Links a CDMMatchPatient to one or more source CDMPatient resources that refer the same person."
* extension[seeAlso] ^definition = "References matched source patients. Links a CDMMatchPatient to one or more source CDMPatient resources that refer the same person."
