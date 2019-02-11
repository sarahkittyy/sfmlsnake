#include "QuestionManager.h"

QuestionManager::QuestionManager() {
	std::srand(std::time(0));
}

void QuestionManager::askQuestion() {
	asking			= true;
	currentQuestion = std::rand() % questions.size();
}

bool QuestionManager::doneAskingQuestion() {
	return !asking;
}

bool QuestionManager::lastQuestionCorrect() {
	return lqc;
}

void QuestionManager::drawGui() {
	if (asking) {
		ImGui::Begin("Question", nullptr, ImGuiWindowFlags_NoSavedSettings);
		Question q = questions[currentQuestion];
		ImGui::Text("%s", q.question.c_str());

		std::string correct_ans = q.answers.at(q.correct);

		for (auto &i : q.answers) {
			if (ImGui::Button(i.c_str())) {
				lqc	= (correct_ans == i);
				asking = false;
				break;
			}
		}
		ImGui::End();
	}
}