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
	//The size of the map.
	static const sf::Vector2i MAP_SIZE;

	//Default constructor.
	Map();
		
	//SFML's draw override.
	virtual void draw(sf::RenderTarget& target, sf::RenderStates states) const;
	
	//Resets all tiles on the screen to white, except the food.
	void clearTiles();
	
	//Sets the tile at the specified position to the specified color.
	void setTile(sf::Vector2i pos, sf::Color col);
	
	//Checks if the specified tile is food.
	bool isFood(sf::Vector2i pos);
	
	//Resets the position of the food.
	void collectFood();
private:
	//The two vertex arrays for rendering.
	sf::VertexArray mQuadVertices;
	sf::VertexArray mGridVertices;
	
	//The psuedo-2D vector of tiles drawn to the screen.
	std::vector<sf::Color> mTiles;
	
	//The position of the food.
	sf::Vector2i mFoodPos;
	//The color of the food.
	const sf::Color FOODCOLOR = sf::Color::Magenta;
	
	//Initializes all vertices.
	void initVertices();
	
	//Initializes the grid lines.
	void initGrid();
	//Initializes/updates all quads.
	void initQuads();
};