library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2] 
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  
    
  })
  function(input, output) {
    
    # You can access the value of the widget with input$text, e.g.
    output$value <- renderPrint({ input$text })
  }
  
  p<-ggplot(Data, aes(Season, PlusMinusTotal)) + geom_point()
    print(p)
    
})
  