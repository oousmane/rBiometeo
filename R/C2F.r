#' C2F
#'
#' Convert temperature from Celsius degree to Fahrenheit degree.
#'
#' @param numeric C Temperature in degC
#' @return 
#' 
#' @author  Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  temperature 
#' 
#' @export
#'
#'
#'
#'

C2F=function(C) {
                         ct$assign("C", as.array(C))
                         ct$eval("var res=[]; for(var i=0, len=C.length; i < len; i++){ res[i]=C2F(C[i])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}

