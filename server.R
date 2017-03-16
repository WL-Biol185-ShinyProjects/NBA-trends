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
         team <- unqique(data.frame(fullStats$TEAM))
       } else {
         team <- input$Team
       }
       
       fullStats %>%
         filter(PLAYER %in% player)
         filter(SEASON %in% input$Season)
         filter(TEAM %in% team)

         ggplot(aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()

         })
}

  
