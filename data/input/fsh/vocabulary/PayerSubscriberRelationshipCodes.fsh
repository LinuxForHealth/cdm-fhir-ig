CodeSystem:     PayerSubscriberRelationshipCodeSystem
Id:             payer-subscriber-relationship
Title:          "Payer Subscriber Relationship Codes"
Description:    "Payer subscriber relationship value set for the relationship of the member to the contract holder"
* ^caseSensitive = true
* #childother      "The beneficiary can only be identified as a child or other dependent of the Subscriber."   ""
 
ValueSet:       PayerSubscriberRelationshipCodeValueSet
Id:             payer-subscriber-relationship
Title:          "Payer Subscriber Relationship Value Set"
Description:    "Payer subscriber relationship value set for the relationship of the member to the contract holder"
* codes from system http://terminology.hl7.org/CodeSystem/subscriber-relationship
* codes from system PayerSubscriberRelationshipCodeSystem