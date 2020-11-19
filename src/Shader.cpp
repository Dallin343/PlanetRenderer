//
// Created by Dallin Hagman on 11/17/20.
//

#include "Shader.h"
#include <iostream>
#include <glm/gtc/type_ptr.hpp>

Shader::Shader(const char* vertexSource, const char* fragmentSource) {
    unsigned int vertexShader;
    vertexShader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertexShader, 1, &vertexSource, nullptr);
    glCompileShader(vertexShader);

    int success;
    char infoLog[512];

    glGetShaderiv(vertexShader, GL_COMPILE_STATUS, &success);
    if(!success)
    {
        glGetShaderInfoLog(vertexShader, 512, nullptr, infoLog);
        std::cout << "ERROR::SHADER::VERTEX::COMPILATION_FAILED\n" << infoLog << std::endl;
    };

    unsigned int fragmentShader;
    fragmentShader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragmentShader, 1, &fragmentSource, nullptr);
    glCompileShader(fragmentShader);

    glGetShaderiv(fragmentShader, GL_COMPILE_STATUS, &success);
    if(!success)
    {
        glGetShaderInfoLog(fragmentShader, 512, nullptr, infoLog);
        std::cout << "Fragment::COMPILATION_FAILED\n" << infoLog << std::endl;
    };


    m_Handle = glCreateProgram();
    glAttachShader(m_Handle, vertexShader);
    glAttachShader(m_Handle, fragmentShader);
    glLinkProgram(m_Handle);

    glGetProgramiv(m_Handle, GL_LINK_STATUS, &success);
    if(!success)
    {
        glGetProgramInfoLog(m_Handle, 512, nullptr, infoLog);
        std::cout << "Shader::LINKING_FAILED\n" << infoLog << std::endl;
    }

    glUseProgram(m_Handle);

    glDeleteShader(vertexShader);
    glDeleteShader(fragmentShader);
}

void Shader::Compile() {

}

void Shader::SetUniform(const std::string &name, float value) {
    unsigned int loc = glGetUniformLocation(m_Handle, name.c_str());
    glUniform1f(loc, value);
}

void Shader::SetUniform(const std::string &name, glm::vec3 value) {
    unsigned int loc = glGetUniformLocation(m_Handle, name.c_str());
    glUniform3f(loc, value.x, value.y, value.z);
}

void Shader::SetUniform(const std::string &name, glm::vec4 value) {
    unsigned int loc = glGetUniformLocation(m_Handle, name.c_str());
    glUniform4f(loc, value.x, value.y, value.z, value.w);
}

void Shader::SetUniform(const std::string &name, glm::mat4 value) {
    unsigned int loc = glGetUniformLocation(m_Handle, name.c_str());
    glUniformMatrix4fv(loc, 1, GL_FALSE, glm::value_ptr(value));
}

void Shader::Bind() {
    glUseProgram(m_Handle);
}

void Shader::Unbind() {
    glUseProgram(0);
}
