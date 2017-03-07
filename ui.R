library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("NBA Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
<<<<<<< HEAD
      textInput("Player", label = h3("Input Player Name"), value = "Enter player name here"),
         # hr(),
         #fluidRow(column(3, verbatimTextOutput("value")))

       sliderInput("Season", label = h3("Season Selection"), min = 1996, 
                         max = 2016, value = c(2010,2016))
        
        checkboxGroupInput("checkGroup", label = h3("Checkbox group"), 
                         choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                         selected = 1),

=======
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
>>>>>>> 68a239fb3c3be658ecc1b69691c85a95d8e5a0c5
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
