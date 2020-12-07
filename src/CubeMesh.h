//
// Created by Dallin Hagman on 12/7/20.
//

#pragma once
#include "VertexBuffer.h"
#include "VertexArray.h"
#include "Shader.h"

class CubeMesh {
public:
    CubeMesh(Shader* shader);
    void Use();
    void Render();

    Shader* GetShader() const { return m_Shader; }
private:
    VertexBuffer* m_VBO;
    VertexArray* m_VAO;
    Shader* m_Shader;
};


