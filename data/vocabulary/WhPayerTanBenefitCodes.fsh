CodeSystem:     WhPayerTanfBenefitCodeSystem
Id:             wh-payer-tanf-benefit
Title:          "Health Data Connect TANF Benefit codes"
Description:    "Standard code of the Temporary Assistance for Needy Families (TANF) benefits for the person"
* #0              "Not eligible for Medicaid"        ""           
* #1              "Did not receive TANF benefits"    ""
* #2              "Did receive TANF benefits"        ""
* #9              "TANF status is unknown"           ""

ValueSet:       WhPayerTanfBenefitValueSet
Id:             wh-payer-tanf-benefit
Title:          "Health Data Connect TANF Benefit Value Set"
Description:     "Temporary Assistance for Needy Families (TANF) benefit value set for the person"
* codes from system WhPayerTanfBenefitCodeSystem
