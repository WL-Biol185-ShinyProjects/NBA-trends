library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) 
  
  fullStats %>%
    
  output$NBAplot <- renderPlot({ggplot(data=fullStats, aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()})

) 
  
