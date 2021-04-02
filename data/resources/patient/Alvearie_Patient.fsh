Profile:        AlveariePatient
Parent:         Patient
Id:             alvearie-patient
Title:          "Alvearie Patient"
Description:    "The AlveariePatient resource contains the base information for the exchange of demographic and other data about a patient either receiving care or with the potential to receive care as known by a particular data source.  An AlveariePatient record is generally created and maintained by each organization with knowledge about the care provided for a patient. A unique patient may therefore have its information present in multiple AlveariePatient resource instances since multiple organizations are typically aware of and/or involved in a patient's care, including but not limited to provider organizations, payer organizations, and research organizations. The AlvearieMatchedPatient profile can be used in combination with this base profile to associate multiple instances of an AlveariePatient that are believed to potentially be about the same real world  individual. "
* contained 0..0
* meta only ProcessMeta

* identifier 0..*
* identifier.value 1..1
* identifier.type from IdentifierTypeValueSet (extensible)
* identifier only AlvearieIdentifier or Identifier

* communication.extension contains LanguageRank named languageRank 0..1
* communication.extension[languageRank] ^short = "Specify preferred order of language use (1 = highest)."

* extension contains FamilyId named familyId 0..1
* extension[familyId] ^short = "The unique identifier of the family this patient belongs to."

* extension contains USCoreBirthSex named birthSex 0..1
* extension[birthSex] ^short = "Code for sex assigned at birth as defined by US Core. Alvearie also offers an alternative sex-assigned-at-birth extension bound to a broader valueset."

* extension contains USCoreRace named race 0..1
* extension contains USCoreEthnicity named ethnicity 0..1

* address only AlvearieAddress
* telecom only AlvearieContactPoint

* contact.address only AlvearieAddress
* contact.telecom only AlvearieContactPoint

* extension contains StatusCode named statusCode 0..*
* extension[statusCode].valueCodeableConcept from PatientStatusValueSet (example)
* extension[statusCode] ^short = "Use case driven patient status codes"

* extension contains PatientImportance named patientImportance 0..*
* extension[patientImportance].valueCodeableConcept from PatientImportanceValueSet (extensible)

* generalPractitioner only ReferenceWithCodeAndPeriod

* extension contains SexAssignedAtBirth named sexAssignedAtBirth 0..1
* extension[sexAssignedAtBirth].valueCodeableConcept from SexAssignedAtBirthValueSet (extensible)
* extension[sexAssignedAtBirth] ^short = "Sex assigned at birth based on observation by a physician. "

* extension contains CommunicationOptOut named communicationOptOut 0..*
* extension[communicationOptOut] ^short = "Opt-out patient for communications by product and/or communication mode."