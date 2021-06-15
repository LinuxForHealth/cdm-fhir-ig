Profile:        HierarchyPractitionerRole
Parent:         PractitionerRole
Id:             hierarchy-practitioner-role
Title:          "Hierarchy Practitioner Role"
Description:    "Practitioner role used to represent a hierarchy within an organization"
* contained 0..0
* meta only ProcessMeta

* meta.profile 1..1
* practitioner 1..1
* organization 1..1
* telecom 0..0
* endpoint 0..0
* availableTime 0..0
* notAvailable 0..0
* availabilityExceptions 0..0

* extension contains PractitionerHierarchyLevelCode named practitionerHierarchyLevelCode 1..1
* extension[practitionerHierarchyLevelCode] ^short      = "Numeric level of the practitioner within the organinzational hierarchy"
* extension[practitionerHierarchyLevelCode] ^definition = "Numeric level of the practitioner within the organinzational hierarchy"

* extension contains PractitionerHierarchyLevel named practitionerHierarchyLevelDescription 1..1
* extension[practitionerHierarchyLevelDescription] ^short      = "Description of the level of the parent within the organinzational hierarchy"
* extension[practitionerHierarchyLevelDescription] ^definition = "Description of the level of the parent within the organinzational hierarchy"

* extension contains HierarchyVerionId named hierarchyVersionId 0..1
* extension[hierarchyVersionId] ^short      = "Numeric version of the organinzational hierarchy represented"
* extension[hierarchyVersionId] ^definition = "Numeric version of the organinzational hierarchy represented"

* extension contains HierarchyVerionDate named hierarchyVersionDate 0..1
* extension[hierarchyVersionDate] ^short      = "Version date of the organinzational hierarchy represented"
* extension[hierarchyVersionDate] ^definition = "Version date of the organinzational hierarchy represented"
