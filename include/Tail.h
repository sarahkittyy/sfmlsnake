#pragma once

#include <SFML/Graphics.hpp>

class Tail
{
public:
	//Default Constructor.
	Tail();
	
	//Construct a tail based on a position & lifespan.
	Tail(sf::Vector2i ipos = {0,0}, int ilifespan = 0);

	//The position of the tail.
	sf::Vector2i pos;
	//The lifespan of the tail.
	int lifespan;
	
	//True if the lifespan is 0.
	bool dead();
	
	//Decrement the lifespan.
	void update();
};