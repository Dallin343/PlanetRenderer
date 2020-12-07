//
// Created by Dallin Hagman on 11/17/20.
//

#include "VertexArray.h"

VertexArray::VertexArray() {
    glGenVertexArrays(1, &m_Handle);
}

//Hardcoded for simplicity, switch to intialization lists and actual layout formatting.
void VertexArray::SetLayout() {
    glBindVertexArray(m_Handle);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 6, nullptr);
    glEnableVertexAttribArray(0);

    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, sizeof(float) * 6, (void*)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);
}

void VertexArray::Bind() {
    glBindVertexArray(m_Handle);
}

void VertexArray::Unbind() {
    glBindVertexArray(0);
}
