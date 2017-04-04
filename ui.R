library(shiny)
fullStats <- read.table("fullStats.txt")
# Define UI for application that draws a histogram
fluidPage(
  
navbarPage("NBA Stats", 
  tabPanel("Plot",
    sidebarLayout(
     sidebarPanel(
      
      selectizeInput("Player", label = h3("Select Player"), selected=NULL, multiple=TRUE, choices=fullStats$PLAYER),
      
      
      sliderInput("Season", label = h3("Select Season"), sep = "", min = 1996, 
                  max = 2016, value = c(2010,2016)),
      
      
      selectizeInput("Team", label = h3("Select Team"),
                  choices = list("Atlanta Hawks" = "ATL", "Brooklyn Nets" = "BKN", "Boston Celtics" = "BOS", "Charlotte Hornets" = "CHA", "Chicago Bulls" = "CHI", "Cleveland Cavaliers" = "CLE", "Dallas Mavericks" = "DAL", "Denver Nuggets" = "DEN", "Detroit Pistons" = "DET", "Golden State Warriors" = "GSW", "Houston Rockets" = "HOU", "Indiana Pacers" = "IND", "LA Clippers" = "LAC", "Los Angeles Lakers" = "LAL", "Memphis Grizzlies" = "MEM", "Miami Heat" = "MIA" ,"Milwaukee Bucks" = "MIL","Minnestota Timberwolves" = "MIN", "New Orleans Pelicans" = "NOP","New York Knicks" = "NYK","Oklahoma City Thunder" = "OKC","Orlando Magic" = "ORL", "Philadelphia 76ers" = "PHI", "Phoenix Suns" = "PHX", "Portland Trail Blazers" = "POR", "Sacramento Kings" = "SAC", "San Antonio Spurs" = "SAS", "Toronto Raptors" = "TOR", "Utah Jazz" = "UTA", "Washington Wizards" = "WAS"),
                  selected = NULL, multiple = TRUE),                              
      
      checkboxGroupInput("Position", label = h3("Select Position"),
                         choices = list("Center" = "C", "Guard" = "G","Small Forward" = "F"),
                         selected = "Center")
      
      
    ),
    
    mainPanel(
   
      plotOutput("NBAplot", 
                click = "plot_click"
                # brush = "plot_brush"
                 ), 
      
      helpText("This table will display the statistics of the player you click on the graph:"),
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
  tabPanel("Machine Learning",
           plotOutput("Heatmap", 
                      click = "heatmap_plot_click"), 
           
           column(width = 12,
                  verbatimTextOutput("heatmap_click_info"))
           )

)
)



  


