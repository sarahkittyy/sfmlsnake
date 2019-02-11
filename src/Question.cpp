#include "Question.h"

Question::Question(std::string q, std::array<std::string, 4> ans, unsigned c) {
	question = q;
	answers  = ans;
	correct  = c;
}