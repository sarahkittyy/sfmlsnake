#include "Map.h"

// STATIC DECL//

const sf::Vector2i Map::MAP_SIZE = {30, 30};

///////////////

Map::Map() {
  mQuadVertices.setPrimitiveType(sf::Quads);
  mGridVertices.setPrimitiveType(sf::Lines);

  // Init the tile vector.
  mTiles.resize(MAP_SIZE.x * MAP_SIZE.y);
  for (auto &i : mTiles) {
    i = sf::Color::White;
  }

  // Init the vertices.
  initVertices();

  mFoodPos = {0, 0};

  srand(time(NULL));

  // Spawn new food.
  collectFood();
}

void Map::draw(sf::RenderTarget &target, sf::RenderStates states) const {
  states.transform.scale({20, 20});
  target.draw(mQuadVertices, states);
  target.draw(mGridVertices, states);
}

void Map::initVertices() {
  // Init the grid & the quads.
  initGrid();
  initQuads();
}

void Map::initGrid() {
  // Clear the grid vertices.
  mGridVertices.clear();
  // Set the grid line color.
  sf::Color gridLineColor = sf::Color::Black;
  // Iterate through all vertical lines.
  for (int x = 0; x < MAP_SIZE.x; ++x) {
    // Append the top & bottom vertices.
    for (int y = 0; y <= MAP_SIZE.y; y += MAP_SIZE.y) {
      mGridVertices.append(sf::Vertex(sf::Vector2f(x, y), gridLineColor));
    }
  }
  // Iterate through all horizontal lines.
  for (int y = 0; y < MAP_SIZE.y; ++y) {
    // Append the left & right vertices.
    for (int x = 0; x <= MAP_SIZE.x; x += MAP_SIZE.x) {
      mGridVertices.append(sf::Vertex(sf::Vector2f(x, y), gridLineColor));
    }
  }
}

void Map::initQuads() {
  // Clear the quads.
  mQuadVertices.clear();

  // For every tile...
  for (unsigned i = 0; i < mTiles.size(); ++i) {
    // Get the current color.
    sf::Color currentColor = mTiles[i];

    // Get the X & Y position of the tile.
    int xpos = i % MAP_SIZE.x;
    int ypos = i / MAP_SIZE.x;

    // Append the 4 quad vertices.
    mQuadVertices.append(sf::Vertex(sf::Vector2f(xpos, ypos), currentColor));
    mQuadVertices.append(
        sf::Vertex(sf::Vector2f(xpos + 1, ypos), currentColor));
    mQuadVertices.append(
        sf::Vertex(sf::Vector2f(xpos + 1, ypos + 1), currentColor));
    mQuadVertices.append(
        sf::Vertex(sf::Vector2f(xpos, ypos + 1), currentColor));
  }
}

void Map::clearTiles() {
  // Set every tile to white.
  for (auto &i : mTiles) {
    i = sf::Color::White;
  }
  // Update the food tile.
  setTile(mFoodPos, FOODCOLOR);

  // Update the graphics.
  initQuads();
}

void Map::setTile(sf::Vector2i pos, sf::Color col) {
  // Set the tile at the specified position to col, and update.
  mTiles[pos.x + pos.y * MAP_SIZE.x] = col;
  initQuads();
}

bool Map::isFood(sf::Vector2i pos) {
  // Return if the given position is food.
  return pos == mFoodPos;
}

void Map::collectFood() {
  // Save the last position of the food.
  sf::Vector2i lastFood = mFoodPos;

  // Update while the food is not in the same position as last time.
  while (lastFood == mFoodPos) {
    mFoodPos.x = rand() % MAP_SIZE.x;
    mFoodPos.y = rand() % MAP_SIZE.y;
  }

  // Set the food tile & clear the last tile.
  setTile(lastFood, sf::Color::White);
  setTile(mFoodPos, FOODCOLOR);
}