#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(caret)

# Define UI for application that draws a histogram
shinyUI (pageWithSidebar (
   
  # Application title
  titlePanel("Select Diamond Quality"),
  
    sidebarPanel(
       sliderInput('carat','Carat',0.5,min=0.2,max=5.0,step=0.1),
       selectInput('cut','Cut',c('Ideal','Premium','Very Good','Good','Fair')),
       selectInput('color','Color',c('D','E','F','G','H','I','J')),
       selectInput('clarity','Clarity',c('VVS1','VVS2','VS1','VS2','SI1','SI2')),
       submitButton('Submit')
       
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
        h2 ('Projected Cost of a Round Diamond in USD'),
        textOutput("prediction")
    )
  )
)
