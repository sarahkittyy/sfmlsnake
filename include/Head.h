#pragma once

#include <SFML/Graphics.hpp>
#include <unordered_map>

#include "Map.h"
#include "Tail.h"

class Head
{
public:
	Head(Map* map);
	
	void update();
	
private:
	Map* mMap;
	
	sf::Vector2i mPos;
	int mFood;
	
	sf::Clock mClock;
	sf::Time mUpdateInterval = sf::milliseconds(75);
	
	std::vector<Tail> mTails;
	
	enum Dir
	{
		UP,
		DOWN,
		LEFT,
		RIGHT	
	} mDir;
	
	void reset();
	
	void draw();
	
	void addTail();
	
	void updateDir();
	
	void move();
	
	bool testMovement();
	
	void checkFood();
	
	void updateTails();
	
	const sf::Color HEADCOLOR = sf::Color::Blue;
	const sf::Color TAILCOLOR = sf::Color::Green;
};