library(shiny)
library(ggplot2)
library(magrittr)
library(tidyverse)
library(dplyr)

function(input, output){
  
  fullStats <- read.table("fullStats.txt")
  
  output$NBAplot <-
    renderPlot({
      
      if(is.null(input$Player)){
        player <- fullStats$PLAYER
      } else {
        player <- input$Player
      }
      
      if(is.null(input$Team)){
        team <- fullStats$TEAM
      } else {
        team <- input$Team
      }
      
      fullStats %>%
        filter( 
        PLAYER %in% player,
        # fullStats$SEASON >= input$Season[1], fullStats$SEASON <= input$Season[2],
        TEAM %in% team
        )%>%
    
        ggplot(aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()+geom_smooth()
         
    })
}



  
