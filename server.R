library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  

  output$NBAplot <- renderPlot({ggplot(data=fullStats, aes(input$XInput, input$YInput))+geom_point()})

  
  output$NBAplot <- renderPlot({
    if(input$XInput == "Age"){
     ggplot(data=fullStats, aes(AGE, GP)) + 
        geom_point()
    }
    
    
 
    
})
  
})
  
