#' sharlau_index_delta
#'
#' Computes the critical sharlau delta in Celsius degrees.
#'
#' @param numeric t Air temperature in Celsius degrees.
#' @param numeric rh Air Relative humidity in percentage.
#' @return 
#' 
#' @author  Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  sharlau_index_delta 
#' @references Scharlau, K., 1950, Einfuhrung eines Schwulemasstabes und Abgrenzung von Schwulezonen durch Isohygrothermen, Erdkunde, 4, 188 201.
#' @export
#'
#'
#'
#'

sharlau_index_delta=function(t,rh) {
                         ct$assign("t", as.array(t))
                         ct$assign("rh", as.array(rh))
                         ct$eval("var res=[]; for(var i=0, len=t.length; i < len; i++){ res[i]=sharlau_index_delta(t[i],rh[i])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}



