Instance: DisabilityAssistanceExample
InstanceOf: AssistanceNeedsProfile
Usage: #example
Description: "Required Assistance: A New Zealand Sign Language interpreter"

* meta.profile = Canonical(AssistanceNeedsProfile)
* meta.versionId = "0.0.1"

// Constraint failed: con-3: 'Condition.clinicalStatus SHALL be present if verificationStatus is not entered-in-error and category is problem-list-item' (defined in http://hl7.org/fhir/StructureDefinition/Condition) (Best Practice Recommendation)
// * Condition.clinicalStatus = "none"

// form a Patient reference to both a logical (NHI) resource and and a local literal resource
* subject = Reference(Patient/1198)
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "SCF12345678"
* subject.display = "Nina Gilbert"

// Setting the note field (Annotation) to capture disability assistance requirements
* note[0].text = "Required Assistance: A New Zealand Sign Language interpreter"
* note[0].authorReference = Reference(Patient/1198)
* note[0].time = "2023-10-19T12:00:00Z"
