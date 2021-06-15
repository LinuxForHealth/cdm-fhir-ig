Profile:        QuantityWithConversion
Id:             quantity-with-conversion
Parent:         Quantity
Title:          "Quantity With Conversion"
Description:    "Quantity with converted quanitity for standard unit values"
* extension contains ConvertedQuantity named convertedQuantity 0..*
* extension[convertedQuantity] ^short      = "Converted quantity expressed in standard unit value"
* extension[convertedQuantity] ^definition = "Converted quantity expressed in standard unit value"
* system = UCUM-UNIT
* code from http://hl7.org/fhir/ValueSet/ucum-units (extensible)

Extension:      ConvertedQuantity
Id:             converted-quantity
Title:          "Converted Quantity"
Description:    "Converted quantity expressed in standard unit value"
* value[x] only Quantity
