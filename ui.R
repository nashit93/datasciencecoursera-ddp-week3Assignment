#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Scatter Plot for Average Harvest Yeild in stVincent"),
    
  # Sidebar with a slider input for number of Cylinders 
  sidebarLayout(
    sidebarPanel(
      
      sliderInput("obs", "Block:",
                  min = min(stVincent$block), max = max(stVincent$block),step = 1, value = mean(stVincent$block)
      )
       
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
