library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("NBA Plus/Minus Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
<<<<<<< HEAD
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 100,
<<<<<<< HEAD
                  value = 30),
=======
                  value = 30)
>>>>>>> 2e9266e5654b2021916e12f558f006299a38028d
      actionButton()
=======
      textInput("text", label = h3("Text input"), value = "Enter text..."),
      
      hr(),
      fluidRow(column(3, verbatimTextOutput("value")))
>>>>>>> a0fb752bd75f14877e43b8d36a143182170045e6
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
<<<<<<< HEAD

)



=======
  
)
>>>>>>> a0fb752bd75f14877e43b8d36a143182170045e6
