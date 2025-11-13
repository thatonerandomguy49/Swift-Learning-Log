#include<iostream>
#include<glad/glad.h>
#include<GLFW/glfw3.h>

int main(){
    //Initializing the GLFW
    glfwInit();

    //Give GLFW the current OpenGL version(4.6)
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);

    //We are using core in order to avoid outdated functions
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

    //Create a window 800x800
    GLFWwindow* window = glfwCreateWindow(800, 800, "OpenGL Test", NULL, NULL);

    //If the instance of the window is Null then terminate GLFW
    if(window == NULL){
        std::cout << "Failed to generate GLFW window" << std::endl;
        glfwTerminate();
        return -1;
    }

    //Tell glfw that we are currently using the window
    glfwMakeContextCurrent(window);

    //Load GLAD so it configures OpenGL
    gladLoadGL();

    //Specify viewport
    glViewport(0, 0, 800, 800);

    //BG color
    glClearColor(0.07f, 0.13f, 0.17f, 1.0f);
    //Clean back buffer assign new color
    glClear(GL_COLOR_BUFFER_BIT);
    //Swap back with front buffer
    glfwSwapBuffers(window);

    //main while loop
    while(!glfwWindowShouldClose(window)){
        //Take care of all GLFW events
        glfwPollEvents();
    }

    //Delete window
    glfwDestroyWindow(window);
    //Terminate GLFW
    glfwTerminate();
    return 0;
}