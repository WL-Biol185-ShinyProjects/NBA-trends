library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$Player<- renderPrint({input$Player})
  output$Season <- renderPrint({ input$Season})
  output$Team <- renderPrint({ input$checkGroup })
  
})
  
