library(shiny)
library(ggplot2)

function(input, output){
  

  output$NBAplot <-
     renderPlot({

       if(is.null(input$Player)){
         player <- unique(data.frame(fullStats$PLAYER))
       } else {
         player <- input$Player
       }

       if(is.null(input$Team)){
         team <- unique(data.frame(fullStats$TEAM))
       } else {
         team <- input$Team
       }
<<<<<<< HEAD
       
       fullStats %>%
         filter(fullStats$PLAYER %in% player) %>%
         filter(fullStats$SEASON %in% input$Season) %>%
         filter(fullStats$TEAM %in% team) %>%
=======
>>>>>>> 839c4641ceef310751331e1b333c28fa9f7ee109

       fullStats %>%
         filter(
                  fullStats$PLAYER %in% player, 
                  fullStats$SEASON >= input$Season[1], fullStats$SEASON <= input$Season[2], 
                  fullStats$TEAM %in% team 
                )%>%
         ggplot(aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()

         })
}

  
