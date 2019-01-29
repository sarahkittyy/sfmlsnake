#pragma once

#include <SFML/Graphics.hpp>
#include <unordered_map>

#include "Map.h"
#include "Tail.h"

class Head
{
public:
	//Default constructor.
	//Takes a pointer to the map for drawing itself.
	Head(Map* map);
	
	//Updates the head. Call once per frame.
	void update();
private:
	//Internal pointer to the map for drawing.
	Map* mMap;
	
	//The position of the head.
	sf::Vector2i mPos;
	//The amount of food.
	int mFood;
	
	//The internal update clock.
	sf::Clock mClock;
	sf::Time mUpdateInterval = sf::milliseconds(75);
	
	//The vector of tail objects.
	std::vector<Tail> mTails;
	
	//The direction the snake is going in.
	enum Dir
	{
		UP,
		DOWN,
		LEFT,
		RIGHT	
	} mDir;
	
	//Resets the snake to the start of the game.
	void reset();
	
	//Draws the snake & all tail objects to *mMap.
	void draw();
	
	//Adds a tail at the current position.
	void addTail();
	
	//Updates the direction the snake is going in based on keyboard input.
	void updateDir();
	
	//Moves the snake in the current direction.
	void move();
	
	//Tests that the movement is not out of bounds.
	bool testMovement();
	
	//Checks if currently on food.
	void checkFood();
	
	//Updates all tail objects.
	void updateTails();
	
	//The head & tail color of the snake.
	const sf::Color HEADCOLOR = sf::Color::Blue;
	const sf::Color TAILCOLOR = sf::Color::Green;
};