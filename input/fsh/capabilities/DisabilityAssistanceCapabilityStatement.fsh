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
* implementation.description = "Disability Assistance Requirements and Summary"
* implementation.url = "https://fhir.api.digital.health.nz/R4"
* fhirVersion = #4.0.1
* format = #json
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
* rest.resource[=].profile = Canonical(PatientConditionSummary|0.0.1)
* rest.resource[=] insert QuerySearchInteraction
* rest.resource[=] insert ResourceDocumentation([[This server profiles FHIR Condition to support NZ Disabled Patient Assistance Requirements]])

* rest.resource[=].searchParam[0].name = "identifier"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Condition-masterIdentifier"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "A unique identifier of the condition record"

* rest.resource[=].searchParam[0].name = "_profile"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Resource-profile"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "Filter Condition instances tagged with the **Disabled Patient Summary** profile eg. ?_profile=https://build.fhir.org/ig/tewhatuora/fhir-patient-questionnaires.fhir.ig/StructureDefinition/patient-condition-summary"

* rest.resource[=].searchParam[+].name = "category"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Condition-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[=].documentation = "	The category of the condition" 

* rest.resource[=].searchParam[+].name = "recorded-date"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Condition-recordedDate"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[=].documentation = "Date Condition was first recorded"

* rest.resource[=].searchParam[+].name = "patient"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "NHI of the patient who has disbilities requiring assistance"

* rest.resource[=].searchParam[+].name = "subject"
* rest.resource[=].searchParam[=].definition = "https://hl7.org/fhir/searchparameter-registry.html#Condition-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[=].documentation = "NHI of the patient who has disbilities requiring assistance"
