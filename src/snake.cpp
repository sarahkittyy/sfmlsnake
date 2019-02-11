#include <SFML/Graphics.hpp>
#include <imgui-sfml/imgui-SFML.h>
#include <imgui/imgui.h>

#include "Head.h"
#include "Map.h"

int main() {
	// Base Initialization
	sf::RenderWindow window(sf::VideoMode(600, 600), "Snake!");
	window.setFramerateLimit(60);

	Map map = Map();

	QuestionManager qm;

	Head head = Head(&map, &qm);

	ImGui::SFML::Init(window);
	sf::Clock imGuiClock;

	window.resetGLStates();

	while (window.isOpen()) {
		// Poll events.
		sf::Event event;
		while (window.pollEvent(event)) {

			ImGui::SFML::ProcessEvent(event);

			switch (event.type) {
			default:
				break;
			case sf::Event::Closed:
				window.close();
				break;
			}
		}

		// Update.
		head.update();

		ImGui::SFML::Update(window, imGuiClock.restart());

		qm.drawGui();

		// Draw.
		window.clear(sf::Color(100, 100, 255));

		window.draw(map);

		ImGui::SFML::Render(window);

		window.display();
	}
}