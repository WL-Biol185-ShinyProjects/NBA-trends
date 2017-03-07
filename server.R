library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$Player<- renderPrint({input$Player})
  output$Season <- renderPrint({ input$Season})
  output$Team <- renderPrint({ input$checkGroup })
  output$value <- renderPrint({ input$PPG })
  output$value <- renderPrint({ input$PlusMinus })
  output$value <- renderPrint({ input$FGPer })
  output$value <- renderPrint({ input$ThreePrPer })
  output$value <- renderPrint({ input$PPG })
  output$value <- renderPrint({ input$All })
})
  
