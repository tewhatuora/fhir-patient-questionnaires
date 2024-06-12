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

* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active

// Assistance Needs Extension
* extension[0].url = Canonical(AssistanceNeedsExtension)
* extension[0].valueCodeableConcept.coding[0].system = Canonical(AssistanceNeedsCodeSet)
* extension[0].valueCodeableConcept.coding[0].code = #nzsli
* extension[0].valueCodeableConcept.coding[0].display = "A New Zealand Sign Language interpreter"
