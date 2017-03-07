library(shiny)

# Define UI for application that draws a histogram
fluidPage(
  
  # Application title
  titlePanel("NBA Data"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(

        textInput("Player", label = h3("Input Player Name"), value = "Enter player name here"),
       

        sliderInput("Season", label = h3("Season Selection"), min = 1996, 
                         max = 2016, value = c(2010,2016)),

      
        checkboxGroupInput("Team", label = h3("Select Team"), 
                         choices = (Data$Team),
                         selected = "GS")

    ),
 
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("distPlot")
      
    )
  )


)

  


