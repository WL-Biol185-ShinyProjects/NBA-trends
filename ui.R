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
                           choices = list("Atlanta Hawks" = "ATL", "Brooklyn Nets" = "BKN", "Boston Celtics" = "BOS", "Charlotte Hornets" = "CHA", "Chicago Bulls" = "CHI", "Cleveland Cavaliers" = "CLE", "Dallas Mavericks" = "DAL", "Denver Nuggets" = "DEN", "Detroit Pistons" = "DET", "Golden State Warriors" = "GSW", "Houston Rockets" = "HOU", "Indiana Pacers" = "IND", "LA Clippers" = "LAC", "Los Angeles Lakers" = "LAL", "Memphis Grizzlies" = "MEM", "Miami Heat" = MIA", "MIL" = 17, "MIN" = 18, "NOP" = 19, "NYK"= 20, "OKC"= 21, "ORL" = 22, "PHI" = 23, "PHX" = 24, "POR" = 25, "SAC" = 26, "SAS" = 27, "TOR" = 28, "UTA" = 29, "WAS" = 30 ),
                           selected = 1, multiple = TRUE),
        
        checkboxGroupInput("Position", label = h3("Select Position"),
                           choices = list("Center" = "C", "Guard" = "G","Small Forward" = "F"),
                           selected = 1)
        
    
  ),
  
    mainPanel(
 
      plotOutput("NBAplot"), 
      
      selectInput("XInput", label="X Input", choices = list("Age"="AGE", "Games Played" = "GP", "Wins"="W", "Losses" ="L", "Average Minutes Per Game"="MIN", "Double Doubles"="DD2", "Triple Doubles"="TD2", "Personal Fouls"="PF", "Blocks"="BLK", "Steals"="STL", "Turnovers"="TOV", "Assists"="AST", "Rebounds"="REB", "Defensive Rebounds"="DREB", "Offensive Rebounds"="OREB","Free Throw Percentage"="FT%", "Free Throw Attempts"="FTA", "Free Throws Made"="FTM", "Three Point Attempts"="3PA", "Three Point Made"="3PM", "Field Goal Attempt"="FGA", "Field Goal Misses"="FGM", "Average Points Per Game"="FG%", "Plus/Minus Score"="PLUSMINUS", "Field Goal Percentage"="FG%", "Three Point Percentage"="3P%")), 
      selectInput("YInput", label="Y Input", choices = list("Age"="AGE", "Games Played" = "GP", "Wins"="W", "Losses" ="L", "Average Minutes Per Game"="MIN", "Double Doubles"="DD2", "Triple Doubles"="TD2", "Personal Fouls"="PF", "Blocks"="BLK", "Steals"="STL", "Turnovers"="TOV", "Assists"="AST", "Rebounds"="REB", "Defensive Rebounds"="DREB", "Offensive Rebounds"="OREB","Free Throw Percentage"="FT%", "Free Throw Attempts"="FTA", "Free Throws Made"="FTM", "Three Point Attempts"="3PA", "Three Point Made"="3PM", "Field Goal Attempt"="FGA", "Field Goal Misses"="FGM", "Average Points Per Game"="FG%", "Plus/Minus Score"="PLUSMINUS", "Field Goal Percentage"="FG%", "Three Point Percentage"="3P%")),
      selectInput("ColorBy", label="Color By:", choices = list("Position"="POSITION", "Team"= "TEAM", "Season"="SEASON", "Age"="AGE", "Games Played" = "GP", "Wins"="W", "Losses" ="L", "Average Minutes Per Game"="MIN", "Double Doubles"="DD2", "Triple Doubles"="TD2", "Personal Fouls"="PF", "Blocks"="BLK", "Steals"="STL", "Turnovers"="TOV", "Assists"="AST", "Rebounds"="REB", "Defensive Rebounds"="DREB", "Offensive Rebounds"="OREB","Free Throw Percentage"="FT%", "Free Throw Attempts"="FTA", "Free Throws Made"="FTM", "Three Point Attempts"="3PA", "Three Point Made"="3PM", "Field Goal Attempt"="FGA", "Field Goal Misses"="FGM", "Average Points Per Game"="FG%", "Plus/Minus Score"="PLUSMINUS", "Field Goal Percentage"="FG%", "Three Point Percentage"="3P%"))
  
)
)
)
  


