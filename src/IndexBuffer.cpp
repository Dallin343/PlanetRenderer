//
// Created by Dallin Hagman on 11/17/20.
//

#include "IndexBuffer.h"

IndexBuffer::IndexBuffer() {
    glGenBuffers(1, &m_Handle);
}

IndexBuffer::IndexBuffer(const std::vector<unsigned int> &indices) {
    glGenBuffers(1, &m_Handle);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_Handle);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, indices.size() * sizeof(unsigned int), indices.data(), GL_STATIC_DRAW);
}

IndexBuffer::IndexBuffer(unsigned int *indices, unsigned int count) {
    glGenBuffers(1, &m_Handle);
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_Handle);
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, count * sizeof(unsigned int), indices, GL_STATIC_DRAW);
}

void IndexBuffer::Bind() {
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, m_Handle);
}

void IndexBuffer::Unbind() {
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, 0);
}
