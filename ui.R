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
                 ), 
      
      column(width = 12,
             verbatimTextOutput("click_info")
      ),
      
      selectInput("XInput", label="X Input", choices = list("Season"="SEASON", "Age"="AGE", "Games Played" = "GP", "Wins"="W", "Losses" ="L", "Average Minutes Per Game"="MIN", "Double Doubles"="DD2", "Triple Doubles"="TD3", "Personal Fouls"="PF", "Blocks"="BLK", "Steals"="STL", "Turnovers"="TOV", "Assists"="AST", "Rebounds"="REB", "Defensive Rebounds"="DREB", "Offensive Rebounds"="OREB","Free Throw Percentage"="FT%", "Free Throw Attempts"="FTA", "Free Throws Made"="FTM", "Three Point Attempts"="3PA", "Three Point Made"="3PM", "Field Goal Attempt"="FGA", "Field Goal Misses"="FGM", "Average Points Per Game"="PTS", "Plus/Minus Score"="PLUSMINUS", "Field Goal Percentage"="FG%", "Three Point Percentage"="3P%")), 
      selectInput("YInput", label="Y Input", choices = list("Age"="AGE", "Games Played" = "GP", "Wins"="W", "Losses" ="L", "Average Minutes Per Game"="MIN", "Double Doubles"="DD2", "Triple Doubles"="TD3", "Personal Fouls"="PF", "Blocks"="BLK", "Steals"="STL", "Turnovers"="TOV", "Assists"="AST", "Rebounds"="REB", "Defensive Rebounds"="DREB", "Offensive Rebounds"="OREB","Free Throw Percentage"="FT%", "Free Throw Attempts"="FTA", "Free Throws Made"="FTM", "Three Point Attempts"="3PA", "Three Point Made"="3PM", "Field Goal Attempt"="FGA", "Field Goal Misses"="FGM", "Average Points Per Game"="PTS", "Plus/Minus Score"="PLUSMINUS", "Field Goal Percentage"="FG%", "Three Point Percentage"="3P%")),
      selectInput("ColorBy", label="Color By:", choices = list("Team" = "TEAM","Position" = "POSITION", "Player" = "PLAYER"))
      
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



  


