Instance: AssistanceNeedsCapabilityStatement
InstanceOf: HnzToolingCapabilityStatement
Usage: #definition

* name = "AssistanceNeedsCapabilityStatement"
* title = "Assistance Needs API"
* status = #draft
* date = "2024-05-03"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* publisher = "Health New Zealand / Te Whatu Ora"
* description = "Assistance Requirements and Summary"
* kind = #instance
* fhirVersion = #4.0.1
* format = #json

// Requried by HnzToolingCapabilityStatement
* version = "1.1.0"

* contact.name = "Example Contact Details"
* contact.telecom.value = "https://example.com"
* contact.telecom.system = #url

* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[+].url = Canonical(HnzCustomHeadersExtension)
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[key].valueString = "Correlation-Id"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[value].valueUri = "https://raw.githubusercontent.com/tewhatuora/schemas/main/fhir-definitions-oas/uuid-definition.json"
* extension[HnzApiSpecBuilderExtension].extension[globalHeaders].extension[=].extension[required].valueBoolean = true
* extension[HnzApiSpecBuilderExtension].extension[licenseURL].valueUri = "https://example.license.org"
* extension[HnzApiSpecBuilderExtension].extension[licenseName].valueString = "GPLv3"
* extension[HnzApiSpecBuilderExtension].extension[externalDocs].valueUri = "https://docs.example.com/fhir"
// end of HnzToolingCapabilityStatement requirements

* implementation.description = "Assistance Requirements and Summary"
* implementation.url = "https://fhir.api.digital.health.nz/R4"

* rest.mode = #server
* rest.security.cors = true
* rest.security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#OAuth
* rest.security.extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.extension.extension[0].url = "token"
* rest.security.extension.extension[=].valueUri = "https://auth.integration.covid19.health.nz/oauth2/token"
* rest.security.extension.extension[+].url = "authorize"
* rest.security.extension.extension[=].valueUri = "https://auth.integration.covid19.health.nz/oauth2/authorize"

* rest.resource[+].type = #Condition
* rest.resource[=].profile = Canonical(AssistanceNeedsProfile|0.0.1)
* rest.resource[=] insert ResourceDocumentation([[This server profiles FHIR Condition to support NZ Disabled Patient Assistance Requirements]])

* rest.resource[=] insert QuerySearchInteraction

* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who has the assistance need?"

* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Condition-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search by condition category"

* rest.resource[=].searchParam[+].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "Search by condition code"
