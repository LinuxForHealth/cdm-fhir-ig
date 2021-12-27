CodeSystem:     AgeGroupCodeSystem
Id:             age-group
Title:          "Age Group Codes."
Description:    "Age group codes for claims."
* ^caseSensitive = true
* #1	"< 1 yr"               "Ages < 1 year"
* #2	"1-4 yr"               "Ages 1 to 4 years"
* #3	"5-9 yr"               "Ages 5 to 9 years"
* #4	"10-14 yr"             "Ages 10 to 14 years"
* #5	"15-17 yr"             "Ages 15 to 17 years"
* #6	"18-19 yr"             "Ages 18 to 19 years"
* #7	"20-24 yr"             "Ages 20 to 24 years"
* #8	"25-29 yr"             "Ages 25 to 29 years"
* #9	"30-34 yr"             "Ages 30 to 34 years"
* #10	"35-39 yr"             "Ages 35 to 39 years"
* #11	"40-44 yr"             "Ages 40 to 44 years"
* #12	"45-49 yr"             "Ages 45 to 49 years"
* #13	"50-54 yr"             "Ages 50 to 54 years"
* #14	"55-59 yr"             "Ages 55 to 59 years"
* #15	"60-64 yr"             "Ages 60 to 64 years"
* #16	"65-74 yr"             "Ages 65 to 74 years"
* #17	"75-84 yr"             "Ages 75 to 84 years"
* #18	"85+ yr"               "Ages 85 years and up"

ValueSet:       AgeGroupValueSet
Id:             age-group
Title:          "Age Group Value Set"
Description:    "Age group value set for claims."
* codes from system AgeGroupCodeSystem
