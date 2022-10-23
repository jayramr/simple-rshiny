ui <- fluidPage(
  sliderInput("obs", "Observation Count",
    min = 0, max = 1000, value = 500
  ),
  plotOutput("Plot")
)
