library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$Player<- renderPrint({input$Player})
  output$Season <- renderPrint({ input$Season})
  output$Team <- renderPrint({ input$checkGroup })
  output$PPG <- renderPrint({ input$PPG })
  output$PlusMinus <- renderPrint({ input$PlusMinus })
  output$FGPer <- renderPrint({ input$FGPer })
  output$ThreePtPer <- renderPrint({ input$ThreePtPer })
  output$All <- renderPrint({ input$All })
})
  
