//
// Created by Dallin Hagman on 11/17/20.
//
#pragma once

#include <glad/glad.h>

class VertexArray {
public:
    VertexArray();

    void SetLayout();

    void Bind();
    void Unbind();
private:
    GLuint m_Handle;
};

