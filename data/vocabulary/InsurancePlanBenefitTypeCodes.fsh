CodeSystem:     InsurancePlanBenefitTypeCodeSystem
Id:             insurance-plan-benefit-type
Title:          "Insurance Plan Benefit Type Codes"
Description:    "The codes that indicates the specific types of costs (admin fees, premiums, etc.) that may be tied to a member based on their Insurance plan cost category"
* #administrative-fee          "Administrative Fee"              "Indicates the administrative fee for the component on the eligibility data"
* #capitation-amount           "Capitation Amount"               "Indicates the pre-paid amount, on the eligibility data, paid to plans or providers under risk-based managed care contracts"
* #employee-contribution       "Employee Contribution"           "Indicates the employee premium contribution for the component on the eligibility data"
* #non-claim-payment           "Non Claim Payment"               "Indicates the miscellaneous other non-claim payments on the eligibility data, not included in Administrative Fee, Capitation Amount, HMO Premium or Employee Contribution Amount"
* #monthly-premium-paid        "Monthly Premium Paid"            "Indicates the monthly premium paid for the component on the eligibility data"

ValueSet:       InsurancePlanBenefitTypeValueSet
Id:             insurance-plan-benefit-type
Title:          "Insurance Plan Benefit Type Value Set"
Description:    "The value set that indicates the specific types of costs (admin fees, premiums, etc.) that may be tied to a member based on their Insurance plan cost category"
* codes from system InsurancePlanBenefitTypeCodeSystem
