#include "Head.h"

Head::Head(Map* map)
{
	//Set the map.
	mMap = map;
	
	//Set the snake to default values.
	reset();
}

void Head::reset()
{
	//Initialize default values.
	mDir = UP;
	mPos = {10,10};
	mFood = 0;
	
	mClock.restart();
	
	mMap->clearTiles();
	
	mTails.clear();
}

void Head::update()
{
	//Update the direction the snake is going in.
	updateDir();
	
	//If it's not time to update, return.
	if(mClock.getElapsedTime() < mUpdateInterval)
		return;
		
	mClock.restart();
	//..It's time to update.d
	
	//Clear the map (except food)
	mMap->clearTiles();
	
	//Add a tail at the current position.
	addTail();
	
	//Move the snake.
	move();
	
	//If the movement isn't valid, return.
	if(testMovement())
	{
		return;
	}
	
	//Check if we're on food.
	checkFood();
	
	//Update the tail objects.
	updateTails();
	
	//Draw the snake.
	draw();
}

void Head::addTail()
{
	//Push the tail back with the current food count(+1)
	mTails.push_back(Tail(mPos, mFood+1));
}

void Head::updateDir()
{
	//Set the direction based on the current keyboard input.
	if(sf::Keyboard::isKeyPressed(sf::Keyboard::W))
	{
		mDir = UP;
	}
	else if(sf::Keyboard::isKeyPressed(sf::Keyboard::A))
	{
		mDir = LEFT;
	}
	else if(sf::Keyboard::isKeyPressed(sf::Keyboard::S))
	{
		mDir = DOWN;
	}
	else if(sf::Keyboard::isKeyPressed(sf::Keyboard::D))
	{
		mDir = RIGHT;
	}
}

void Head::move()
{
	//Move based on the current direction.
	switch(mDir)
	{
	case(UP):
		mPos.y -= 1;
		break;
	case(DOWN):
		mPos.y += 1;
		break;
	case(LEFT):
		mPos.x -= 1;
		break;
	case(RIGHT):
		mPos.x += 1;
		break;
	}
}

bool Head::testMovement()
{
	//If the player is out of bounds, reset & return.
	if(mPos.x >= Map::MAP_SIZE.x
		|| mPos.x < 0
		|| mPos.y < 0
		|| mPos.y >= Map::MAP_SIZE.y)
	{
		reset();
		return true;
	}
	
	//Iterate through all tails.
	for(auto &i : mTails)
	{
		//If the position of the head is the same as one of the tails....
		if(i.pos == mPos)
		{
			//Reset.
			reset();
			return true;
		}	
	}
	
	return false;
}

void Head::checkFood()
{
	//If currently on food, collect it.
	if(mMap->isFood(mPos))
	{
		mFood++;
		mMap->collectFood();
	}
}

void Head::updateTails()
{
	//For all tails...
	for(auto i = mTails.begin(); i != mTails.end(); )
	{
		//...Update the tail...
		i->update();
		
		//If it's dead, erase it.
		if(i->dead())
		{
			mTails.erase(i);
		}
		else
		{
			//Otherwise, next tail.
			++i;
		}
	}
}

void Head::draw()
{
	//Draw the head.
	mMap->setTile(mPos, HEADCOLOR);
	
	//Draw each tail.
	for(auto &i : mTails)
	{
		mMap->setTile(i.pos, TAILCOLOR);
	}
}