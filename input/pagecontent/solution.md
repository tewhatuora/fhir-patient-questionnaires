Support for capturing and retrieving disability assistance needs.

### Solution Overview

[IS-2252: PPNHI Questionnaire](https://mohits.atlassian.net/browse/IS-2252)

The approach is to use the note attribute of [Condition](https://hl7.org/fhir/R4B/condition.html) to capture the assistance required. In future, this could be expanded to include one or more disability conditions.

Searching for existing assistance needs, capturing needs or updated existing needs will be supported through multiple operations on a single API end-point.

Se thin-dereferenced OpenAPI Specification [DisabilityAssistanceCapabilityStatement.openapi.yaml](/DisabilityAssistanceCapabilityStatement.openapi.yaml)
