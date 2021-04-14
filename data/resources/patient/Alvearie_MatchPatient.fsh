Profile:        AlvearieMatchPatient
Parent:         Patient
Id:             alvearie-match-patient
Title:          "Alvearie Match Patient"
Description:    "The AlvearieMatchPatient resource contains references to 0..*  source Patients records that a matching algorithm believes with some degree of confidence to be source records about the same individual.  In addition to keeping references of match decisions, the AlvearieMatchPatient resource can also contain details on split decisions that may be (optionally) leveraged to override matches.

It is the intention of the AlvearieMatchPatient profile to allow multiple match algorithms to be leveraged to match Patient records and to store those matched decisions in such a way that each use case of the AlvearieMatchPatient records can independently determine which combination(s) of algorithms based on a  an acceptable degree of match confidence for that indivudal use case. (i.e.: A use case that will directly engage the patient based on match information will trust different algorithms and confidence vectors than a use case against the same data set trying to summarize  population analytics.)

The AlvearieMatchPatient resource also contains preferred demographics for an individual.Preferred demographics are selected from data provided for multiple source systems, and may be derived from source data. The method for determining preferred demographics will vary by use case, but will likely use an algorithm that uses some combination of data system ranking, record update dates, and/or vote counting to determine the most reliable demographic information for the individual."

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
* extension[sexAssignedAtBirth] ^short = "Sex assigned at birth based on observation by a physician. "

* extension contains PatientGenderIdentity named patientGenderIdentity 0..1
* extension[patientGenderIdentity].valueCodeableConcept from GenderIdentityValueSet (extensible)

* extension contains SeeAlso named seeAlso 0..*
* extension[seeAlso].extension[matchSourceReference].valueReference only Reference(Patient)
* extension[seeAlso].extension[matchDetail].extension[matchComparedTo].valueReference only Reference(Patient)
* extension[seeAlso] ^short = "References matched source patients. Links AlvearieMatchPatient to one or more source Patient resources that are believed to refer to source details about the same individual."