Support for capturing and retrieving disability assistance needs.

### Solution Overview

Salesforce, via the _magic link_ triggers the Questionnaire in the form tool, the resulting QuestionnaireResponse is sent to the FHIR Server for processing.

<div width="70%">
<!-- Generated from `input/images-source/1.questionnaire-extract.plantuml` -->
{% include 1.questionnaire-extract.svg %}
</div>

The resulting resources can be consumed via the Rest API to retrieve the patients assistance needs.

`curl -s http://localhost:8080/fhir/Condition?patient={{ nhsid }}}}&category=717831006&code=371152001`

<div width="70%">
<!-- Generated from `input/images-source/2.assistance-retrieve.plantuml` -->
{% include 2.assistance-retrieve.svg %}
</div>

### Assistance Needs Retrieval API

The auto-generated OAS file has been left unaltered, however, this file is not usable in its default output, so the following have been provided, for the following task

[IS-2255: Create PPNHI postman collection](https://mohits.atlassian.net/browse/IS-2255)

- Thin-dereferenced OpenAPI Specification [AssistanceNeedsCapabilityStatement.openapi.yaml](/ig/tewhatuora/fhir-patient-questionnaires/DisabilityAssistanceCapabilityStatement.openapi.yaml)
- Draft Postman Collection [Assistance.postman_collection](/ig/tewhatuora/fhir-patient-questionnaires/Assistance.postman_collection)
- Sandbox Seeding Collection [Assistance-Seeding.postman_collection](/ig/tewhatuora/fhir-patient-questionnaires/Assistance-Seeding.postman_collection)
