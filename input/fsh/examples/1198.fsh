Instance: 1198
InstanceOf: NzPatient
Description: "Example Patient instance representing a screening participant who has Maori ethnicity"
Usage: #example

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * meta.versionId = "1" cannot be used here as this content is used in contained instances where the container is versioned

* identifier insert NHIIdentifier(SCF7826)

* name.use = #usual
* name.family = "Gilbert"
* name.given = "Nina"

* birthDate = "1968-11-24"

* extension[ethnicity].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[ethnicity].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#21111 "Māori"

* address[0].use = #home
* address[=].text = "375 Jackson Street, Petone, Lower Hutt 5012, New Zealand"
* address[=].line[0] = "375 Jackson Street"
* address[=].line[+] = "Petone"
* address[=].city = "Lower Hutt"
* address[=].postalCode = "5012"
* address[=].country = "NZL"
