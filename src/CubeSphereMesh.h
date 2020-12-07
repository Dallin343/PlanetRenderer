//
// Created by Dallin Hagman on 12/5/20.
//

#pragma once


#include <vector>
#include <glm/glm.hpp>
#include "VertexArray.h"
#include "IndexBuffer.h"
#include "VertexBuffer.h"
#include "Shader.h"

struct SphereVertex {
    glm::vec3 Pos;
    glm::vec3 Nrm;
};

class CubeSphereMesh {
public:
    CubeSphereMesh() = default;
    CubeSphereMesh(int divisions, Shader* shader);

    void Use();
    void Render();

    Shader* GetShader() const { return m_Shader; }

    const std::vector<SphereVertex>& GetVertices() const { return m_Vertices; }
    const std::vector<unsigned int>& GetTriangles() const { return m_Triangles; }

private:
    void GenerateMesh(int divisions);
    void GenerateNormals();
    std::vector<uint16_t> GetNrmIndices();
    void AddQuad(unsigned int a, unsigned int b, unsigned int c, unsigned int d, bool reverse);

private:
    std::vector<unsigned int> m_Triangles;
    std::vector<SphereVertex> m_Vertices;
    int m_NumDivisions;

    VertexBuffer* m_VBO;
    VertexArray* m_VAO;
    IndexBuffer* m_IBO;
    Shader* m_Shader;
};


