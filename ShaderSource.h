//
// Created by Dallin Hagman on 11/17/20.
//

#pragma once
const char *vertexShaderSource = R"(
#version 330 core
layout (location = 0) in vec3 aPos;
uniform mat4 u_ModelViewProjection;
void main() {
    gl_Position = u_ModelViewProjection * vec4(aPos, 1.0);
})";


const char *fragmentShaderSource = R"(
#version 330 core
out vec4 FragColor;

void main() {
    FragColor = vec4(1.0f, 0.5f, 0.2f, 1.0f);
})";
