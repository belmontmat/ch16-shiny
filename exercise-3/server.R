### Exercise 3 ###

library(shiny)
library(ggplot2)
# Create a shiny server that creates a scatterplot. 
server <- function(input,output){
# It should take as an input the x_var, y_var, color, and size
# Save the result of `renderPlot` to output$scatter
  output$scatter <- renderPlot({
    # Store x and y values to plot
  x_var <- mpg[[input$x]]
  y_var <- mpg[[input$y]]

    # Store the title of the graph in a variable
  title <- "Scatter Plot"
    
    # Create ggplot scatter
    my_plot <- ggplot(data = mpg) + 
    geom_point(mapping = aes(x = x_var, y = y_var),
         color = input$color,
         size = input$size) +
    labs(title = title, x = input$x, y = input$y)
    return(my_plot)
    })
}
shinyServer(server)