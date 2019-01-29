#pragma once

#include <SFML/Graphics.hpp>

///////////////////////////////////
/*
Map class, contains methods to draw the snake grid to the screen
& to update each tile as necessary with a color.
*/
///////////////////////////////////
class Map : public sf::Drawable
{
public:
	static const sf::Vector2i MAP_SIZE;

	Map();
		
	virtual void draw(sf::RenderTarget& target, sf::RenderStates states) const;
	
	void clearTiles();
	
	void setTile(sf::Vector2i pos, sf::Color col);
	
	bool isFood(sf::Vector2i pos);
private:
	sf::VertexArray mQuadVertices;
	sf::VertexArray mGridVertices;
	
	std::vector<sf::Color> mTiles;
	
	void initVertices();
	
	void initGrid();
	void initQuads();
};