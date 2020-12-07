//
// Created by Dallin Hagman on 11/17/20.
//

#include "Mesh.h"

#include <cmath>
#include <algorithm>

const glm::vec3 baseVertices[6] = {
        {0.0f, 0.0f, 1.0f}, // UP
        {-1.0f, 0.0f, 0.0f}, // LEFT
        {0.0f, 1.0f, 0.0f}, // BACK
        {1.0f, 0.0f, 0.0f}, // RIGHT
        {0.0f, -1.0f, 0.0f}, // FORWARD
        {0.0f, 0.0f, -1.0f} // DOWN
};

const Face baseFaces[8] = {
        {0, 1, 2},
        {0, 2, 3},
        {0, 3, 4},
        {0, 4, 1},
        {5, 3, 2},
        {5, 2, 1},
        {5, 1, 4},
        {5, 4, 3}
};

void Mesh::GenOctoSphere(int subdivisions) {

    std::vector<glm::vec3> vertices;
    std::vector<Face> faces;

    for(auto vertex : baseVertices) {
        vertices.push_back(vertex);
    }

    for(auto face : baseFaces) {
        faces.push_back(face);
    }

    for (auto face : faces) {

    }
}