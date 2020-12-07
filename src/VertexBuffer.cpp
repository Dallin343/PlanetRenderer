//
// Created by Dallin Hagman on 11/17/20.
//

#include "VertexBuffer.h"
#include <glm/gtc/type_ptr.hpp>

VertexBuffer::VertexBuffer() {
    glGenBuffers(1, &m_Handle);
}

VertexBuffer::VertexBuffer(const std::vector<float>& data) {
    glGenBuffers(1, &m_Handle);
    glBindBuffer(GL_ARRAY_BUFFER, m_Handle);
    glBufferData(GL_ARRAY_BUFFER, data.size() * sizeof(float), data.data(), GL_STATIC_DRAW);
}

VertexBuffer::VertexBuffer(const float* data, unsigned int count) {
    glGenBuffers(1, &m_Handle);
    glBindBuffer(GL_ARRAY_BUFFER, m_Handle);
    glBufferData(GL_ARRAY_BUFFER, count * sizeof(float), data, GL_STATIC_DRAW);
}

void VertexBuffer::SetData(const std::vector<float> &data) {
    glBindBuffer(GL_ARRAY_BUFFER, m_Handle);
    glBufferData(GL_ARRAY_BUFFER, data.size() * sizeof(float), data.data(), GL_STATIC_DRAW);
}

void VertexBuffer::Bind() {
    glBindBuffer(GL_ARRAY_BUFFER, m_Handle);
}

void VertexBuffer::Unbind() {
    glBindBuffer(GL_ARRAY_BUFFER, 0);
}
