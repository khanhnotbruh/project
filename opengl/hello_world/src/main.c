#include <glad/glad.h>
#include <GLFW/glfw3.h>

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#include "utils.h"
//function
void frameBufferSizeCallBack(GLFWwindow *window,int width,int height);
void processInput(GLFWwindow *window);
//setting
const uint16_t WIN_WIDTH =500;
const uint16_t WIN_HEIGHT=500;
float vertices[] = {
   0.0f, 1.0f, 0.0f,   
  -1.0f, 1.0f, 0.0f,  
  -1.0f,-1.0f, 0.0f  
};

int main(int argc, char* argv[]){
  initCore(argc,argv);


  glfwInit();
  glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR,3);
  glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR,3);
  glfwWindowHint(GLFW_OPENGL_PROFILE,GLFW_OPENGL_CORE_PROFILE);
#ifdef __APPLE__
  glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
#endif
  GLFWwindow *window=glfwCreateWindow(WIN_WIDTH,WIN_HEIGHT,"idk",NULL,NULL);
  if(!window){
    printf("failed to initalize window");
    glfwTerminate();
    return -1;
  }
  glfwMakeContextCurrent(window);
  glfwSetFramebufferSizeCallback(window,frameBufferSizeCallBack);
  if(!gladLoadGLLoader((GLADloadproc)glfwGetProcAddress)){
    printf("failed to initilize glad");
    return -1;
  }

  uint32_t vbo;
  glGenBuffers(1,&vbo);
  glBindBuffer(GL_ARRAY_BUFFER,vbo);
  glBufferData(GL_ARRAY_BUFFER,sizeof(vertices),vertices,GL_STATIC_DRAW);

  uint32_t vertex_shader=glfwCreateShader(GL_VERTEX_SHADER);
  glSourceShader(vertex_shader,1,)

  while(!glfwWindowShouldClose(window)){
    //input
    processInput(window);
    //render
    glClearColor(0.2f, 0.3f, 0.3f, 1.0f);
    glClear(GL_COLOR_BUFFER_BIT);

    //refresh
    glfwSwapBuffers(window);
    glfwPollEvents();
  }
  glfwTerminate();
  return 0;
}
void frameBufferSizeCallBack(GLFWwindow *window,int width,int height){
  glViewport(0,0,width,height);
}
void processInput(GLFWwindow *window){
  if(glfwGetKey(window,GLFW_KEY_ESCAPE)==GLFW_PRESS)
    glfwSetWindowShouldClose(window,true);
}
