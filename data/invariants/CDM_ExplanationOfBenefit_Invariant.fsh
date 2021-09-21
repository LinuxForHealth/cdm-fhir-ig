// Business rule to ensure that the sequence number on CareTeam for a claim matches the CareTeam Sequence Number on the item.
Invariant:    explanation-of-benefit-careteam-sequence-check
Description:  "Sequence number on ExplanationOfBenefit CareTeam must match the CareTeam sequence number on the item."
Expression:   "explanationofbenefit.careTeam.sequence = explanationofbenefit.item.careTeamSequence"
Severity:     #warning
