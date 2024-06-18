Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: AssistanceNeedsQuestionnaire
InstanceOf: Questionnaire
Description: "Assistance Requirements selection from terminology server"
Usage: #definition

* identifier[0].use = #official
* identifier[=].value = "assistance-needs-questionnaire"
* identifier[=].period.start = "2023-07-19"
* version = "0.2.2"
* name = "AssistanceNeedsQuestionnaire"
* title = "Assistance Needs Questionnaire"
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

// Hidden fields to set hard-coded Category and SNOMED Code for "Level of dependence", "Assisted"
* item[=].item[0].linkId = "category"
* item[=].item[=].type = #choice
* item[=].item[=].initial[0].valueCoding.code = #717831006
* item[=].item[=].answerOption[0].valueCoding.code = #717831006
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension[0].valueBoolean = true

* item[=].item[+].linkId = "code"
* item[=].item[=].type = #choice
* item[=].item[=].initial[0].valueCoding.code = #371152001
* item[=].item[=].answerOption[0].valueCoding.code = #371152001
* item[=].item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].extension[0].valueBoolean = true

// * item[=].item[+].linkId = "needs_assistance"
// * item[=].item[=].type = #open-choice
// * item[=].item[=].repeats = true
// * item[=].item[=].text = "What type of assistance to you require?"
// * item[=].item[=].answerValueSet = Canonical(AssistanceNeedsValueSet)
// * item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
// * item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
// * item[=].item[=].extension.valueCodeableConcept.text = "Drop down"

* item[=].item[+].linkId = "needs_assistance"
* item[=].item[=].type = #choice
* item[=].item[=].text = "What type of assistance to you require?"
* item[=].item[=].answerOption[0].valueCoding.code = #171671000210109
* item[=].item[=].answerOption[=].valueCoding.display = "A New Zealand Sign Language interpreter"
* item[=].item[=].answerOption[+].valueCoding.code = #133920001
* item[=].item[=].answerOption[=].valueCoding.display = "Support to make decisions"
* item[=].item[=].answerOption[+].valueCoding.code = #amr
* item[=].item[=].answerOption[=].valueCoding.display = "Assistance to move around"
* item[=].item[=].answerOption[+].valueCoding.code = #lat
* item[=].item[=].answerOption[=].valueCoding.display = "A longer appointment time"
* item[=].item[=].answerOption[+].valueCoding.code = #qse
* item[=].item[=].answerOption[=].valueCoding.display = "A quiet or low sensory environment"
* item[=].item[=].answerOption[+].valueCoding.code = #msm
* item[=].item[=].answerOption[=].valueCoding.display = "More space to move around"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
