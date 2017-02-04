library("shiny")

shinyUI(fluidPage(
        titlePanel("Predict Horsepower from MPG"),
        sidebarLayout(
        sidebarPanel(    
                sliderInput("sliderMPG", "Guess at the MPG", value = 20, min = 0, max = 30, step = 0.05),
                checkboxInput("showModel1", "Show/Hide Model 1", value=TRUE),
                checkboxInput("showModel2", "Show/Hide Model 2", value=TRUE),
                submitButton("Submit")
                ), 
        mainPanel(    
                plotOutput('plot'),  
                h3("Predicted Horsepower from Model 1:"),
                textOutput("pred1"),
                h3("Predicted Horsepower from Model 2:"),
                textOutput("pred2")
        )
        )
))

