library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("Filter by"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
        actionButton("All", label = "All"),

        textInput("Player", label = h3("Filter by player"), value = "Enter player name here"),
       

        sliderInput("Season", label = h3("Filter by season"), sep = "", min = 1996, 
                         max = 2016, value = c(2010,2016)),

      
        checkboxGroupInput("Team", label = h3("Filter by team"), 
                         choices = list("Choice 1"=1),
                         selected = 1)

    ),
 
    
    # Show a plot of the generated distribution
  
    mainPanel(
 
      actionButton("PPG", label = "Points Per Game"),
      actionButton("PlusMinus", label = "Plus/Minus Score"),
      actionButton("FGPer", label = "Field Goal Percentage"),
      actionButton("ThreePtPer", label = "Three Point Percentage"),
      actionButton("Salary", label = "Salary")
      
    )
  )


)

  


