Instance: DisabilityAssistanceExample
InstanceOf: PatientConditionSummary
Usage: #example
Description: "Required Assistance: A New Zealand Sign Language interpreter"

* meta.profile = Canonical(PatientConditionSummary)
* meta.versionId = "0.0.1"

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