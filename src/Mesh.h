//
// Created by Dallin Hagman on 11/17/20.
//
#pragma once

#include <vector>
#include <glm/glm.hpp>

struct Edge {
    std::vector<int> VertexIndices;

    Edge() = default;
    Edge(std::vector<int> vertexIndices) {
        VertexIndices = vertexIndices;
    }
};

template <typename T>
class FixedSizeList {
public:

    FixedSizeList() = default;

    FixedSizeList (int size) {
        m_Items = std::vector<T>();
        m_Items.reserve(size);
        iter = m_Items.begin();
    }

    void Add (T item) {
        m_Items.insert(iter, item);
        iter++;
        nextIndex++;
    }

    void AddRange (const T* items, int count) {
        for (int i = 0; i < count; i++) {
            Add(items[i]);
        }
    }

public:
    int nextIndex = 0;
    typename std::vector<T>::iterator iter;
    std::vector<T> m_Items;
};

class Mesh {
public:
    Mesh() = default;

    void GenerateUVSphere(uint32_t radius, uint32_t segments, uint32_t stacks);

    void GenOctoSphere(int resolution);
    void CreateFace (Edge sideA, Edge sideB, Edge bottom, bool reverse);

    const std::vector<glm::vec3>& GetVertices() { return m_Vertices; }
    const std::vector<int>& GetTriangles() { return m_Triangles; }

private:
    std::vector<glm::vec3> m_Vertices;
    std::vector<int> m_Triangles;

    FixedSizeList<glm::vec3> vertices;
    FixedSizeList<int> triangles;

    int m_NumDivisions;
    int m_NumVertsPerFace;
};
