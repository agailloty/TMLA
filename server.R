library(shiny)
source("R/usefulFunctions/utilityFunctions.R")

importData <- importComponent("R/dataImport.R")

shinyServer(function(input, output, session) {
  
  observeEvent(input$importData, {
    showModal(
      importData$importDataFormatUI()
    )
  })
  
  observeEvent(input$dataImport_Text, {
    showModal(
      importData$commonDataImportInterfaceUI()
    )
  })
}
)