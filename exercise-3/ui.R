# UI for scatterplot
library(shiny)
library(ggplot2)

# Get a vector of column names (from `mpg`) to use as select inputs
select_values <- colnames(mpg)

# Create a shinyUI with a `fluidPage` layout
ui <- fluidPage(
  # A page header
  h1("Exercise 3"),
  
  # Add a select input for the x variable
  selectInput("x",
            "X Variable",
            choices = select_values),
  
  # Add a select input for the y variable
  selectInput("y",
            "Y Variable",
            choices = select_values),

  # Add a sliderInput to set the size of each point
  sliderInput("size",
              "Point Size",
              min = 1,
              max = 10,
              value = 5),

  # Add a selectInput that allows you to select a color from a list of choices
  selectInput("color",
              "Color Choice",
              choices = list("Red" = "red", "Blue" = "blue", "Green" = "green")
              ),


  # Plot the output with the name "scatter"
  plotOutput("scatter")
)
shinyUI(ui)