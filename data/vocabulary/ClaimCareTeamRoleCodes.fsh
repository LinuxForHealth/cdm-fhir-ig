CodeSystem:     ClaimCareTeamRoleCodeSystem
Id:             claim-care-team-role
Title:          "Claim Care Team Role Codes"
Description:    "Code system that defines the function of a team member within a care team"
* #admitting        "Admitting provider" 
* #attending        "Attending provider" 
* #billing          "Billing provider" 
* #ordering         "Ordering provider"          "The provider who referred the patient, prescribed the drug, or ordered either the test or the procedure"
* #servicing        "Servicing provider"         "The provider who serviced the patient, prescribed the drug, or ordered the test or procedure"

ValueSet:       ClaimCareTeamRoleValueSet
Id:             claim-care-team-role
Title:          "Claim Care Team Role Value Set"
Description:    "Value set that defines the function of a team member within a care team"
* codes from system ClaimCareTeamRoleCodeSystem