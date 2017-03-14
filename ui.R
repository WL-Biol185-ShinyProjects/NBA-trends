library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Filter by"),
  
  sidebarLayout(
    sidebarPanel(
        actionButton("All", label = "All"),

        textInput("Player", label = h3("Select Player"), value = "Enter player name here"),
       

        sliderInput("Season", label = h3("Select Season"), sep = "", min = 1996, 
                         max = 2016, value = c(2010,2016)),

        
        selectInput("Team", label = h3("Select Team"),
                           choices = list("ATL" = "ATL", "BKN" = "BKN", "BOS" = "BOS", "CHA" = "CHA", "CHI" = "CHI", "CLE" = "CLE", "DAL" = "DAL", "DEN" = "DEN", "DET" = "DET", "GSW" = "GSW", "HOU" = 11, "IND" = 12, "LAC" = 13, "LAL" = 14, "MEM" = 15, "MIA" = 16, "MIL" = 17, "MIN" = 18, "NOP" = 19, "NYK"= 20, "OKC"= 21, "ORL" = 22, "PHI" = 23, "PHX" = 24, "POR" = 25, "SAC" = 26, "SAS" = 27, "TOR" = 28, "UTA" = 29, "WAS" = 30 ),
                           selected = 1, multiple = TRUE),
        
        checkboxGroupInput("Position", label = h3("Select Position"),
                           choices = list("Center" = "C", "Guard" = "G","Small Forward" = "F"),
                           selected = 1)
        
    
  ),
  
    mainPanel(
 
      plotOutput("NBAplot"), 
      
      selectInput("XInput", label="X Input", choices = list("Season"="SEASON", "Age"="AGE", "Games Played" = "GP", "Wins"="W", "Losses" ="L", "Average Minutes Per Game"="MIN", "Double Doubles"="DD2", "Triple Doubles"="TD3", "Personal Fouls"="PF", "Blocks"="BLK", "Steals"="STL", "Turnovers"="TOV", "Assists"="AST", "Rebounds"="REB", "Defensive Rebounds"="DREB", "Offensive Rebounds"="OREB","Free Throw Percentage"="FT%", "Free Throw Attempts"="FTA", "Free Throws Made"="FTM", "Three Point Attempts"="3PA", "Three Point Made"="3PM", "Field Goal Attempt"="FGA", "Field Goal Misses"="FGM", "Average Points Per Game"="PTS", "Plus/Minus Score"="PLUSMINUS", "Field Goal Percentage"="FG%", "Three Point Percentage"="3P%")), 
      selectInput("YInput", label="Y Input", choices = list("Age"="AGE", "Games Played" = "GP", "Wins"="W", "Losses" ="L", "Average Minutes Per Game"="MIN", "Double Doubles"="DD2", "Triple Doubles"="TD3", "Personal Fouls"="PF", "Blocks"="BLK", "Steals"="STL", "Turnovers"="TOV", "Assists"="AST", "Rebounds"="REB", "Defensive Rebounds"="DREB", "Offensive Rebounds"="OREB","Free Throw Percentage"="FT%", "Free Throw Attempts"="FTA", "Free Throws Made"="FTM", "Three Point Attempts"="3PA", "Three Point Made"="3PM", "Field Goal Attempt"="FGA", "Field Goal Misses"="FGM", "Average Points Per Game"="PTS", "Plus/Minus Score"="PLUSMINUS", "Field Goal Percentage"="FG%", "Three Point Percentage"="3P%")),
      selectInput("ColorBy", label="Color By:", choices = list("Position"="POSITION", "Team"= "TEAM", "Season"="SEASON", "Age"="AGE", "Games Played" = "GP", "Wins"="W", "Losses" ="L", "Average Minutes Per Game"="MIN", "Double Doubles"="DD2", "Triple Doubles"="TD2", "Personal Fouls"="PF", "Blocks"="BLK", "Steals"="STL", "Turnovers"="TOV", "Assists"="AST", "Rebounds"="REB", "Defensive Rebounds"="DREB", "Offensive Rebounds"="OREB","Free Throw Percentage"="FT%", "Free Throw Attempts"="FTA", "Free Throws Made"="FTM", "Three Point Attempts"="3PA", "Three Point Made"="3PM", "Field Goal Attempt"="FGA", "Field Goal Misses"="FGM", "Average Points Per Game"="FG%", "Plus/Minus Score"="PLUSMINUS", "Field Goal Percentage"="FG%", "Three Point Percentage"="3P%"))
  
)
)
)
  


