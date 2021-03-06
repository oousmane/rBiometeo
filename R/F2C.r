#' F2C
#'
#' Converts temperature from Fahrenheit degree (degF)  to Celsius degree (degC).
#'
#' @param F numeric Temperature in Fahrenheit degrees (degF)
#' @return Celsius degrees
#'
#' @author    Istituto per la Bioeconomia CNR Firenze Italy  Alfonso Crisci \email{alfonso.crisci@@ibe.cnr.it}
#' @keywords  F2C 
#' 
#' @export
#'
#'
#'
#'

F2C=function(F) {
                         ct$assign("F", as.array(F))
                         ct$eval("var res=[]; for(var i=0, len=F.length; i < len; i++){ res[i]=F2C(F[i])};")
                          res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}

