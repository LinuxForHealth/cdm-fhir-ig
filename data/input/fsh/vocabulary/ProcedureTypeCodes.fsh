CodeSystem:     ProcedureTypeCodeSystem
Id:             procedure-type
Title:          "Procedure Type Codes"
Description:    "Codes indicating the procedure type"
* ^caseSensitive = false
* #surgical        "surgical"                 ""

ValueSet:       ProcedureTypeValueSet
Id:             procedure-type
Title:          "Procedure Type Value Set"
Description:    "The value set indicating the procedure type"
* codes from system ProcedureTypeCodeSystem
