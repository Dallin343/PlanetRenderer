//
// Created by Dallin Hagman on 12/2/20.
//

#include "OctoSphereMesh.h"

//Octahedron Sphere Implementation
const glm::vec3 baseVertices[6] = {
        {0.0f, 1.0f, 0.0f}, // UP
        {-1.0f, 0.0f, 0.0f}, // LEFT
        {0.0f, 0.0f, 1.0f}, // BACK
        {1.0f, 0.0f, 0.0f}, // RIGHT
        {0.0f, 0.0f, -1.0f}, // FORWARD
        {0.0f, -1.0f, 0.0f} // DOWN
};

const VertexPair baseEdges[12] = {
        {0, 1},
        {0, 2},
        {0, 3},
        {0, 4},
        {1,  2},
        {2, 3},
        {3, 4},
        {4, 1},
        {5, 1},
        {5,  2},
        {5, 3},
        {5,  4},
};

const Face baseFaces[8] = {
        {0, 1, 4},
        {1, 2, 5},
        {2, 3, 6},
        {3, 0, 7},
        {8, 9, 4},
        {9, 10, 5},
        {10, 11, 6},
        {11, 8, 7}
};


// Implementation of Spherical-lerp algorithm https://en.wikipedia.org/wiki/Slerp
static glm::vec3 Slerp(glm::vec3 v0, glm::vec3 v1, float t) {
    float omega = glm::acos(glm::dot(v0, v1));
    float sin_omega = glm::sin(omega);
    return (glm::sin((1 - t) * omega) / sin_omega) * v0 + (glm::sin(t * omega) / sin_omega) * v1;
}

void OctoSphereMesh::GenerateMesh(int divisions) {
    m_NumDivisions = std::max(divisions, 0);
    m_NumVerticesPerFace = ((m_NumDivisions + 3) * (m_NumDivisions + 3) - (m_NumDivisions + 3)) / 2;
    int numVertices = m_NumVerticesPerFace * 8 - (m_NumDivisions + 2) * 12 + 6;
    int numTrisInFace = (m_NumDivisions + 1) * (m_NumDivisions + 1);

    vertices = FixedVector<glm::vec3>(numVertices);

    faces = FixedVector<unsigned int>(numTrisInFace * 8);

    vertices.Add(baseVertices, 6);

    Edge edges[12];
    for (int i = 0; i < 12; i++) {
        glm::vec3 start = vertices.items.at(baseEdges[i].V0);
        glm::vec3 end = vertices.items.at(baseEdges[i].V1);

        int* edgeVertexIndices = new int[m_NumDivisions + 2];
        edgeVertexIndices[0] = baseEdges[i].V0;

        for (int division = 0; division < m_NumDivisions; division++) {
            float t = (division + 1.0f) / (m_NumDivisions + 1.0f);
            edgeVertexIndices[division + 1] = vertices.next;
            auto v = Slerp(start, end, t);
            vertices.Add(v);
        }
        edgeVertexIndices[m_NumDivisions + 1] = baseEdges[i].V1;
        edges[i] = {edgeVertexIndices, m_NumDivisions + 2};
    }

    for (int i = 0; i < 8; i++) {
        int faceIndex = i / 3;
        bool reverse = faceIndex >= 4;
        Face face = baseFaces[i];
        CreateFace(edges[face.V0],edges[face.V1],edges[face.V1], reverse);
    }

    m_Vertices = vertices.items;
    m_Faces = faces.items;
}

void OctoSphereMesh::CreateFace(Edge A, Edge B, Edge Bottom, bool reverse) {
    int numPointsPerEdge = A.m_NumIndices;
    auto vertexMap = FixedVector<unsigned int>(m_NumVerticesPerFace);
    vertexMap.Add(A.m_Indices[0]);

    for (int i = 1; i < numPointsPerEdge; i++) {
        vertexMap.Add(A.m_Indices[i]);

        glm::vec3 A_vertex = vertices.items[A.m_Indices[i]];
        glm::vec3 B_vertex = vertices.items[B.m_Indices[i]];
        int numInnerPoints = i - 1;
        for (int j = 0; j < numInnerPoints; j++) {
            float t = (j + 1.0f) / (numInnerPoints + 1.0f);
            vertexMap.Add(vertices.next);
            vertices.Add(Slerp(A_vertex, B_vertex, t));
        }

        vertexMap.Add(B.m_Indices[i]);
    }

    for (int i = 0; i < numPointsPerEdge; i++) {
        vertexMap.Add (Bottom.m_Indices[i]);
    }

    int numRows = m_NumDivisions + 1;
    for (int row = 0; row < numRows; row++) {
        // vertices down left edge follow quadratic sequence: 0, 1, 3, 6, 10, 15...
        // the nth term can be calculated with: (n^2 - n)/2
        int topVertex = ((row + 1) * (row + 1) - row - 1) / 2;
        int bottomVertex = ((row + 2) * (row + 2) - row - 2) / 2;

        int numTrianglesInRow = 1 + 2 * row;
        for (int column = 0; column < numTrianglesInRow; column++) {
            int v0, v1, v2;

            if (column % 2 == 0) {
                v0 = topVertex;
                v1 = bottomVertex + 1;
                v2 = bottomVertex;
                topVertex++;
                bottomVertex++;
            } else {
                v0 = topVertex;
                v1 = bottomVertex;
                v2 = topVertex - 1;
            }

            faces.Add(vertexMap.items.at(v0));
            faces.Add(vertexMap.items.at(reverse ? v2 : v1));
            faces.Add(vertexMap.items.at(reverse ? v1 : v2));
        }
    }
}
