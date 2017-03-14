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
                           choices = list("ATL" = 1, "BKN" = 2, "BOS" = 3, "CHA" = 4, "CHI" = 5, "CLE" = 6, "DAL" = 7, "DEN" = 8, "DET" = 9, "GSW" = 10, "HOU" = 11, "IND" = 12, "LAC" = 13, "LAL" = 14, "MEM" = 15, "MIA" = 16, "MIL" = 17, "MIN" = 18, "NOP" = 19, "NYK"= 20, "OKC"= 21, "ORL" = 22, "PHI" = 23, "PHX" = 24, "POR" = 25, "SAC" = 26, "SAS" = 27, "TOR" = 28, "UTA" = 29, "WAS" = 30 ),
                           selected = 1, multiple = TRUE),
        
        checkboxGroupInput("Position", label = h3("Select Position"),
                           choices = list("Center" = 1, "Guard" = 2,"Small Forward" = 35),
                           selected = 1)
        
    
  ),
  
    mainPanel(
 
      plotOutput("NBAplot"), 
      
      selectInput("XInput", label="X Input", choices = list("Age"=1, "Games Played" = 2, "Wins"=3, "Losses" =4, "Average Minutes Per Game"=5, "Double Doubles"=6, "Triple Doubles"=7, "Personal Fouls"=8, "Bocks"=9, "Steals"=9, "Turnovers"=10, "Assists"=11, "Rebounds"=12, "Defensive Rebounds"=13, "Offensive Rebounds"=13,"Free Throw Percentage"=14, "Free Throw Attempts"=15, "Free Throws Made"=16, "Three Point Attempts"=17, "Three Point Made"=18, "Field Goal Attempt"=19, "Field Goal Misses"=20, "Average Points Per Game"=21, "Plus/Minus Score"=22, "Field Goal Percentage"=23, "Three Point Percentage"=24)), 
      selectInput("YInput", label="Y Input", choices = list("Age"=1, "Games Played" = 2, "Wins"=3, "Losses" =4, "Average Minutes Per Game"=5, "Double Doubles"=6, "Triple Doubles"=7, "Personal Fouls"=8, "Bocks"=9, "Steals"=9, "Turnovers"=10, "Assists"=11, "Rebounds"=12, "Defensive Rebounds"=13, "Offensive Rebounds"=13,"Free Throw Percentage"=14, "Free Throw Attempts"=15, "Free Throws Made"=16, "Three Point Attempts"=17, "Three Point Made"=18, "Field Goal Attempt"=19, "Field Goal Misses"=20, "Average Points Per Game"=21, "Plus/Minus Score"=22, "Field Goal Percentage"=23, "Three Point Percentage"=24))

  )
)
)

  


