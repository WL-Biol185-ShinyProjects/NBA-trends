library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("NBA Plus/Minus Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      textInput("text", label = h3("Text input"), value = "Enter text..."),
      
      hr(),
      fluidRow(column(3, verbatimTextOutput("value")))
<<<<<<< HEAD
=======
      
>>>>>>> 015444b3d56d6cc6a9da4b43d9005f116ade81b6
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
  
)