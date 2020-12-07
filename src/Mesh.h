//
// Created by Dallin Hagman on 11/17/20.
//
#pragma once

#include <vector>
#include <glm/glm.hpp>

struct Face {
    int i0, i1, i2;
};

class Mesh {
public:
    Mesh() = default;

    void GenOctoSphere(int subdivisions);

    const std::vector<glm::vec3>& GetVertices() { return m_Vertices; }
    const std::vector<Face>& GetFaces() { return m_Faces; }

private:
    std::vector<glm::vec3> m_Vertices;
    std::vector<Face> m_Faces;

};
