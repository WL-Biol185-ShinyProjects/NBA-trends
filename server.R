library(shiny)
library(ggplot2)
library(magrittr)
library(tidyverse)
library(dplyr)
library(caret)
library(d3heatmap)

function(input, output){
  
  fullStats <- read.table("FinalStats.txt")

  
  output$D3Heatmap <-
      renderD3heatmap({
        filter(Heatmap %>%
                 SEASON == input$HeatmapSeason)
      
        d3heatmap(
          b
        )
      })
  
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
    
      player1 <- as.data.frame(fullStats %>%
                                 filter( 
                                   PLAYER %in% player, 
                                   TEAM %in% team))
      
      
     
      output$click_info <- renderTable({
        nearPoints(player1, input$plot_click, maxpoints=1)
      })
      
      output$brush_info <- renderTable({
        brushedPoints(player1, input$plot_brush)
      })
      
      

  
      fullStats %>%

        filter( 
        PLAYER %in% player,
        fullStats$SEASON >= input$Season[1], fullStats$SEASON <= input$Season[2],
        TEAM %in% team
        )%>%
        
    
        ggplot(aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()+geom_smooth()
         
  
    })
  
}



  
