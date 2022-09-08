CodeSystem:     PayerTanfBenefitCodeSystem
Id:             payer-tanf-benefit
Title:          "Payer TANF Benefit codes"
Description:    "Temporary Assistance for Needy Families (TANF) benefits for the person"
* ^caseSensitive = true
* #0              "Not eligible for Medicaid"        ""           
* #1              "Did not receive TANF benefits"    ""
* #2              "Did receive TANF benefits"        ""
* #9              "TANF status is unknown"           ""

ValueSet:       PayerTanfBenefitValueSet
Id:             payer-tanf-benefit
Title:          "Payer TANF Benefit Value Set"
Description:     "Temporary Assistance for Needy Families (TANF) benefit value set for the person"
* codes from system PayerTanfBenefitCodeSystem
