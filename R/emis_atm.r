#' emis_atm
#'
#' Calculate air emissivity.
#'
#' @param numeric tk Air temperature in degK
#' @param numeric rh Air Relative humidity (%)
#' @return 
#'
#'
#' @author  Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  emis_atm 
#' 
#' @export
#'
#'
#'
#'

emis_atm=function(t,rh) {
                         ct$assign("t", as.array(t))
                         ct$assign("rh", as.array(rh/100))
                         ct$eval("var res=[]; for(var i=0, len=t.length; i < len; i++){ res[i]=emis_atm(ta[i],rh[i])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}



