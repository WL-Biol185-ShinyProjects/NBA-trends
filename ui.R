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
                           selected = 1)
        
    ),
  
    mainPanel(
 
      actionButton("PPG", label = "Points Per Game"),
      actionButton("PlusMinus", label = "Plus/Minus Score"),
      actionButton("FGPer", label = "Field Goal Percentage"),
      actionButton("ThreePtPer", label = "Three Point Percentage"),
      actionButton("Salary", label = "Salary")
      
    )
  )


)

  


