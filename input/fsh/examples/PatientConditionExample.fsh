Instance: DisabilityConditionSummary
InstanceOf: PatientConditionSummary
Usage: #example
Description: "Example of an Disability assistance summary as a FHIR DocumentReference with HTML narrative content only"

* meta.profile = Canonical(PatientConditionSummary)
* meta.versionId = "0.0.1"

// form a Patient reference to both a logical (NHI) resource and and a local literal resource
* subject = Reference(MickMahoe)
* subject.type = "Patient"
* subject.identifier.use = #official
* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.value = "SCF7826"
* subject.display = "Mick Mahoe"