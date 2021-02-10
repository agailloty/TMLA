importComponent <- function(path) {
  loadEnvironment <- new.env()
  source(path, loadEnvironment)
  return(
    loadEnvironment
  )
}