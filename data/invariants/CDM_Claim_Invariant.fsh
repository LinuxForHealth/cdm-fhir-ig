// Business rule to ensure that the sequence number on CareTeam for a claim matches the CareTeam Sequence Number on the item.
Invariant:	claim-careteam-sequence-check
Description:	"Sequence number on Claim CareTeam must match the CareTeam sequence number on the item."
Expression:	"claim.careTeam.sequence = claim.item.careTeamSequence"
Severity: 	#warning

// Business rule to ensure that the sequence number on CareTeam for a claim matches the CareTeam Sequence Number on the item.
Invariant:	explanationofbenefit-careteam-sequence-check
Description:	"Sequence number on ExplanationOfBenefit CareTeam must match the CareTeam sequence number on the item."
Expression:	"explanationofbenefit.careTeam.sequence = explanationofbenefit.item.careTeamSequence"
Severity: 	#warning
