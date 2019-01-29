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
	target.draw(mGridVertices, states);
	target.draw(mQuadVertices, states);
}

void Map::initVertices()
{
	initGrid();
	initQuads();
}

void Map::initGrid()
{
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
	
}