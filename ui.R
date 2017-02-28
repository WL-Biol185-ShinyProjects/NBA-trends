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
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
    )
  )
  ggplot(aes(Data$Season, Data$PlusMinusTotal)) + geom_point()
  
)