#' @title Alation Get Function
#' 
#' @details 
#' 
#' @description Get helper function for R2Alation package.
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

AlationGet <- function(url, 
                       token,
                       verbose_output = FALSE){

  if(verbose_output == TRUE){
    report_request_raw <- GET(url,
                            add_headers(Token = token),
                            verbose())
  } else {
    report_request_raw <- GET(url,
                            add_headers(Token = token))
  }
    readable_response <- fromJSON(content(report_request_raw, 
                                    as = "text",
                                    type="application/json", 
                                    encoding = "UTF-8"), 
                            flatten = TRUE)
                            
  readable_response
}
