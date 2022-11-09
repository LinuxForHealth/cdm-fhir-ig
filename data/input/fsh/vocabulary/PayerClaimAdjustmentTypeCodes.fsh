CodeSystem:     PayerClaimAdjustmentTypeCodeSystem
Id:             payer-claim-adjustment-type
Title:          "Payer Claim Adjustment Type Codes"
Description:    "Payer codes for the type of adjustment for the claim"
* ^caseSensitive = true
* #1   "Adjustment (positive or negative adjustment)"                 "An adjustment is a claim line where one or more of the financial fields display the difference between the original amount and the final amount. Any financial not being adjusted should be zero as well as any quantity."
* #2   "Void (void, reversal or back-out)"                            "A void is a claim line where all financials and quantities are negated"
* #3   "Original or Replacement (original, resubmit or replacement)"  "An original or replacement claim line where all financials and quantities are positive and supplements a void claim line"	
* #4   "Bulk Adjustment (gross or bulk adjustment)"                   "Adjustments (positive or negative) that aren't tied to a particular service at the claim-line level.  Examples include, but aren't limited to, value-based reimbursement payments to providers, Drug Rebates, etc."
* #B   "Adjustment Debit"                                             "Claim adjustments are sometimes required to correct erroneous payments made to providers. Adjustments may need to be made for a range of reasons, for example, recording of an incorrect procedure code, listing of a wrong place of service, data entry errors etc. A claim adjustment debit increases the balance due to the provider due to an underpayment made in error."
* #C   "Adjustment Credit"                                            "Claim adjustments are sometimes required to correct erroneous payments made to providers. Adjustments may need to be made for a range of reasons, for example, recording of an incorrect procedure code, listing of a wrong place of service, data entry errors etc. A claim adjustment credit decreased the balance due to the provider due to an overpayment made in error."

ValueSet:       PayerClaimAdjustmentTypeValueSet
Id:             payer-claim-adjustment-type
Title:          "Payer  Claim Adjustment Type Value Set"
Description:    "Value set containing payer codes indicating the type of adjustment for the claim"
* codes from system PayerClaimAdjustmentTypeCodeSystem
