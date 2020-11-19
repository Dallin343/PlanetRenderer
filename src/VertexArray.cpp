//
// Created by Dallin Hagman on 11/17/20.
//

#include "VertexArray.h"

VertexArray::VertexArray() {
    glGenVertexArrays(1, &m_Handle);
}

void VertexArray::SetLayout() {
    glBindVertexArray(m_Handle);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 3, nullptr);
    glEnableVertexAttribArray(0);
}

void VertexArray::Bind() {
    glBindVertexArray(m_Handle);
}

void VertexArray::Unbind() {
    glBindVertexArray(0);
}
