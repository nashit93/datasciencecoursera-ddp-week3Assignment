#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(DAAG)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    #hist(rnorm(input$obs))
    x    <- stVincent$harvwt[stVincent$block==input$obs] 
    #bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    #hist(x, breaks = bins, col = 'darkgray', border = 'white')
    
    plot(x,pch=22, lty=2, col="red",xlab = "Yeilds per block",ylab = "",main = "St. Vincent  average yield per block")
    
  })
  
})
