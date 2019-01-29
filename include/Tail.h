#pragma once

#include <SFML/Graphics.hpp>

class Tail
{
public:
	Tail();
	Tail(sf::Vector2i ipos = {0,0}, int ilifespan = 0);

	sf::Vector2i pos;
	int lifespan;
	
	bool dead();
	
	void update();
};