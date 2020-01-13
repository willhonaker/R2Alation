#' @title Alation Post Function
#' 
#' @details 
#' 
#' @description POST helper function for R2Alation package.
#' 
#' 
#' @param url
#' @param token
#' @param verbose_output Toggle verbose output in request.
#' 
#' 
#' @return raw response
#' 
#' @export
#' 
#' 


AlationPost <- function(url, 
                        token, 
                        body, 
                        remove_not_seen = FALSE,
                        verbose_output = FALSE){
  if(remove_not_seen){
    if(!grepl("bulk_metadata/extraction/", url)){
      stop("Invalid base URL for remove_not_seen parameter.\nMake sure you are using bulk_metadata/extraction/")
    }
    url <- paste0(url, "?remove_not_seen=true")
  }

  if(verbose_output == TRUE){
    report_request_raw <- POST(url,
                              add_headers(Token = token),
                              body = body,
                              verbose())
  } else {
    report_request_raw <- POST(url,
                        add_headers(Token = token),
                        body = body)
  }
  readable_response
}