#include "Head.h"

Head::Head(Map* map)
{
	mMap = map;
	reset();
}

void Head::reset()
{
	mDir = UP;
	mPos = {10,10};
	mFood = 0;
	
	mClock.restart();
	
	mMap->clearTiles();
	
	mTails.clear();
}

void Head::update()
{
	updateDir();
	
	if(mClock.getElapsedTime() < mUpdateInterval)
		return;
		
	mClock.restart();
	
	mMap->clearTiles();
	
	addTail();
	
	move();
	
	if(testMovement())
	{
		return;
	}
	
	checkFood();
	
	updateTails();
	
	draw();
}

void Head::addTail()
{
	mTails.push_back(Tail(mPos, mFood+1));
}

void Head::updateDir()
{
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
	if(mPos.x >= Map::MAP_SIZE.x
		|| mPos.x < 0
		|| mPos.y < 0
		|| mPos.y >= Map::MAP_SIZE.y)
	{
		reset();
		return true;
	}
	return false;
}

void Head::checkFood()
{
	if(mMap->isFood(mPos))
	{
		mFood++;
		mMap->collectFood();
	}
}

void Head::updateTails()
{
	for(auto i = mTails.begin(); i != mTails.end(); )
	{
		i->update();
		if(i->dead())
		{
			mTails.erase(i);
		}
		else
		{
			++i;
		}
	}
}

void Head::draw()
{
	mMap->setTile(mPos, HEADCOLOR);
	for(auto &i : mTails)
	{
		mMap->setTile(i.pos, TAILCOLOR);
	}
}