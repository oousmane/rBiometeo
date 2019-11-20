#' diffusivity
#'
#' Calculate air diffusivity.
#'
#' @param numeric tk Air temperature in degK
#' @param numeric pair Air pressure  (hPa) 
#' @return 
#'
#'
#' @author  Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  diffusivity 
#' 
#' @export
#'
#'
#'
#'

diffusivity=function(t,Pair) {
                         ct$assign("Tair", as.array(tk))
                         ct$assign("Pair", as.array(pair))
                         ct$eval("var res=[]; for(var i=0, len=Tair.length; i < len; i++){ res[i]=diffusivity(Tair[i],Pair[i])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}



