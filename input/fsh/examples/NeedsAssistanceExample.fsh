Instance: NeedsAssistanceExample
InstanceOf: AssistanceNeedsProfile
Usage: #example
Description: "Required Assistance: A New Zealand Sign Language interpreter"

* meta.profile = Canonical(AssistanceNeedsProfile)
* meta.versionId = "0.0.1"

// Constraint failed: con-3: 'Condition.clinicalStatus SHALL be present if verificationStatus is not entered-in-error and category is problem-list-item' (defined in http://hl7.org/fhir/StructureDefinition/Condition) (Best Practice Recommendation)
// * Condition.clinicalStatus = "none"

// form a Patient reference to both a logical (NHI) resource and and a local literal resource
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "SCF12345678"
* subject.display = "Marieke Christabel"

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active

// Hard-coded group-by fields
* category[0].coding[0].system = "http://snomed.info/sct"
* category[=].coding[=].code = #717831006
* category[=].coding[=].display = "Level of dependence"

* code.coding[0].system = "http://snomed.info/sct"
* code.coding[=].code = #371152001
* code.coding[=].display = "Assisted"

// Assistance Needs Extension
* extension[0].url = Canonical(AssistanceNeedsExtension)
* extension[=].valueCodeableConcept.coding[0].system = Canonical(AssistanceNeedsCodeSystem)
* extension[=].valueCodeableConcept.coding[=].code = #171671000210109
* extension[=].valueCodeableConcept.coding[=].display = "A New Zealand Sign Language interpreter"
