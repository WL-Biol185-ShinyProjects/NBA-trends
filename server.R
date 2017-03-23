library(shiny)
library(ggplot2)
library(magrittr)

function(input, output){
  
  
  output$NBAplot <-
<<<<<<< HEAD
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
           
=======

>>>>>>> 81068a9a4c2d5db2514ae8f7ed09eaa785729a2e
       fullStats %>%
         filter(
                  fullStats$PLAYER %in% player, 
                  fullStats$SEASON >= input$Season[1], fullStats$SEASON <= input$Season[2], 
                  fullStats$TEAM %in% team 
                )%>%
         ggplot(aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()
=======
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
      
      fullStats %>%
        filter(
          fullStats$PLAYER %in% player, 
          fullStats$SEASON >= input$Season[1], fullStats$SEASON <= input$Season[2], 
          fullStats$TEAM %in% team 
        )%>%
        ggplot(aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()
      
    })
}

>>>>>>> 32db839405660d51246b6a79939cc18f7332df7a


  
