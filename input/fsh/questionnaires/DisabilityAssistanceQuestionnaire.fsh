Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: DisabilityAssistanceQuestionnaire
InstanceOf: Questionnaire
Description: "Disability Assistance Requirements"
Usage: #definition
* url = "https://build.fhir.org/ig/tewhatuora/cinc-fhir-ig/Questionnaire/DisabilityAssistanceQuestionnaire"
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

* item[0].linkId = "p01"
* item[=].prefix = "Introduction:"
* item[=].type = #boolean
* item[=].text = "Please confirm you are advise care providers of your assistance preferences for yourself or on behalf of an individual in need."
* item[=].required = true

* item[+].linkId = "p02"
* item[=].prefix = "Individual Need:"
* item[=].type = #group
* item[=].text = "Assistance"
* item[=].enableWhen.question = "p01"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

* item[=].item[0].linkId = "p02-q01"
* item[=].item[=].type = #boolean
* item[=].item[=].text = "Is help needed for the appointment because of a disability or impairment?"
* item[=].item[=].required = true

* item[=].item[+].linkId = "p02-q02"
* item[=].item[=].enableWhen.question = "p02-q01"
* item[=].item[=].enableWhen.operator = #=
* item[=].item[=].enableWhen.answerBoolean = true
* item[=].item[=].type = #choice
* item[=].item[=].text = "What type of assistance to you require?"
* item[=].item[=].answerOption[0].valueCoding.display = "A New Zealand Sign Language interpreter"
* item[=].item[=].answerOption[+].valueCoding.display = "Support to make decisions"
* item[=].item[=].answerOption[+].valueCoding.display = "Assistance to move around"
* item[=].item[=].answerOption[+].valueCoding.display = "A longer appointment time"
* item[=].item[=].answerOption[+].valueCoding.display = "A quiet or low sensory environment"
* item[=].item[=].answerOption[+].valueCoding.display = "More space to move around"
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item[=].extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item[=].extension.valueCodeableConcept.text = "Drop down"
