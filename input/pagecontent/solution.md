Support for capturing and retrieving disability assistance needs.

### Solution Overview

Salesforce, via the _magic link_ triggers the Questionnaire in the form tool, the resulting QuestionnaireResponse is sent to the FHIR Server for processing.

<div width="70%">
<!-- Generated from `input/images-source/1.questionnaire-extract.plantuml` -->
{% include 1.questionnaire-extract.svg %}
</div>

> The questionnaire is in _Patient_ context, and neither the Questionnaire nor Questionnaireresponse define Patient as a subject, because the `Form Tool` injects this.

### Response

The resulting resources can be consumed via the Rest API to retrieve the patients assistance needs.

`curl -s ${FHIR_URL}/Condition?subject:identifier=${nhi}&category=717831006&code=371152001`

<div width="70%">
<!-- Generated from `input/images-source/2.assistance-retrieve.plantuml` -->
{% include 2.assistance-retrieve.svg %}
</div>

### Assistance Needs Retrieval API

The auto-generated OAS file has been left unaltered, however, this file is not usable in its default output, so the following have been provided, for the following task

- Thin-dereferenced OpenAPI Specification [AssistanceNeedsCapabilityStatement.openapi.yaml](/ig/tewhatuora/fhir-patient-questionnaires/AssistanceNeedsCapabilityStatement.openapi.yaml)
- Postman Collection [Assistance.postman_collection.json](/ig/tewhatuora/fhir-patient-questionnaires/Assistance.postman_collection.json)

### Abletech GUI Samples

The following example screen shots are examples only.

![Disclaimer](image-20240624-214504.png)
![Multi-choice selection](image-20240624-214627.png)
![Confirmation](image-20240624-214709.png)
