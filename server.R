library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) 
  
  
  if(input$Player==""){
    player<-unique(data.frame(fullStats$PLAYER))
  } else{
    player<-input$Player
  } 
  
  if(input$Team==""){
    team<-unique(data.frame(fullStats$TEAM))
  } else{
    team<-input$Team
  }
  
  
  
 
   output$NBAplot <- 
     renderPlot({
       fullStats %>%
         filter(player %in% fullStats$PLAYER)
         filter(SEASON=input$Season)
         filter(team %in% fullStats$TEAM)
  
       ggplot(data=fullStats, aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()+geom_smooth()})

) 
  
