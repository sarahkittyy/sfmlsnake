#include "Tail.h"

bool Tail::dead()
{
	return lifespan <= 0;
}

void Tail::update()
{
	lifespan--;
}

Tail::Tail()
{
	
}

Tail::Tail(sf::Vector2i ipos, int ilifespan)
{
	pos = ipos;
	lifespan = ilifespan;
}