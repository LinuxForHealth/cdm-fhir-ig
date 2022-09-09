Profile:            CDMOrganizationAffiliation
Parent:             OrganizationAffiliation
Id:                 cdm-organization-affiliation
Title:              "CDM Organization Affiliation"
Description:        "LinuxForHealth CDM organization affiliation with versioned hierarchy levels used to relate parent and child organizations"
* contained 0..0
* meta only ProcessMeta

* meta.profile 1..1
// parent organization
* organization 1..1
// child organization
* participatingOrganization 1..1
* telecom 0..0
* endpoint 0..0

* extension contains ParentOrganizationHierarchyLevel named parentHierarchyLevel 1..1
* extension[parentHierarchyLevel] ^short      = "Description of the level of the parent within the organinzational hierarchy"
* extension[parentHierarchyLevel] ^definition = "Description of the level of the parent within the organinzational hierarchy"

* extension contains ParentOrganizationHierarchyLevelCode named parentHierarchyLevelCode 1..1
* extension[parentHierarchyLevelCode] ^short      = "Numeric level of the practitioner within the organinzational hierarchy"
* extension[parentHierarchyLevelCode] ^definition = "Numeric level of the practitioner within the organinzational hierarchy"

* extension contains ChildOrganizationHierarchyLevel named childHierarchyLevel 1..1
* extension[childHierarchyLevel] ^short      = "Description of the level of the child practitioner within the organinzational hierarchy"
* extension[childHierarchyLevel] ^definition = "Description of the level of the child practitioner within the organinzational hierarchy"

* extension contains ChildOrganizationHierarchyLevelCode named childHierarchyLevelCode 1..1
* extension[childHierarchyLevelCode] ^short      = "Numeric level of the child practitioner within the organinzational hierarchy"
* extension[childHierarchyLevelCode] ^definition = "Numeric level of the child practitioner within the organinzational hierarchy"

* extension contains HierarchyVerionId named hierarchyVersionId 0..1
* extension[hierarchyVersionId] ^short      = "Numeric version of the organinzational hierarchy represented"
* extension[hierarchyVersionId] ^definition = "Numeric version of the organinzational hierarchy represented"

* extension contains HierarchyVerionDate named hierarchyVersionDate 0..1
* extension[hierarchyVersionDate] ^short      = "Version date of the organinzational hierarchy represented"
* extension[hierarchyVersionDate] ^definition = "Version date of the organinzational hierarchy represented"
