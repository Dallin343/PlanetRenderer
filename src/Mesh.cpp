//
// Created by Dallin Hagman on 11/17/20.
//

#include "Mesh.h"

#include <cmath>
#include <algorithm>

const glm::vec3 baseVertices[] = {
        {0.0f, 0.0f, 1.0f}, // UP
        {-1.0f, 0.0f, 0.0f}, // LEFT
        {0.0f, 1.0f, 0.0f}, // BACK
        {1.0f, 0.0f, 0.0f}, // RIGHT
        {0.0f, -1.0f, 0.0f}, // FORWARD
        {0.0f, 0.0f, -1.0f} // DOWN
};

const uint32_t vertexPairs[] = {
        0, 1,
        0, 2,
        0, 3,
        0, 4,
        1, 2,
        2, 3,
        3, 4,
        4, 1,
        5, 1,
        5, 2,
        5, 3,
        5, 4
};

const uint32_t edgeTriplets[] = {
        0, 1, 4,
        1, 2, 5,
        2, 3, 6,
        3, 0, 7,
        8, 9, 4,
        9, 10, 5,
        10, 11, 6,
        11, 8, 7
};


static glm::vec3 Slerp(const glm::vec3& a, const glm::vec3& b, float t) {
    float omega = glm::acos(glm::dot(a, b));

    float somega = sin(omega);

    return (glm::sin((1-t) * omega) / somega)*a + (glm::sin(t*omega)/somega)*b;
}

void Mesh::CreateFace (Edge sideA, Edge sideB, Edge bottom, bool reverse) {
    int numPointsInEdge = sideA.VertexIndices.size();
    auto vertexMap = FixedSizeList<int> (m_NumVertsPerFace);
    vertexMap.Add(sideA.VertexIndices[0]); // top of triangle

    for (int i = 1; i < numPointsInEdge - 1; i++) {
        // Side A vertex
        vertexMap.Add(sideA.VertexIndices[i]);

        // Add vertices between sideA and sideB
        glm::vec3 sideAVertex = vertices.m_Items[sideA.VertexIndices[i]];
        glm::vec3 sideBVertex = vertices.m_Items[sideB.VertexIndices[i]];
        int numInnerPoints = i - 1;
        for (int j = 0; j < numInnerPoints; j++) {
            float t = (j + 1.0f) / (numInnerPoints + 1.0f);
            vertexMap.Add(vertices.nextIndex);
            vertices.Add(Slerp(sideAVertex, sideBVertex, t));
        }

        // Side B vertex
        vertexMap.Add(sideB.VertexIndices[i]);
    }

    // Add bottom edge vertices
    for (int i = 0; i < numPointsInEdge; i++) {
        vertexMap.Add(bottom.VertexIndices[i]);
    }

    // Triangulate
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

            triangles.Add (vertexMap.m_Items[v0]);
            triangles.Add (vertexMap.m_Items[(reverse) ? v2 : v1]);
            triangles.Add (vertexMap.m_Items[(reverse) ? v1 : v2]);
        }
    }

}

void Mesh::GenOctoSphere(int resolution) {
    m_NumDivisions = std::max(0, resolution);
    m_NumVertsPerFace = ((m_NumDivisions + 3) * (m_NumDivisions + 3) - (m_NumDivisions + 3)) / 2;
    int numVerts = m_NumVertsPerFace * 8 - (m_NumDivisions + 2) * 12 + 6;
    int numTrisPerFace = (m_NumDivisions + 1) * (m_NumDivisions + 1);

    vertices = FixedSizeList<glm::vec3>(numVerts);
    triangles = FixedSizeList<int>(numTrisPerFace * 8 *  3);

    vertices.AddRange(baseVertices, 6);

    Edge edges[12];

    for (int i = 0; i < 24; i += 2) {
        glm::vec3 start = vertices.m_Items[vertexPairs[i]];
        glm::vec3 end = vertices.m_Items[vertexPairs[i+1]];

        auto edgeVertexIndices = std::vector<int>(m_NumDivisions + 2);
        edgeVertexIndices[0] = vertexPairs[i];

        // Add vertices along edge
        for (int divisionIndex = 0; divisionIndex < m_NumDivisions; divisionIndex++) {
            float t = (divisionIndex + 1.0f) / (m_NumDivisions + 1.0f);
            edgeVertexIndices[divisionIndex + 1] = vertices.nextIndex;
            vertices.Add(Slerp(start, end, t));
        }
        edgeVertexIndices[m_NumDivisions + 1] = vertexPairs[i + 1];
        int edgeIndex = i / 2;
        edges[edgeIndex] = Edge(edgeVertexIndices);
    }

    // Create faces
    for (int i = 0; i < 24; i += 3) {
        int faceIndex = i / 3;
        bool reverse = faceIndex >= 4;
        CreateFace (edges[edgeTriplets[i]], edges[edgeTriplets[i + 1]], edges[edgeTriplets[i + 2]], reverse);
    }

    m_Vertices = vertices.m_Items;
    m_Triangles = triangles.m_Items;
}



void Mesh::GenerateUVSphere(uint32_t radius, uint32_t segments, uint32_t stacks){

}
