Instance: 1199
InstanceOf: NzPatient
Description: "Example Patient instance representing a screening participant who has New Zealand European ethnicity"
Usage: #example

* meta.profile = Canonical(http://hl7.org.nz/fhir/StructureDefinition/NzPatient)
// * meta.versionId = "1" cannot be used here as this content is used in contained instances where the container is versioned

* identifier insert NHIIdentifier(ZHI0020)

* name.use = #usual
* name.family = "Ninurta"
* name.given = "Gjorgji"

* birthDate = "1956-10-31"
* gender = #male

* extension[ethnicity].url = "http://hl7.org.nz/fhir/StructureDefinition/nz-ethnicity"
* extension[ethnicity].valueCodeableConcept = https://standards.digital.health.nz/ns/ethnic-group-level-4-code#11111 "New Zealand European"

* address[0].use = #home
* address[=].text = "39 Oleander Grove, Waikanae Beach, Waikanae 5036, New Zealand"
* address[=].line[0] = "39 Oleander Grove"
* address[=].line[+] = "Waikanae Beach"
* address[=].city = "Waikanae"
* address[=].postalCode = "5036"
* address[=].country = "NZL"
 