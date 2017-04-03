library(shiny)
library(ggplot2)
library(magrittr)
library(tidyverse)
library(dplyr)
library(caret)

function(input, output){
  
  fullStats <- read.table("fullStats.txt")
  
  output$Heatmap <-
      renderPlot({
        
        output$heatmap_click_info <- renderPrint({
        nearPoints(fullStats, input$plot_click, maxpoints=1)
        
        })
        
        heatmap(as.matrix(fullStats[1:1000, 4:29]))
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
      print(team)
      player1 <- as.data.frame(fullStats %>%
                                 filter( 
                                   PLAYER %in% player, 
                                   TEAM %in% team))
      print(player1) 
      
      
      #need to fogure out how to format textbox 
      output$click_info <- renderPrint({
        nearPoints(player1, input$plot_click, maxpoints=1)
      })
      
      # output$text1 <- renderText({ 
      #   paste("You have selected", input$var)
      # })

      
      fullStats %>%

        filter( 
        PLAYER %in% player,
        fullStats$SEASON >= input$Season[1], fullStats$SEASON <= input$Season[2],
        TEAM %in% team
        )%>%
        
    
        ggplot(aes_string(input$XInput, input$YInput, colour=input$ColorBy))+geom_point()+geom_smooth() # + geom_label()
        #need to add text popup when examining points on ggpplot 
         
  
    })
  
}



  
