library(shiny)

tagList(
  
  tags$head(
    tags$title("TMLA - The Machine Learning App"),
    tags$link(href = "skin/styles.css", rel = "stylesheet")
  ), 
  
  navbarPage(
    id = "Navig",
    title = h1(" EIVE - Economic Impacts of Volcanic Eruptions"),
    fluid = TRUE,
    collapsible = TRUE,
    
    tabPanel("Gailloty")
  )
)