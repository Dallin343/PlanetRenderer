//
// Created by Dallin Hagman on 11/17/20.
//
#pragma once

#include <glad/glad.h>
#include <string>
#include <glm/glm.hpp>

class Shader {
public:
    Shader() = default;
    Shader(const char* vertexSource, const char* fragmentSource);

    void Compile();

    void SetUniform(const std::string& name, float value);
    void SetUniform(const std::string& name, glm::vec3 value);
    void SetUniform(const std::string& name, glm::vec4 value);
    void SetUniform(const std::string& name, glm::mat4 value);

    void Bind();
    void Unbind();

private:
    GLuint m_Handle;
};

