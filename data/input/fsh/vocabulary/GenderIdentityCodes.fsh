CodeSystem:     GenderIdentityCodeSystem
Id:             gender-identity
Title:          "Gender Identity Codes"
Description:    "Typically, gender identity codes are described in terms of masculinity and femininity. Gender identity is a social construct that varies, both across different cultures and over time. This value is often used for identity purposes, and should be collected directly from the patient."
* ^caseSensitive = true
* #female          "Female" 
* #gender-neutral  "Gender-neutral" 
* #male            "Male"
* #non-binary      "Non-binary"
* #other           "Other"
* #unknown         "Unknown"

ValueSet:       GenderIdentityValueSet
Id:             gender-identity
Title:          "Gender Identity Value Set"
Description:    "Typically, gender identity codes are described in terms of masculinity and femininity. Gender identity is a social construct that varies, both across different cultures and over time. This value is often used for identity purposes, and should be collected directly from the patient."
* codes from system GenderIdentityCodeSystem
