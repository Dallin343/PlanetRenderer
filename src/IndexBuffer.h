//
// Created by Dallin Hagman on 11/17/20.
//
#pragma once

#include <glad/glad.h>
#include <vector>

class IndexBuffer {
public:
    IndexBuffer();
    IndexBuffer(const std::vector<int>& indices);
    IndexBuffer(unsigned int *indices, unsigned int count);

    void Bind();
    void Unbind();
private:
    GLuint m_Handle;
};

