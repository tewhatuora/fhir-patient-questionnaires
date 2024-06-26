Alias: $questionnaire-item-control = http://hl7.org/fhir/questionnaire-item-control

Instance: AssistanceNeedsQuestionnaire
InstanceOf: Questionnaire
Description: "Assistance Requirements selection from terminology server"
Usage: #definition

* identifier[0].use = #official
* identifier[=].value = "assistance-needs-questionnaire"
* identifier[=].period.start = "2023-07-19"
* version = "0.2.3"
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

// Proceed to capture assistance needs
* item[+].linkId = "needs"
* item[=].prefix = "Individual Need:"
* item[=].type = #group
* item[=].text = "Assistance"
* item[=].enableWhen.question = "disclaimer"
* item[=].enableWhen.operator = #=
* item[=].enableWhen.answerBoolean = true

// Hidden attributes for resource extraction process
* item[=].enableBehavior = #all
* item[=].extension[0].valueCode = #Condition
* item[=].extension[=].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-itemExtractionContext"
* item[=].extension[+].extension[0].valueExpression.expression = "QuestionnaireResponse.subject"
* item[=].extension[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].extension[=].url = "source"
* item[=].extension[=].extension[+].valueExpression.expression = "Condition.subject"
* item[=].extension[=].extension[=].valueExpression.language = #text/fhirpath
* item[=].extension[=].extension[=].url = "destination"
* item[=].extension[=].url = "http://hl7.org.nz/fhir/StructureDefinition/sdc-questionnaire-extractMetadata"

* item[=].item.extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl"
* item[=].item.extension.valueCodeableConcept = $questionnaire-item-control#drop-down "Drop down"
* item[=].item.extension.valueCodeableConcept.text = "Drop down"
* item[=].item.linkId = "needs-assistance"
* item[=].item.text = "What type of assistance do you require?"
* item[=].item.type = #open-choice
* item[=].item.repeats = true
* item[=].item.answerOption[0].valueCoding = #171671000210109 "A New Zealand Sign Language interpreter"
* item[=].item.answerOption[+].valueCoding = #133920001 "Support to make decisions"
* item[=].item.answerOption[+].valueCoding = #amr "Assistance to move around"
* item[=].item.answerOption[+].valueCoding = #lat "A longer appointment time"
* item[=].item.answerOption[+].valueCoding = #qse "A quiet or low sensory environment"
* item[=].item.answerOption[+].valueCoding = #msm "More space to move around"
* item[=].item.definition = "http://hl7.org/fhir/StructureDefinition/Condition#Condition.extension[0].valueCodeableConcept.coding"

* item[=].item[+].linkId = "needs-assistance-url"
* item[=].item[=].type = #string
* item[=].item[=].initial.valueString = "https://build.fhir.org/ig/tewhatuora/fhir-patient-questionnaires/StructureDefinition/assistance-needs-ext"
* item[=].item[=].extension.valueBoolean = true
* item[=].item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/Condition#Condition.extension[0].url"

* item[+].linkId = "extract"
* item[=].type = #group
* item[=].extension.valueBoolean = true
* item[=].extension.url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
* item[=].item[0].initial.valueCoding = $condition-clinical#active
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/Condition#Condition.clinicalStatus.coding[]"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "condition-clinical"
* item[=].item[+].initial.valueCoding = $sct#717831006 "Level of dependence"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/Condition#Condition.category[0].coding[]"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "condition-category"
* item[=].item[+].initial.valueCoding = $sct#371152001 "Assisted"
* item[=].item[=].definition = "http://hl7.org/fhir/StructureDefinition/Condition#Condition.code.coding[]"
* item[=].item[=].type = #choice
* item[=].item[=].linkId = "condition-code"