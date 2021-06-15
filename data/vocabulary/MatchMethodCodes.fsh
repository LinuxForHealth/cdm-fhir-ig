CodeSystem: MatchMethodCodeSystem
Id:         match-method
Title:      "Match Method Codes"
Description: "Codes indicating methods used to identify matched entities"
* #automated        "Automoted matching algorithm or model identified the match"
* #manual           "Manual matching performed by a human"
* #none             "No match was performed or identifed"

ValueSet:       MatchMethodValueSet
Id:             match-method
Title:          "Match Method Value Set"
Description:    "Codes indicating methods used to identify matched entities"
* codes from system MatchMethodCodeSystem
