library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Filter by"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        actionButton("All", label = "All"),

        textInput("Player", label = h3("Select Player"), value = "Enter player name here"),
       

        sliderInput("Season", label = h3("Select Season"), sep = "", min = 1996, 
                         max = 2016, value = c(2010,2016)),

        
        checkboxGroupInput("Team", label = h3("Select Team"),
                           choices = list("ATL" = 1, "BKN" = 2, "BOS" = 3, "CHA" = 4, "CHI" = 5, "CLE" = 6, "DAL" = 7, "DEN" = 8, "DET" = 9, "GSW" = 10, "HOU" = 11, "IND" = 12, "LAC" = 13, "LAL" = 14, "MEM" = 15, "MIA" = 16, "MIL" = 17, "MIN" = 18, "NOP" = 19, "NYK"= 20, "OKC"= 21, "ORL" = 22, "PHI" = 23, "PHX" = 24, "POR" = 25, "SAC" = 26, "SAS" = 27, "TOR" = 28, "UTA" = 29, "WAS" = 30 ),
                           selected = 1),
        
        checkboxGroupInput("Position", label = h3("Select Position"),
                           choices = list("Center" = 1, "Guard" = 2,"Small Forward" = 35),
                           selected = 1)
        
    ),
  
    mainPanel(
 
      actionButton("Age", label = "Age"),
      actionButton("GP", label = "Games Played"),
      actionButton("W", label = "Wins"),
      actionButton("L", label = "Losses"),
      actionButton("MIN", label = "Average Minutes Played per Game"),
      actionButton("DD2", label = "Double Double"),
      actionButton("TD3", label = "Triple Double"),
      actionButton("PF", label = "Personal Foul"),
      actionButton("BLK", label = "Blocks"),
      actionButton("STL", "Steals"),
      actionButton("TOV", label = "Turnovers"),
      actionButton("AST", label = "Assists"),
      actionButton("REB", label = "Rebounds"),
      actionButton("DREB", label = "Defensive Rebounds"),
      actionButton("OREB", label = "Offensive Rebounds"),
      actionButton("FT", label = "Free Throw Percentage"),
      actionButton("FTA", label = "Free Throw Attempts"),
      actionButton("FTM", label = "Free Throw Made"),
      actionButton("ThreePtA", label = "Three Point Attempt"),
      actionButton("ThreePtM", label = "Three Point Made"),
      actionButton("FGA", label = "Field Goal Attempt"),
      actionButton("FGM", label = "Field Goal Misses"),
      actionButton("PPG", label = "Points Per Game"),
      actionButton("PlusMinus", label = "Plus/Minus Score"),
      actionButton("FGPer", label = "Field Goal Percentage"),
      actionButton("ThreePtPer", label = "Three Point Percentage"),
  
      plotOutput("NBAplot"), 
      
      selectInput("XInput", label="X Input", choices = list()),
      selectInput("YInput", label="Y Input", choices = list()),
 

      actionButton("FGM", label = "Field Goal Made")


    )
  )


)

  


