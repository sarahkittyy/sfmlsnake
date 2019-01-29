#include <SFML/Graphics.hpp>

#include "Map.h"

int main()
{
	//Base Initialization
	sf::RenderWindow window(sf::VideoMode(600,600), "Snake!");
	window.setFramerateLimit(60);
	
	Map map = Map();
	
	while(window.isOpen())
	{
		//Poll events.
		sf::Event event;
		while(window.pollEvent(event))
		{
			switch(event.type)
			{
			default:
				break;
			case sf::Event::Closed:
				window.close();
				break;
			}
		}
		
		//Draw.
		window.clear(sf::Color(100,100,255));
		
		window.draw(map);
		
		window.display();
	}
}