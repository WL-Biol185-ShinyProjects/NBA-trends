library(shiny)


function(input, output){
  

  output$NBAplot <-
     renderPlot({
       
       if(input$Player == ""){
         player <- unique(data.frame(fullStats$PLAYER))
       } else {
         player <- input$Player
       }
       
       if(input$Team == ""){
         team <- unique(data.frame(fullStats$TEAM))
       } else {
         team <- input$Team
       }
       
       fullStats %>%
         filter(player %in% fullStats$PLAYER)
         filter(Season=input$Season)
         filter(team %in% fullStats$TEAM)

         ggplot(aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()

         })
}

  
