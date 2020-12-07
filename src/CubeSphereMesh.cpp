//
// Created by Dallin Hagman on 12/5/20.
//

#include "CubeSphereMesh.h"

static const glm::vec3 origins[6] = {
    glm::vec3(-1.0, -1.0, -1.0),
    glm::vec3(1.0, -1.0, -1.0),
    glm::vec3(1.0, -1.0, 1.0),
    glm::vec3(-1.0, -1.0, 1.0),
    glm::vec3(-1.0, 1.0, -1.0),
    glm::vec3(-1.0, -1.0, 1.0)
};
static const glm::vec3 rights[6] = {
    glm::vec3(2.0, 0.0, 0.0),
    glm::vec3(0.0, 0.0, 2.0),
    glm::vec3(-2.0, 0.0, 0.0),
    glm::vec3(0.0, 0.0, -2.0),
    glm::vec3(2.0, 0.0, 0.0),
    glm::vec3(2.0, 0.0, 0.0)
};
static const glm::vec3 ups[6] = {
    glm::vec3(0.0, 2.0, 0.0),
    glm::vec3(0.0, 2.0, 0.0),
    glm::vec3(0.0, 2.0, 0.0),
    glm::vec3(0.0, 2.0, 0.0),
    glm::vec3(0.0, 0.0, 2.0),
    glm::vec3(0.0, 0.0, -2.0)
};

static glm::vec3 CubeToSphere(glm::vec3 v) {
    glm::vec3 out;
    float x_sqr = v.x * v.x;
    float y_sqr = v.y * v.y;
    float z_sqr = v.z * v.z;
    out.x = v.x*(glm::sqrt(1 - y_sqr/2 - z_sqr/2 + (y_sqr * z_sqr)/3));
    out.y = v.y*(glm::sqrt(1 - z_sqr/2 - x_sqr/2 + (x_sqr * z_sqr)/3));
    out.z = v.z*(glm::sqrt(1 - x_sqr/2 - y_sqr/2 + (x_sqr * y_sqr)/3));

    return out;
}

CubeSphereMesh::CubeSphereMesh(int divisions, Shader* shader): m_Shader(shader) {
    GenerateMesh(divisions);
    GenerateNormals();
    m_VAO = new VertexArray();
    m_VBO = new VertexBuffer((const float*)m_Vertices.data(), m_Vertices.size()*6);
    m_IBO = new IndexBuffer(m_Triangles);
    m_VAO->SetLayout();
}

void CubeSphereMesh::GenerateMesh(int divisions) {
    m_NumDivisions = std::max(1, divisions);
    const double step = 1.0 / double(m_NumDivisions);
    const glm::vec3 step3(step, step, step);

    SphereVertex vertex;

    for (uint32_t face = 0; face < 6; ++face)
    {
        const glm::vec3 origin = origins[face];
        const glm::vec3 right = rights[face];
        const glm::vec3 up = ups[face];
        for (uint32_t j = 0; j < m_NumDivisions + 1; ++j)
        {
            const glm::vec3 j3(j, j, j);
            for (uint32_t i = 0; i < m_NumDivisions + 1; ++i)
            {
                const glm::vec3 i3(i, i, i);
                const glm::vec3 p = origin + step3 * (i3 * right + j3 * up);
                vertex.Pos = CubeToSphere(p);
                vertex.Nrm = {0.0, 0.0, 0.0};
                m_Vertices.emplace_back(vertex);
            }
        }
    }

    const uint32_t k = m_NumDivisions + 1;
    for (uint32_t face = 0; face < 6; ++face)
    {
        for (uint32_t j = 0; j < m_NumDivisions; ++j)
        {
            const bool bottom = j < (m_NumDivisions / 2);
            for (uint32_t i = 0; i < m_NumDivisions; ++i)
            {
                const bool left = i < (m_NumDivisions / 2);
                const uint32_t a = (face * k + j) * k + i;
                const uint32_t b = (face * k + j) * k + i + 1;
                const uint32_t c = (face * k + j + 1) * k + i;
                const uint32_t d = (face * k + j + 1) * k + i + 1;

                bool reverse = bottom ^ left;
                AddQuad(a, c, d, b, reverse);
            }
        }
    }
}

void CubeSphereMesh::GenerateNormals() {
    for (int i = 0; i < m_Triangles.size(); i += 3) {
        SphereVertex* v0 = &m_Vertices[m_Triangles[i]];
        SphereVertex* v1 = &m_Vertices[m_Triangles[i+1]];
        SphereVertex* v2 = &m_Vertices[m_Triangles[i+2]];

        glm::vec3 edge1 = v1->Pos - v0->Pos;
        glm::vec3 edge2 = v2->Pos - v0->Pos;

        glm::vec3 norm = glm::cross(edge1, edge2);

        v0->Nrm = norm;
        v1->Nrm = norm;
        v2->Nrm = norm;
    }
}

void CubeSphereMesh::AddQuad(unsigned int a, unsigned int b, unsigned int c, unsigned int d, bool reverse) {
    if (reverse) {
        m_Triangles.emplace_back(a);
        m_Triangles.emplace_back(b);
        m_Triangles.emplace_back(d);
        m_Triangles.emplace_back(b);
        m_Triangles.emplace_back(c);
        m_Triangles.emplace_back(d);
    } else {
        m_Triangles.emplace_back(a);
        m_Triangles.emplace_back(b);
        m_Triangles.emplace_back(c);
        m_Triangles.emplace_back(a);
        m_Triangles.emplace_back(c);
        m_Triangles.emplace_back(d);
    }
}


void CubeSphereMesh::Use() {
    m_VAO->Bind();
    m_VBO->Bind();
    m_IBO->Bind();
    m_Shader->Bind();
}

void CubeSphereMesh::Render() {
    glDrawElements(GL_TRIANGLES, m_Triangles.size(), GL_UNSIGNED_INT, nullptr);
}
