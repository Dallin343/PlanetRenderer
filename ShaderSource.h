//
// Created by Dallin Hagman on 11/17/20.
//

#pragma once
const char *vertexShaderSource = R"(
#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNrm;

uniform mat4 u_Model;
uniform mat4 u_View;
uniform mat4 u_Projection;

out vec3 v_Pos;
out vec3 v_Nrm;

void main() {
    v_Pos = vec3(u_Model * vec4(aPos, 1.0));
    gl_Position = u_Projection * u_View * vec4(v_Pos, 1.0);

    v_Nrm = mat3(transpose(inverse(u_Model))) * aNrm;
})";


const char *fragmentShaderSource = R"(
#version 330 core

in vec3 v_Pos;
in vec3 v_Nrm;

uniform vec3 u_LightPos;
uniform vec3 u_ViewPos;
uniform vec3 u_LightColor;
uniform vec3 u_ObjectColor;

out vec4 FragColor;

void main() {
    vec3 norm = normalize(v_Nrm);
    vec3 lightDir = normalize(u_LightPos - v_Pos);

    float ambientStrength = 0.1;
    vec3 ambient = ambientStrength * u_LightColor;

    float diff = max(dot(norm, lightDir), 0.0);
    vec3 diffuse = diff * u_LightColor;

    float specularStrength = 0.8;
    vec3 viewDir = normalize(u_ViewPos - v_Pos);
    vec3 reflectDir = reflect(-lightDir, norm);
    float spec = pow(max(dot(viewDir, reflectDir), 0.0), 64);
    vec3 specular = specularStrength * spec * u_LightColor;

    vec3 result = (ambient + diffuse + specular) * u_ObjectColor;
    FragColor = vec4(result, 1.0);
})";
