Profile: AssistanceNeedsProfile
Parent: Condition
Description: "Extension of Conditions for capturing Patient assistance needs"
Id: assistance-needs-profile
Title: "Assistance Needs Profle"

// There's very few options for representing this kind of info in FHIR.  The only other thing I've found is this
// generic extension to Patient for disability https://hl7.org/fhir/r4/extension-patient-disability.html
// however, the assistance needs are not necessarily "disabilities". I have selected Condition to support future
// snomed references to a condition which has driven this assistance need.

* ^version = "0.0.1"

// custom extension
* extension ^short = "Extend Condition to capture assistance needs based on CodeSet"
* extension contains AssistanceNeedsExtension named assistanceNeeds 0..*

// elements suppressed
* verificationStatus 0..0
* category 0..0
* severity 0..0
* code 0..0
* onsetDateTime 0..0
* onsetPeriod 0..0
* onsetRange 0..0
* onsetString 0..0
* abatementDateTime 0..0
* abatementAge 0..0
* abatementPeriod 0..0
* abatementRange 0..0
* abatementString 0..0
* recordedDate 0..0
* stage 0..0
