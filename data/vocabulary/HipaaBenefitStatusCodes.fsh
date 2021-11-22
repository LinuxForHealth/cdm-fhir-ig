CodeSystem: HipaaBenefitStatusCodeSystem
Id:         hipaa-benefit-status
Title:      "HIPAA Benefit Status Codes"
Description: "HIPAA standard codes for the benefit status"
* #A        "Active"               "Active benefit"
* #C        "COBRA"                "Consolidated Omnibus Budget Reconciliation Act (COBRA) benefit"
* #S        "Surviving Insured"    "Surviging insured benefit"
* #T        "TEFRA"                "Tax Equity and Fiscal Responsibility Act (TEFRA) benefit"

ValueSet:       HipaaBenefitStatusValueSet
Id:             hipaa-benefit-status
Title:          "HIPAA Benefit Status Value Set"
Description:    "HIPAA standard value set for the benefit status"
* codes from system HipaaBenefitStatusCodeSystem
