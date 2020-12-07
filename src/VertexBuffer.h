//
// Created by Dallin Hagman on 11/17/20.
//
#pragma once

#include <vector>
#include <glad/glad.h>
#include <glm/glm.hpp>

class SphereVertex;

class VertexBuffer {
public:
    VertexBuffer();
    VertexBuffer(const std::vector<float>& data);
    VertexBuffer(const float* data, unsigned int count);

    void SetData(const std::vector<float>& data);
    void Bind();
    void Unbind();
private:
    GLuint m_Handle;

};
