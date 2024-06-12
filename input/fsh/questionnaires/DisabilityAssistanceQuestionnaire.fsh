Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: DisabilityAssistanceQuestionnaire
InstanceOf: Questionnaire
Description: "Disability Assistance Requirements"
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/fhir-patient-questionnaires/Questionnaire/DisabilityAssistanceQuestionnaire"
* identifier[0].use = #official
* identifier[=].value = "DisabilityAssistanceQuestionnaire"
* identifier[=].period.start = "2023-07-19"
* version = "0.2.2"
* name = "DisabilityAssistanceQuestionnaire"
* title = "Questionnaire Disability Assistance"
* status = #draft
* subjectType = #Patient
* publisher = "Te Whatu Ora"
* contact.name = "Te Whatu Ora"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.tewhatuora.govt.nz/"

* item[0].linkId = "disclaimer"
* item[=].prefix = "Introduction:"
* item[=].type = #boolean
* item[=].text = "Please confirm that this assistance preference is for an individual in need."
* item[=].required = true

* item[+].linkId = "needs"
* item[=].prefix = "Individual Need:"
* item[=].type = #group
* item[=].text = "Assistance"
* item[=].enableWhen.question = "disclaimer"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[=].item[0].linkId = "needs-condition"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Is help needed for the appointment because of a disability or impairment?"
* item[=].item[=].required = true

* item[=].item[+].linkId = "needs-assistance"
* item[=].item[=].enableWhen.question = "needs-condition"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].type = #choice
* item[=].item[=].text = "What type of assistance to you require?"
* item[=].item[=].answerValueSet = Canonical(AssistanceNeedsValueSet)
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
