#' @title Get Data Sources
#' 
#' @details 
#' 
#' @description Get all data sources listed in your Alation Database
#' 
#' 
#' @param url
#' @param token
#' @param verbosity Toggle verbose output in request.
#' 
#' 
#' @return raw response
#' 
#' @export
#' 
#' 


GetDataSources <- function(baseurl,
                           token,
                           verbosity = FALSE){
  datasource_url <- "/catalog/datasource/"
  readable_response <- AlationGet(url = paste0(baseurl, datasource_url),
                                  token = token,
                                  verbose_output = verbosity)
  readable_response
}