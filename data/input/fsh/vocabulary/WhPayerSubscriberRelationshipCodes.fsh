CodeSystem:     WhPayerSubscriberRelationshipCodeSystem
Id:             wh-payer-subscriber-relationship
Title:          "Health Data Connect Subscriber Relationship Codes"
Description:    "Health Data Connect subscriber relationship value set for the relationship of the member to the contract holder"
* ^caseSensitive = true
* #childother      "The beneficiary can only be identified as a child or other dependent of the Subscriber."   ""
 
ValueSet:       WhPayerSubscriberRelationshipCodeValueSet
Id:             wh-payer-subscriber-relationship
Title:          "Health Data Connect Subscriber Relationship Value Set"
Description:    "Health Data Connect subscriber relationship value set for the relationship of the member to the contract holder"
* codes from system http://terminology.hl7.org/CodeSystem/subscriber-relationship
* codes from system WhPayerSubscriberRelationshipCodeSystem