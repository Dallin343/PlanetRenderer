//
// Created by Dallin Hagman on 12/2/20.
//
#pragma once

#include <glad/glad.h>
#include <glm/glm.hpp>
#include <vector>

struct VertexPair {
    int V0, V1;
};

struct Edge {
    int* m_Indices;
    int m_NumIndices;
    Edge(): m_Indices(nullptr), m_NumIndices(0){}
    Edge(int* indices, int num): m_Indices(indices), m_NumIndices(num) {}
};

struct Face {
    unsigned int V0, V1, V2;
};


//Fixed length vector
template <typename T>
class FixedVector {
public:
    std::vector<T> items;
    int next = 0;

    void Add(T newItem) {
        items.push_back(newItem);
        next++;
    }

    void Add(const T* newItems, int count) {
        for (int i = 0; i < count; i++){
            Add(newItems[i]);
        }
    }

    FixedVector() = default;

    FixedVector(int size) {
        items.reserve(size);
    }
};

class OctoSphereMesh {
public:
    OctoSphereMesh() = default;

    void GenerateMesh(int depth);

    std::vector<unsigned int> m_Faces;
    std::vector<glm::vec3> m_Vertices;
    int m_NumDivisions, m_NumVerticesPerFace;

private:
    void CreateFace(Edge A, Edge B, Edge Bottom, bool reverse);

private:
    FixedVector<unsigned int> faces;
    FixedVector<glm::vec3> vertices;
};