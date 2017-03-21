library(shiny)
library(ggplot2)


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
         filter(fullStats$PLAYER %in% player) %>%
         filter(fullStats$SEASON %in% input$Season) %>%
         filter(fullStats$TEAM %in% team) %>%
         ggplot(aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()

         })
}

  
