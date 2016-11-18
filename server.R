#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(caret)
library(ggplot2)

fitdia <- train(price ~ carat + cut + color + clarity, method="glm", data=diamonds)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$prediction <- renderText({
    
      carat = input$carat
      cut = input$cut
      color = input$color
      clarity = input$clarity
 
      predict(fitdia, data.frame(carat, cut, color, clarity))
    
  })
  
})
