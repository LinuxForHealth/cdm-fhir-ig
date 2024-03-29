CodeSystem:     ADAToothQuadrantCodeSystem
Id:             ada-tooth-quadrant
Title:          "American Dental Association Tooth Quadrant Code System"
Description:    "Code system that defines a tooth quadrant"
* ^caseSensitive = true
* #UR    "Upper right"       "Upper right"
* #UL    "Upper left"        "Upper left"
* #LR    "Lower right"       "Lower right"
* #LL    "Lower left"        "Lower left"

ValueSet:       ADAToothQuadrantValueSet
Id:             ada-tooth-quadrant
Title:          "American Dental Association Tooth Quadrant Value Set"
Description:    "Value set that defines a tooth quadrant"
* codes from system ADAToothQuadrantCodeSystem
