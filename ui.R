library(shiny)

shinyUI(
  fluidPage(
    titlePanel((h1(strong(em("*** === Malaysian Kitchen Footsteps === ***")),align="center"))),
    sidebarLayout(
      sidebarPanel(
        helpText(h5(strong("Malaysia is a country with rich culture.",br(), br(),
                    "The population is made of mainly Malay, Chinese and Indian.",br(), br(),
                    "Malaysian food, of course is very reflective of the diversity of the people staying here.",br(), br(),
                    "Have a look at the recipe of some Malaysia local food right here!"), style="color:red")),
        selectInput("type",h3(strong("Please select the type of cuisine: ")), c("Malay","Chinese","Indian")),
        selectInput("option",h3(strong("Please select the option: ")), c("Food","Kueh")),
        tags$style("body{background-color: coral; color:black}")
      ),
      
      mainPanel(
        uiOutput("url",align="center")
      
        )
      )
  )
  )
