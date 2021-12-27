CodeSystem: MatchConfidenceLevelCodeSystem
Id:         match-confidence-level
Title:      "Match Confidence Level Codes"
Description: "Codes indicating confidence level of matched entities"
* ^caseSensitive = false
* #no-match     "This record is not likely to be a match.  This record should ONLY be matched when another match is used to identify the match or if a human has intervened to specify a match."

ValueSet:       MatchConfidenceLevelValueSet
Id:             match-confidence-level
Title:          "Match Confidence Level Code System"
Description:    "Codes indicating confidence level of matched entities"
* codes from system MatchConfidenceLevelCodeSystem
* codes from system http://hl7.org/fhir/ValueSet/match-grade
