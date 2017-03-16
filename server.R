library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) 
  
  
  if(input$Player==""){
    player<-fullStats$PLAYER
  } else{
    player<-players<-input$Player
  }
  
  fullStats %>%
    filter(player %in% fullStats$PLAYER),

   output$NBAplot <- renderPlot({ggplot(data=fullStats, aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()+geom_smooth()})

) 
  
