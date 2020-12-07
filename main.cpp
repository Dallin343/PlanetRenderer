#include "src/Shader.h"
#include "src/VertexArray.h"
#include "src/VertexBuffer.h"
#include "src/IndexBuffer.h"
#include "ShaderSource.h"
#include "src/Camera.h"

#include "src/OctoSphereMesh.h"
#include "src/CubeSphereMesh.h"
#include "src/CubeMesh.h"

#include <iostream>

#define GLFW_INCLUDE_NONE
#include <GLFW/glfw3.h>
#include <glad/glad.h>

#include <glm/glm.hpp>
#include <glm/mat4x4.hpp>
#include <glm/ext/matrix_transform.hpp>
#include <glm/ext/matrix_clip_space.hpp>

void framebuffer_size_callback(GLFWwindow* window, int width, int height);
void mouse_callback(GLFWwindow* window, double xpos, double ypos);
void scroll_callback(GLFWwindow* window, double xoffset, double yoffset);
void processInput(GLFWwindow *window);

// settings
const unsigned int SCR_WIDTH = 800;
const unsigned int SCR_HEIGHT = 600;

// camera
Camera camera(glm::vec3(0.0f, 0.0f, 3.0f));
float lastX = SCR_WIDTH / 2.0f;
float lastY = SCR_HEIGHT / 2.0f;
bool firstMouse = true;

// timing
float deltaTime = 0.0f;
float lastFrame = 0.0f;

int main() {
    GLFWwindow* window;

    /* Initialize the library */
    if (!glfwInit())
        return -1;

    /* Create a windowed mode window and its OpenGL context */
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    window = glfwCreateWindow(SCR_WIDTH, SCR_HEIGHT, "Hello World", nullptr, nullptr);
    if (!window)
    {
        glfwTerminate();
        return -1;
    }

    /* Make the window's context current */
    glfwMakeContextCurrent(window);
    glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
    glfwSetCursorPosCallback(window, mouse_callback);
    glfwSetScrollCallback(window, scroll_callback);

    // tell GLFW to capture our mouse
    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

    int status = gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);

    std::cout << glGetString(GL_VERSION) << std::endl;


    if (!status) {
        std::cout << "GLAD error" << std::endl;
        return -1;
    }

    glm::vec3 lightPos = {-5.0, 0.0, 5.0f};

    auto cubeSphere = new CubeSphereMesh(100, new Shader(vertexShaderSource, fragmentShaderSource));
    auto cube = new CubeMesh(new Shader(vertexShaderSource, fragmentShaderSource));

    glEnable(GL_DEPTH_TEST);

    while (!glfwWindowShouldClose(window))
    {
        float currentFrame = glfwGetTime();
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;

        processInput(window);

        glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT);

        glm::mat4 model = glm::mat4(1.0f);
        glm::mat4 projection = glm::perspective(
                glm::radians(camera.Zoom),
                (float)SCR_WIDTH/(float)SCR_HEIGHT,
                0.1f,
                100.0f);

        cube->Use();
        auto shader = cube->GetShader();
        shader->SetUniform("u_LightPos", lightPos);
        shader->SetUniform("u_Model", model);
        shader->SetUniform("u_View", camera.GetViewMatrix());
        shader->SetUniform("u_Projection", projection);
        shader->SetUniform("u_ViewPos", camera.Position);
        shader->SetUniform("u_LightColor", {1.0, 1.0, 1.0});
        shader->SetUniform("u_ObjectColor", {0.4, 0.3, 0.2});
        cube->Render();

        model = glm::translate(model, {10.0, 10.0, 0.0});
        model = glm::scale(model, {5.0, 5.0, 5.0});

        cubeSphere->Use();
        shader = cubeSphere->GetShader();
        shader->SetUniform("u_LightPos", lightPos);
        shader->SetUniform("u_Model", model);
        shader->SetUniform("u_View", camera.GetViewMatrix());
        shader->SetUniform("u_Projection", projection);
        shader->SetUniform("u_ViewPos", camera.Position);
        shader->SetUniform("u_LightColor", {1.0, 1.0, 1.0});
        shader->SetUniform("u_ObjectColor", {0.3, 0.6, 0.4});
        cubeSphere->Render();

        /* Swap front and back buffers */
        glfwSwapBuffers(window);

        /* Poll for and process events */
        glfwPollEvents();
    }

    glfwTerminate();
    return 0;
}

void processInput(GLFWwindow *window)
{
    if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS)
        glfwSetWindowShouldClose(window, true);

    if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
        camera.ProcessKeyboard(FORWARD, deltaTime);
    if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
        camera.ProcessKeyboard(BACKWARD, deltaTime);
    if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
        camera.ProcessKeyboard(LEFT, deltaTime);
    if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
        camera.ProcessKeyboard(RIGHT, deltaTime);
}

// glfw: whenever the window size changed (by OS or user resize) this callback function executes
// ---------------------------------------------------------------------------------------------
void framebuffer_size_callback(GLFWwindow* window, int width, int height)
{
    // make sure the viewport matches the new window dimensions; note that width and
    // height will be significantly larger than specified on retina displays.
    glViewport(0, 0, width, height);
}


// glfw: whenever the mouse moves, this callback is called
// -------------------------------------------------------
void mouse_callback(GLFWwindow* window, double xpos, double ypos)
{
    if (firstMouse)
    {
        lastX = xpos;
        lastY = ypos;
        firstMouse = false;
    }

    float xoffset = xpos - lastX;
    float yoffset = lastY - ypos; // reversed since y-coordinates go from bottom to top

    lastX = xpos;
    lastY = ypos;

    camera.ProcessMouseMovement(xoffset, yoffset);
}

void scroll_callback(GLFWwindow* window, double xoffset, double yoffset)
{
    camera.ProcessMouseScroll(yoffset);
}
