CodeSystem:     NdcNoHyphensCodeSystem
Id:             ndc-no-hyphens
Title:          "NDC No Hyphens Codes"
Description:    "A common set of non-hyphenated National Drug Codes listed by the FDA (Food and Drug Administration). Non-hpyhenated codes are recieved for prescription drug claims.  Hyphenated NDC codes should also be included as an additional coding, when available."
* ^caseSensitive = true
* #00003089421	    "00003-0894-21"	    "ELIQUIS"
* #00054327099      "00054-3270-99"     "FLUTICASONE PROPIONATE"
* #00378395177	    "00378-3951-77"	    "ATORVASTATIN CALCIUM"
* #16729018317	    "16729-0183-17"	    "HYDROCHLOROTHIAZIDE"
* #29300012810	    "29300-0128-10"	    "HYDROCHLOROTHIAZIDE"
* #55111015810	    "55111-0158-10"	    "OMEPRAZOLE"
* #59310057922	    "59310-0579-22"	    "PROAIR HFA"
* #60505082901	    "60505-0829-01"	    "FLUTICASONE PROPIONATE"
* #68180098003	    "68180-0980-03"	    "LISINOPRIL"
* #69452015120	    "69452-0151-20"	    "VITAMIN D"

ValueSet:       NdcNoHyphensValueSet
Id:             ndc-no-hyphens
Title:          "NDC No Hyphens Value Set"
Description:    "A common set of non-hyphenated National Drug Codes listed by the FDA (Food and Drug Administration). Non-hpyhenated codes are recieved for prescription drug claims.  Hyphenated NDC codes should also be included as an additional coding, when available." 
* codes from system NdcNoHyphensCodeSystem
