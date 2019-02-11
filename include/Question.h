#include <array>
#include <unordered_map>
#include <vector>

class Question {
public:
	std::string question;
	std::array<std::string, 4> answers;
	unsigned correct;

	Question(std::string q, std::array<std::string, 4> ans, unsigned c);
};