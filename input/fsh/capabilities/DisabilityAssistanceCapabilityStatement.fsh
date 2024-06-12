Instance: DisabilityAssistanceCapabilityStatement
InstanceOf: CapabilityStatement
Usage: #definition

* name = "DisabilityAssistanceCapabilityStatement"
* title = "API for Disability Assisance"
* status = #draft
* date = "2024-05-03"
* jurisdiction = urn:iso:std:iso:3166#NZ "New Zealand"
* publisher = "Health New Zealand / Te Whatu Ora"
* description = "Disability Assistance Requirements and Summary"
* kind = #instance
* fhirVersion = #4.0.1
* format = #json

* implementation.description = "Disability Assistance Requirements and Summary"
* implementation.url = "https://fhir.api.digital.health.nz/R4"

* rest.mode = #server
* rest.security.cors = true
* rest.security.service = http://terminology.hl7.org/CodeSystem/restful-security-service#OAuth
* rest.security.extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/oauth-uris"
* rest.security.extension.extension[0].url = "token"
* rest.security.extension.extension[=].valueUri = "https://auth.integration.covid19.health.nz/oauth2/token"
* rest.security.extension.extension[+].url = "authorize"
* rest.security.extension.extension[=].valueUri = "https://auth.integration.covid19.health.nz/oauth2/authorize"

* rest.interaction.code = #transaction

* rest.resource[+].type = #Condition
* rest.resource[=].profile = Canonical(AssistanceNeedsProfile|0.0.1)
* rest.resource[=] insert ResourceDocumentation([[This server profiles FHIR Condition to support NZ Disabled Patient Assistance Requirements]])

* rest.resource[=] insert QuerySearchInteraction
* rest.resource[=].searchParam[0].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Who has the assistance need?"

* rest.resource[=] insert GenericCRUDInteractions
* rest.resource[=].searchInclude[0] = "*"
