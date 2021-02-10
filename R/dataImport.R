# This script intends to build a data import logic for the app. 
# The app can read from a various type of data
# The idea is to enable the user to load a dataset and make 
# some preparation before it is imported

fileFormats <- c("Text", "Excel", "SPSS", "SAS", "Stata", "Rdata")

fileFormatsUI <- function(fileFormat) {
  return (
    div(
      class = "fileFormat", 
      actionButton(inputId = paste0("dataImport_", fileFormat), label = fileFormat)
    )
  )
}

importDataFormatUI <- function() {
  modalDialog(
    title = "Import dataset",
    size = "s",
    div(class = "importDataFormatUI",
      lapply(fileFormats, fileFormatsUI)
    )
  )
}

commonDataImportInterface <- function() {
  div(
    sidebarLayout(
      sidebarPanel(
        h2("Please select the dataset"),
        fileInput("dataFileInput", label = "Select a file")
      ),
      mainPanel(
        h1("Preview data"),
        # tableOutput()
      )
    )
  )
}

commonDataImportInterfaceUI <- function() {
  modalDialog(
    size = "l", 
    commonDataImportInterface()
  )
}
