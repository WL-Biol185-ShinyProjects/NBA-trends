library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) 
  
  
  if(input$Player==""){
    player<-unique(data.frame(fullStats$PLAYER))
  } else{
    player<-input$Player
  } 
  
  fullStats %>%
    filter(player %in% fullStats$PLAYER),
  
  fullStats %>%

   output$NBAplot <- renderPlot({ggplot(data=fullStats, aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()+geom_smooth()})

) 
  
