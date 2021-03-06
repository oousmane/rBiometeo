#' heat_index
#'
#' Calculate the heat index following the NOAA scheme.
#'
#' @param t numeric Air temperature in degC.
#' @param rh numeric Relative humidity in percentage.
#' @return heat index in degC.
#'
#'
#' @author    Istituto per la Bioeconomia CNR Firenze Italy  Alfonso Crisci \email{alfonso.crisci@@ibe.cnr.it}
#' @keywords   NOAA heat index 
#' @references NOAA index from George Winterling based on SteadMan's work "The Assessment of Sultriness. Part I: A Temperature-Humidity Index Based on Human Physiology and Clothing Science, R. G. Steadman, Journal of Applied Meteorology, July 1979, Vol 18 No7, pp 861 873. 
#' @export
#'
#'

heat_index=function(t,rh) {
                         ct$assign("t", as.array(t))
                         ct$assign("rh", as.array(rh))
                         ct$eval("var res=[]; for(var i=0, len=t.length; i < len; i++){ res[i]=heatindex(t[i],rh[i])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}



