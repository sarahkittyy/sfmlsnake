#include <imgui-sfml/imgui-SFML.h>
#include <imgui/imgui.h>

#include <SFML/Graphics.hpp>

#include "Question.h"

class QuestionManager {
public:
	QuestionManager();

	void askQuestion();

	bool doneAskingQuestion();

	void drawGui();

	bool lastQuestionCorrect();

private:
	const std::vector<Question> questions = {
		Question("What is Generalized Anxiety disorder?",
				 {"Being scared of things",
				  "Persistent and excessive worry about things.",
				  "Fear of others.",
				  "An intense feeling of wanting to leave."},
				 1),
		Question(
			"When is GAD diagnosed?",
			{"When they find it hard to control worry for more than 6 months.",
			 "When your decisions begin to be impacted by it.",
			 "When the therapist deems the diagnosis necessary.",
			 "When the anxiety is irrational."},
			0),
		Question("Which one of these is NOT a symptom?",
				 {"Nervousness, irritability",
				  "Increased heart rate",
				  "Trouble Sleeping",
				  "None of the above"},
				 3),
		Question("Which one of these IS a symptom?",
				 {"The feeling of wanting to be alone",
				  "Slow breathing",
				  "Sense of impending doom",
				  "Hyperactivity"},
				 2),
		Question("What percentage of adults in america does it affect?",
				 {"3.1", "10.2", "1.4", "8.9"},
				 0),
		Question("Which one of these is a valid MEDICAL treatment option?",
				 {"Yoga / Meditation",
				  "Cognitive Behavioral Therapy",
				  "Stress Management",
				  "Drinking dairy."},
				 1),
		Question("Which one of these is a valid NON-MEDICAL treatment option?",
				 {"CBT",
				  "Sleeping",
				  "Reducing Caffeine consumption",
				  "Drinking dairy."},
				 2)};
	int currentQuestion;

	bool asking = false;
	bool lqc	= false;
};