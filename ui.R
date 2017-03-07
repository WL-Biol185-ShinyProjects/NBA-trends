library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("NBA Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      textInput("Player", label = h3("Input Player Name"), value = "Enter player name here"),
         # hr(),
         #fluidRow(column(3, verbatimTextOutput("value")))

       sliderInput("Season", label = h3("Season Selection"), min = 1996, 
                         max = 2016, value = c(2010,2016))
        
        checkboxGroupInput("checkGroup", label = h3("Checkbox group"), 
                         choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                         selected = 1),

    ),
 
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
      
    )
  )
  
)