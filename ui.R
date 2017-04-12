library(shiny)
library(d3heatmap)
fullStats <- read.table("FinalStats.txt")
# Heatmap <- read.table("Heatmapstats.txt")

fluidPage(
  
navbarPage("NBA Stats", theme = shinythemes::shinytheme("flatly"), header = "Created by Matthew Bryson, Kyle Singerman, Jonathan Williamson", 
  tabPanel("Background",
           fluidRow( h1(span("Interactive NBA Stats Trends"
           ),
           align = "center"
           ),
           
           br(),
           br(),
           
           p( "Welcome! This application allows
                                   visualization of various NBA 
                                   statistics for the past eleven seasons, sorted by player,
                                   team, and position.
Basketball is one of the most popular sports in the world. Today the NBA hosts 30 teams with a total of 473 players. Each team plays 82 games during the regular season alone (stats.naba.com). Statistical data for each team and player constantly changes as a season progresses. As a result, it becomes difficult to track an intrinsic wide range of statistical data for the NBA. Until now, there did not exist an aesthetically pleasing way to visualize the immense statistical data available for the NBA. Our coding team was formed to solve this problem, and we have created an app that can organize decades of NBA statistics.   
For the first time in basketball history, our app provides the general public with multidimensional statistical analysis for the NBA. This App is user friendly and can provide visual analysis for 26 common basketball statistics that track individual players and teams from the 1996 season through April 10th, 2017.", align = "center",

           
                p( "Please click the Plot tab above to view the interactive plot.", align = "center")
              ),
           
           br(),
           br(),
           
           img( src = "http://files.shandymedia.com/styles/page/s3/images/photos/thefumble/lebron-james-blocks-stephen-curry-1.png"
                  , style = "display: block; margin-left: auto; margin-right: auto;"
           )
           )
  
           
              ),
  tabPanel("Plot",
    sidebarLayout(
     sidebarPanel(
      
      selectizeInput("Player", label = h3("Select Player"), selected=NULL, multiple=TRUE, choices=fullStats$PLAYER),
      
      
      sliderInput("Season", label = h3("Select Season"), sep = "", min = 1996, 
                  max = 2016, value = c(2010,2016)),
      
      
      selectizeInput("Team", label = h3("Select Team"),
                  choices = list("Atlanta Hawks" = "ATL", "Brooklyn Nets" = "BKN", "Boston Celtics" = "BOS", "Charlotte Bobcats (2004-14)/Hornets (2014-16)" = "CHA", "Charlotte Hornets (1996-2002)" = "CHH", "Chicago Bulls" = "CHI", "Cleveland Cavaliers" = "CLE", "Dallas Mavericks" = "DAL", "Denver Nuggets" = "DEN", "Detroit Pistons" = "DET", "Golden State Warriors" = "GSW", "Houston Rockets" = "HOU", "Indiana Pacers" = "IND", "LA Clippers" = "LAC", "Los Angeles Lakers" = "LAL", "Memphis Grizzlies" = "MEM", "Miami Heat" = "MIA" ,"Milwaukee Bucks" = "MIL","Minnestota Timberwolves" = "MIN", "New Jersey Nets" = "NJN", "New Orleans Hornets" = "NOH", "New Orleans Pelicans" = "NOP","New York Knicks" = "NYK","Oklahoma City Thunder" = "OKC","Orlando Magic" = "ORL", "Philadelphia 76ers" = "PHI", "Phoenix Suns" = "PHX", "Portland Trail Blazers" = "POR", "Sacramento Kings" = "SAC", "San Antonio Spurs" = "SAS", "Seattle SuperSonics" = "SEA", "Toronto Raptors" = "TOR", "Utah Jazz" = "UTA", "Vancouver Grizzlies" = "VAN", "Washington Wizards" = "WAS"),
                  selected = NULL, multiple = TRUE),                              
      
      checkboxGroupInput("Position", label = h3("Select Position"),
                         choices = list("Center" = "C", "Guard" = "G","Forward" = "F", "Center/Forward" = "C-F", "Forward/Center" = "F-C", "Forward/Guard" = "F-G", "Guard/Forward" = "G-F"),
                         selected = NULL)
      
      
    ),
    
    mainPanel(
   
      plotOutput("NBAplot", 
                click = "plot_click",
                brush = "plot_brush"
                 ), 
      
      helpText("These tables will display the statistics of the player you click, or the players you select, on the graph:"),
      column(width = 12,
             tableOutput("click_info"),
             tableOutput("brush_info")
      ),
    
      helpText("Select which variables to compare and how to color points with the inputs below:"),
      
    fluidRow(
      column(width = 4, selectInput("XInput", label="X Input", choices = list("Season"="SEASON", 
                                                                              "Age" = "AGE", 
                                                                              "Games Played" = "GP", 
                                                                              "Wins" = "W", "Losses" = "L", 
                                                                              "Average Minutes Per Game" = "MIN", 
                                                                              "Average Points Per Game" = "PTS",
                                                                              "Field Goal Makes Per Game" = "FGM", 
                                                                              "Field Goal Attempts Per Game" = "FGA",
                                                                              "Field Goal Percentage" = "FG.", 
                                                                              "Average Three Point Makes Per Game" = "X3PM",
                                                                              "Average Three Point Attempts Per Game" = "X3PA", 
                                                                              "Three Point Percentage" = "X3P.",
                                                                              "Average Free Throw Makes Per Game" = "FTM", 
                                                                              "Average Free Throw Attemps Per Game" = "FTA", 
                                                                              "Free Throw Percentage" = "FT.", 
                                                                              "Average Offensive Rebounds Per Game" = "OREB", 
                                                                              "Average Defensive Rebounds Per Game" = "DREB", 
                                                                              "Average Rebounds Per Game" = "REB", 
                                                                              "Average Assists Per Game" = "AST", 
                                                                              "Average Turnovers Per Game" = "TOV", 
                                                                              "Average Steals Per Game" = "STL", 
                                                                              "Average Blocks Per Game" = "BLK", 
                                                                              "Average Personal Fouls Per Game" = "PF",
                                                                              "Number of Double Doubles" = "DD2", 
                                                                              "Number of Triple Doubles" = "TD3", 
                                                                              "Plus/Minus Score" = "PLUSMINUS"))), 
      
      column(width = 4, selectInput("YInput", label="Y Input", choices = list("Season"="SEASON", 
                                                                              "Age" = "AGE", 
                                                                              "Games Played" = "GP", 
                                                                              "Wins" = "W", "Losses" = "L", 
                                                                              "Average Minutes Per Game" = "MIN", 
                                                                              "Average Points Per Game" = "PTS",
                                                                              "Field Goal Makes Per Game" = "FGM", 
                                                                              "Field Goal Attempts Per Game" = "FGA",
                                                                              "Field Goal Percentage" = "FG.", 
                                                                              "Average Three Point Makes Per Game" = "X3PM",
                                                                              "Average Three Point Attempts Per Game" = "X3PA", 
                                                                              "Three Point Percentage" = "X3P.",
                                                                              "Average Free Throw Makes Per Game" = "FTM", 
                                                                              "Average Free Throw Attemps Per Game" = "FTA", 
                                                                              "Free Throw Percentage" = "FT.", 
                                                                              "Average Offensive Rebounds Per Game" = "OREB", 
                                                                              "Average Defensive Rebounds Per Game" = "DREB", 
                                                                              "Average Rebounds Per Game" = "REB", 
                                                                              "Average Assists Per Game" = "AST", 
                                                                              "Average Turnovers Per Game" = "TOV", 
                                                                              "Average Steals Per Game" = "STL", 
                                                                              "Average Blocks Per Game" = "BLK", 
                                                                              "Average Personal Fouls Per Game" = "PF",
                                                                              "Number of Double Doubles" = "DD2", 
                                                                              "Number of Triple Doubles" = "TD3", 
                                                                              "Plus/Minus Score" = "PLUSMINUS"))), 
      
      column(width = 4, selectInput("ColorBy", label="Color By:", choices = list("Team" = "TEAM",
                                                                                 "Position" = "POSITION", 
                                                                                 "Player" = "PLAYER")))
    
      ) 
    )
  )
),
  # tabPanel("Interactive Heatmap",
  #          sidebarLayout(
  #            sidebarPanel(
  #          helpText("View a heatmap of player performance, sorted by the season you select here:"),
  #          selectInput("HeatmapSeason", "Season to display on heatmap", choices = unique(FinalHeatmapStats$SEASON))
  #            )
  #          ,
  #          
  #          mainPanel(
  #          d3heatmapOutput("D3heatmap")
  #          )
  #          )
  #          ),


  tabPanel("References",
           
           fluidRow( h1(span("References"
           ),
           align = "center"
           ),
         
           br(),
           br(),
            
           helpText( a("Click here to view dataset on official NBA site", href = "http://stats.nba.com/leaders/", target = "_blank"), align = "center"), 
           helpText( a("Click here to download final dataset", href= ""), align = "center", target = "_blank")
              
           )
          )
           
           
  )


)





  


