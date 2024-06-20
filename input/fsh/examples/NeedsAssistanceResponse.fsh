Instance: NeedsAssistanceResponse
InstanceOf: QuestionnaireResponse
Description: "Example response for NZ Sign Language Assistance"
Usage: #example

* status = #completed
* questionnaire = Canonical(AssistanceNeedsQuestionnaire)
* authored = "2024-06-17T12:00:00Z"

* subject.identifier.system = "https://standards.digital.health.nz/ns/nhi-id"
* subject.identifier.use = #official
* subject.identifier.value = "ZAA1250"
* subject.display = "Jonathan WCDHB Pace"
* subject.type = "Patient"

* item[0].linkId = "disclaimer"
* item[=].text = "Please confirm that this assistance preference is for an individual in need."
* item[=].answer[0].valueBoolean = true

* item[+].linkId = "needs"
* item[=].text = "Assistance"

* item[=].item[0].linkId = "category"
* item[=].item[=].answer[0].valueCoding.code = #717831006

* item[=].item[+].linkId = "code"
* item[=].item[=].answer[0].valueCoding.code = #371152001

* item[=].item[+].linkId = "needs-assistance"
* item[=].item[=].text = "What type of assistance to you require?"
* item[=].item[=].answer[0].valueCoding = #171671000210109 "A New Zealand Sign Language interpreter"
* item[=].item[=].answer[+].valueCoding = #133920001 "Support to make decisions"

* item[=].item[+].linkId = "condition-clinical"
* item[=].item[=].answer.valueCoding = $condition-clinical#active
* item[=].item[+].linkId = "condition-category"
* item[=].item[=].answer.valueCoding = $sct#717831006 "Level of dependence"
* item[=].item[+].linkId = "condition-code"
* item[=].item[=].answer.valueCoding = $sct#371152001 "Assisted"
