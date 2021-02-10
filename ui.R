library(shiny)


tagList(
  tags$head(
    tags$title("TMLA - The Machine Learning App"),
    tags$link(rel = "stylesheet", type="text/css", href="www/skin/styles.css"),
    
  ), 
  
  tags$header(
    id = "app-header",
    h1("TMLA - The Machine Learning App")
  ),
  
  navbarPage(
    title = "TMLA",
    tabPanel(""),
    tabPanel("Test", 
             includeMarkdown("README.Rmd")),
    tabPanel("Build", 
             tabsetPanel(
               tabPanel("Data Import"),
               tabPanel("Algorithm"),
               tabPanel("AutoML")
             ))
  )
)