#include "Map.h"

//STATIC DECL//

const sf::Vector2i Map::MAP_SIZE = {30,30};

///////////////

Map::Map()
{
	mQuadVertices.setPrimitiveType(sf::Quads);
	mGridVertices.setPrimitiveType(sf::Lines);
	
	//Init the tile vector.
	mTiles.resize(MAP_SIZE.x * MAP_SIZE.y);
	for(auto &i : mTiles)
	{
		i = sf::Color::White;
	}
	
	//Init the vertices.
	initVertices();
}

void Map::draw(sf::RenderTarget& target, sf::RenderStates states) const
{
	states.transform.scale({20,20});
	target.draw(mQuadVertices, states);
	target.draw(mGridVertices, states);
}

void Map::initVertices()
{
	initGrid();
	initQuads();
}

void Map::initGrid()
{
	mGridVertices.clear();
	sf::Color gridLineColor = sf::Color::Black;
	//Iterate through all vertical lines.
	for(int x = 0; x < MAP_SIZE.x; ++x)
	{
		//Append the top & bottom vertices.
		for(int y = 0; y <= MAP_SIZE.y; y += MAP_SIZE.y)
		{
			mGridVertices.append(sf::Vertex(sf::Vector2f(x, y), gridLineColor));
		}
	}
	//Iterate through all horizontal lines.
	for(int y = 0; y < MAP_SIZE.y; ++y)
	{
		//Append the left & right vertices.
		for(int x = 0; x <= MAP_SIZE.x; x += MAP_SIZE.x)
		{
			mGridVertices.append(sf::Vertex(sf::Vector2f(x, y), gridLineColor));
		}
	}
}

void Map::initQuads()
{
	mQuadVertices.clear();
	for(unsigned i = 0; i < mTiles.size(); ++i)
	{
		sf::Color currentColor = mTiles[i];
		int xpos = i % MAP_SIZE.x;
		int ypos = i / MAP_SIZE.x;
		
		
		mQuadVertices.append(sf::Vertex(sf::Vector2f(xpos, ypos), currentColor));
		mQuadVertices.append(sf::Vertex(sf::Vector2f(xpos + 1, ypos), currentColor));
		mQuadVertices.append(sf::Vertex(sf::Vector2f(xpos + 1, ypos + 1), currentColor));
		mQuadVertices.append(sf::Vertex(sf::Vector2f(xpos, ypos + 1), currentColor));
	}
}

void Map::clearTiles()
{
	for(auto &i : mTiles)
	{
		i = sf::Color::White;
	}
	initQuads();
}

void Map::setTile(sf::Vector2i pos, sf::Color col)
{
	mTiles[pos.x + pos.y * MAP_SIZE.x] = col;
	initQuads();
}

bool Map::isFood(sf::Vector2i pos)
{
	return true;
}