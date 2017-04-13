library(shiny)
library(ggplot2)
library(magrittr)
library(tidyverse)
library(dplyr)
library(caret)
library(d3heatmap)

function(input, output, session){
  
  fullStats <- read.table("FinalStats.txt")
  FinalHeatmapStatsSixteen <- read.table("Heatmapsixteen")
  testHeatmap <- read.table("Heatmapsixteen.txt")
  
  output$downloadData <- downloadHandler( filename = "NBAStats.csv"
                                          , content = function(file) {
                                            write.csv(fullStats, file)
                                          }
  )
 
  output$Heatmap <- 
      renderD3heatmap({
        
        if(is.null(input$HeatmapPlayer)){
          heatmapPlayer <- testHeatmap$PLAYER
        } else {
          heatmapPlayer <- input$HeatmapPlayer
        }
        # filter dataframe into filter into matrix into heatmap
         testHeatmapa <-
          filter (testHeatmap, PLAYER %in% heatmapPlayer) 
          
          names <- testHeatmapa$PLAYER
          testHeatmapa$PLAYER <- NULL 
         
          m <- as.matrix(testHeatmapa) 
          row.names(m) <- names 

        d3heatmap(
         m, scale = "column", yaxis_font_size = "8pt", colors = "Blues"
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
      
      if(is.null(input$Position)){
        position <- fullStats$POSITION
      } else {
        position <- input$Position
      }
      
    
      player1 <- as.data.frame(fullStats %>%
                                 filter( 
                                   PLAYER %in% player, 
                                   TEAM %in% team, 
                                   POSITION %in% position))
      
      
     
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
        TEAM %in% team, 
        POSITION %in% position
        )%>%
        
    
        ggplot(aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()+geom_smooth()
         
  
    })
  
}



  
