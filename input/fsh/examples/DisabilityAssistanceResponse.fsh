Instance: DisabilityAssistanceResponse
InstanceOf: QuestionnaireResponse
Description: "Example response to the Disability Assistance Questionnaire"
Usage: #example

* status = #completed
* questionnaire = Canonical(AssistanceNeedsQuestionnaire)
* subject = Reference(Patient/1198)
* authored = "2024-06-17T12:00:00Z"
* item[0].linkId = "disclaimer"
* item[=].text = "Please confirm that this assistance preference is for an individual in need."
* item[=].answer[0].valueBoolean = true

* item[+].linkId = "needs"
* item[=].text = "Assistance"
* item[=].item[0].linkId = "needs-condition"
* item[=].item[=].text = "Is help needed for the appointment because of a disability or impairment?"
* item[=].item[=].answer[0].valueBoolean = true

// * item[=].item[+].linkId = "needs-assistance"
// * item[=].item[=].text = "What type of assistance do you require?"
// * item[=].item[=].answer[0].valueCoding = "nzsli"