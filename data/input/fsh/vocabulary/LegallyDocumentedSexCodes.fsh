CodeSystem:     LegalDocumentSourceCodeSystem
Id:             legal-document-source
Title:          "Legal Document Source Codes"
Description:    "Codes indicating the source of legal document used for identification"
* ^caseSensitive = false
* #drivers-license  "State or federally issued driver's license"
* #passport         "Official document issued by a government, certifying identity and citizenship"
* #gov-id           "State or federally issues identification card"
* #other            "Other form of identification"

ValueSet:       LegalDocumentSourceValueSet
Id:             legal-document-source
Title:          "Legal Document Source Value Set"
Description:    "Codes indicating the source of legal document used for identification"
* codes from system LegalDocumentSourceCodeSystem

CodeSystem:     LegalDocumentSystemCodeSystem
Id:             legal-document-system
Title:          "Legal Document System Codes"
Description:    "Codes indicating the system of legal document used for identification"
* ^caseSensitive = false
* #us-gov       "U.S. Federal Goverment"
* #us-al-gov   "Alabama State Government"
* #us-ak-gov   "Alaska State Government"
* #us-az-gov   "Arizona State Government"
* #us-ar-gov   "Arkansas State Government"
* #us-ca-gov   "California State Government"
* #us-co-gov   "Colorado State Government"
* #us-ct-gov   "Connecticut State Government"
* #us-de-gov   "Deleware State Government"
* #us-dc-gov   "Distict Of Columbia"
* #us-fl-gov   "Florida State Government"
* #us-ga-gov   "Georgia State Government"
* #us-hi-gov   "Hawaii State Government"
* #us-id-gov   "Idaho State Government"
* #us-il-gov   "Illinois State Government"
* #us-in-gov   "Indiana State Government"
* #us-ia-gov   "Iowa State Government"
* #us-ks-gov   "Kansas State Government"
* #us-ky-gov   "Kentucky State Government"
* #us-la-gov   "Louisianna State Government"
* #us-me-gov   "Maine State Government"
* #us-md-gov   "Maryland State Government"
* #us-ma-gov   "Massachusetts State Government"
* #us-mi-gov   "Michigan State Government"
* #us-mn-gov   "Minnesota State Government"
* #us-ms-gov   "Mississippi State Government"
* #us-mo-gov   "Missouri State Government"
* #us-mt-gov   "Montana State Government"
* #us-ne-gov   "Nebraska State Government"
* #us-nv-gov   "Nevada State Government"
* #us-nh-gov   "New Hampshire State Government"
* #us-nj-gov   "New Jersey State Government"
* #us-nm-gov   "New Mexico State Government"
* #us-ny-gov   "New York State Government"
* #us-nc-gov   "North Carolina State Government"
* #us-nd-gov   "North Dakota State Government"
* #us-ok-gov   "Oklahoma State Government"
* #us-or-gov   "Oregon State Government"
* #us-pa-gov   "Pennsylvania State Government"
* #us-ri-gov   "Rhode Island State Government"
* #us-sc-gov   "South Carolina State Government"
* #us-tn-gov   "Tennessee State Government"
* #us-tx-gov   "Texas State Government"
* #us-ut-gov   "Utah State Government"
* #us-vt-gov   "Vermont State Government"
* #us-va-gov   "Virginia State Government"
* #us-wa-gov   "Washington State Government"
* #us-wv-gov   "West Virginia State Government"
* #us-wi-gov   "Wisconsin State Government"
* #us-wy-gov   "Wyoming State Government"
* #us-other    "Other"

ValueSet:       LegalDocumentSystemValueSet
Id:             legal-document-system
Title:          "Legal Document System Value Set"
Description:    "Codes indicating the system of legal document used for identification"
* codes from system LegalDocumentSystemCodeSystem
