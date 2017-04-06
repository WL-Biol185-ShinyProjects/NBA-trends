library(shiny)
library(ggplot2)
library(magrittr)
library(tidyverse)
library(dplyr)
library(caret)
library(d3heatmap)

function(input, output){
  
  fullStats <- read.table("fullStats.txt")
  # heatmapStats <- read.table("heatmapStats.txt")
  
  output$D3Heatmap <-
      renderD3heatmap({
        filter(heatmapStats %>%
                 SEASON == input$HeatmapSeason)
        
        m<-as.matrix(heatmapStats)
        m
        row.names(m)<-heatmapStats$PLAYER
        m
        n<-as.data.frame(m)
        n
        n$PLAYER <- NULL
        b<-data.matrix(n)
        b
        d3heatmap(
          heatmapStats
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



  
