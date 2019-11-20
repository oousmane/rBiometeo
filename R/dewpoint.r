#' dewpoint
#'
#' Computes the dewpoint temperature in Celsius degree following different schemes defined by formula of  saturation pressure 
#' ("NOAA","Sonntag","Paroscientific").
#'
#' @param numeric t Air temperature in Celsius degrees.
#' @param numeric rh Air Relative humidity in percentage.
#' @param character formula  Default is "NOAA".
#' @return 
#'
#'
#' @author  Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  dewpoint 
#' 
#' @export
#'
#'
#'
#'

dewpoint=function(t,rh,formula="NOAA") {
                         ct$assign("t", as.array(t))
                         ct$assign("rh", as.array(rh))
                         ct$assign("formula", as.array(formula))
                         ct$eval("var res=[]; for(var i=0, len=t.length; i < len; i++){ res[i]=dewpoint(t[i],rh[i],formula[0])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}

