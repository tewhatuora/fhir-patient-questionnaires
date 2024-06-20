Instance: 1198
InstanceOf: NzPatient
Description: "Example Patient instance representing a screening participant who has Maori ethnicity"
Usage: #example

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * meta.versionId = "1" cannot be used here as this content is used in contained instances where the container is versioned

* identifier insert NHIIdentifier(ZHI0010)

* name.use = #usual
* name.family = "Christabel"
* name.given = "Marieke"

* birthDate = "1987-08-06"
* gender = #female

* extension[ethnicity].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[ethnicity].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#21111 "Māori"

* address[0].use = #home
* address[=].text = "219 Hunter Street, Whataupoko, LGisborne 4010, New Zealand"
* address[=].line[0] = "219 Hunter Street"
* address[=].line[+] = "Whataupoko"
* address[=].city = "LGisborne"
* address[=].postalCode = "4010"
* address[=].country = "NZL"
