Extension:      SeeAlso
Id:             see-also
Title:          "See Also"
Description:    "References matched source entities. Links a matched resource to one or more source resources that refer the same person (patient, practitioner) or entity (location, organization)."
* extension contains 
    MatchSourceReference named matchSourceReference 1..1 and 
    MatchMethod named matchMethod 0..1 and 
    SplitMethod named splitMethod 0..1 and 
    MatchConfidenceLevel named matchConfidenceLevel 0..1 and
    MatchConfidenceScore named matchConfidenceScore 0..1 and
    MatchPeriod named matchPeriod 0..1 and
    MatchDetail named matchDetail 0..*
* extension[matchMethod].valueCodeableConcept from MatchMethodValueSet (extensible)
* extension[splitMethod].valueCodeableConcept from SplitMethodValueSet (extensible)
* extension[matchConfidenceLevel].valueCoding from MatchConfidenceLevelValueSet (extensible)
* extension[matchSourceReference] ^short = "Reference to the source resource that is matched"
* extension[matchMethod] ^short = "Method used to identify the matched resource"
* extension[splitMethod] ^short = "Method used to identify the matched resource to split"
* extension[matchConfidenceLevel] ^short = "Confidence level code for the matched resource"
* extension[matchConfidenceScore] ^short = "Confidence score for the matched resource"
* extension[matchPeriod] ^short = "Time period when match is valid"
* extension[matchDetail] ^short = "Detailed match algorithm results used to match resources"

Extension:      MatchDetail
Id:             match-detail
Title:          "Match Detail"
Description:    "Detailed match algorithm results used to match resources"
* extension contains 
    MatchComparedTo named matchComparedTo 1..* and 
    MatchCriteria named matchCriteria 1..1 and 
    MatchConfidenceLevel named matchConfidenceLevel 0..1 and
    MatchConfidenceScore named matchConfidenceScore 0..1 
* extension[matchComparedTo] ^short = "Reference to the record that was compared for matching"
* extension[matchConfidenceLevel].valueCoding from MatchConfidenceLevelValueSet (extensible)
* extension[matchCriteria] ^short = "Algorithm or criteria used to identify matched resources"
* extension[matchConfidenceLevel] ^short = "Confidence level code for the match"
* extension[matchConfidenceScore] ^short = "Confidence score for the match"

Extension:      MatchSourceReference
Id:             match-source-reference
Title:          "MatchSourceReference"
Description:    "Reference to the source resource that is matched"
* value[x] only Reference

Extension:      MatchMethod
Id:             match-method
Title:          "Match Method"
Description:    "Method used to identify the matched resource"
* value[x] only CodeableConcept
* valueCodeableConcept from MatchMethodValueSet (extensible)

Extension:      MatchComparedTo
Id:             match-compared-to
Title:          "Match Compared To"
Description:    "Reference to the record that was compared for matching"
* value[x] only Reference

Extension:      MatchCriteria
Id:             match-criteria
Title:          "Match Criteria"
Description:    "Criteria or algorythm used to identify the matched resource"
* value[x] only string

Extension:      SplitMethod
Id:             split-method
Title:          "Split Method"
Description:    "Method used to identify the matched resource to split"
* value[x] only CodeableConcept
* valueCodeableConcept from SplitMethodValueSet (extensible)

Extension:      MatchConfidenceLevel
Id:             match-confidence-level
Title:          "Match Confidence Code"
Description:    "Confidence code for the match"
* value[x] only Coding
* valueCoding from MatchConfidenceLevelValueSet (extensible)

Extension:      MatchConfidenceScore
Id:             match-confidence-score
Title:          "Confidence Score"
Description:    "Confidence score for the match"
* value[x] only decimal

Extension:      MatchPeriod
Id:             match-period
Title:          "Match Period"
Description:    "Time period when match is valid"
* value[x] only Period