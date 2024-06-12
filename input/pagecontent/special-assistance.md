This is all that is required for the POC. This version will not progress past Testing.

### User Journey

<div width="70%">
<!-- Generated from `input/images-source/user-journey.plantuml` -->
{% include user-journey.svg %}
</div>

### User Story

> FFC-96.

As a consumer with disabilities, I want to be able my care providers to know my preferences when they are dealing with me/requiring me to come to an appointment.

### Description

This is a sample set of questions from Book My Vaccine.

### Requirements

Q1 is implied, see [Disability Assistance Questionnaire](/Questionnaire-DisabilityAssistanceQuestionnaire.html) for more details.

Questions | Field Type | Visible | Responses
----------|------------|---------|----------
Is help needed for the appointment because of a disability or impairment? | Boolean | Conditional Display When Q1=Individual | - Yes<br/> - No
What help is needed?    We may need to reschedule appointments to meet these requirements. | Multi Select Choice | Conditional Display When Q1=Individual and Q2=Yes | - An NZSL interpreter<br/> - Support to make decisions<br/> - Assistance to move around<br/> - A longer appointment time<br/> - A quiet or low sensory environment<br/> - More space to move around

### Realisation

- [Questionnaire Disability Assistance](Questionnaire-DisabilityAssistanceQuestionnaire.html)
- [API for Disability Assisance](CapabilityStatement-DisabilityAssistanceCapabilityStatement.html)
