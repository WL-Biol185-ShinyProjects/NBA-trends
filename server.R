library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({

  
  })
  function(input, output) {
    
    # You can access the value of the widget with input$text, e.g.
    output$value <- renderPrint({ input$text })
    
  }
  
})
  
