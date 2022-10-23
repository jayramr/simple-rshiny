server <- function(input, output) {
  output$Plot <- renderPlot({
    dist <- rnorm(input$obs)
    hist(dist,
       col="grey",
       xlab="Random values")
  })
}
