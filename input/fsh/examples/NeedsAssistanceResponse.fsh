Instance: NeedsAssistanceResponse
InstanceOf: QuestionnaireResponse
Description: "Example response for NZ Sign Language Assistance"
Usage: #example

* status = #completed
* questionnaire = Canonical(AssistanceNeedsQuestionnaire)
* authored = "2024-06-17T12:00:00Z"
* item[0].linkId = "disclaimer"
* item[=].text = "Please confirm that this assistance preference is for an individual in need."
* item[=].answer[0].valueBoolean = true

* item[+].linkId = "needs"
* item[=].text = "Assistance"

* item[=].item[0].linkId = "category"
* item[=].item[=].answer[0].valueCoding.code = #717831006

* item[=].item[+].linkId = "code"
* item[=].item[=].answer[0].valueCoding.code = #371152001

* item[=].item[+].linkId = "needs_assistance"
* item[=].item[=].text = "What type of assistance to you require?"
* item[=].item[=].answer[0].valueCoding.code = #171671000210109
* item[=].item[=].answer[0].valueCoding.display = "A New Zealand Sign Language interpreter"