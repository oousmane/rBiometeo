#' wetbulb
#'
#' This function calculate the natural wetbulb temperature.
#'
#' @param t numeric        Air temperature in degC.
#' @param rh numeric       Relative humidity in percentage.
#' @param wind numeric     Mean Wind speed in meter per second.
#' @param pair numeric     Air pressure in millibar or hPa. Default 1010 hPa.
#' @param solar  numeric   Global solar radiation in Watt on mq.
#' @param zenith numeric   Zenith angle in decimal degrees.
#' @param alb_sfc numeric  Mean albedo of surroundings. Default is 0.4.
#' @param fdir numeric     Ratio of directed solar respect to the diffuse.Default is 0.8.
#' @param maxair numeric   Upper bound of search range referred to air temperature in degC. Default is 10.
#' @param minair numeric   Lower bound of search range referred to air temperature in degC. Default is 10.
#' @param prec numeric      Precision of outcomes.Default is 0.01. 
#' @return natural wetbulb in degC
#'
#'
#' @author  Istituto per la Bioeconomia CNR Firenze Italy  Alfonso Crisci \email{alfonso.crisci@@ibe.cnr.it}
#' @keywords  wetbulb 
#' @export
#'

wetbulb=function(t,rh,wind,solar=0,zenith=0,pair,alb_sfc=0.4,fdir=0.8,maxair=10,minair=2,prec=0.01) {
                         if (is.null(press)) {press=1010}
                         if (length(solar) != length(t)) {solar=rep(solar,length(t));
                                                          zenith=rep(zenith,length(t));
                                                       }
                         irad=1
                         ct$assign("t", as.array(t))
                         ct$assign("rh", as.array(rh))
                         ct$assign("wind", as.array(wind))
                         ct$assign("pair", as.array(pair))
                         ct$assign("alb_sfc", as.array(alb_sfc))
                         ct$assign("fdir", as.array(fdir))
                         ct$assign("irad", as.array(irad))
                         ct$assign("maxair", as.array(maxair))
                         ct$assign("minair", as.array(minair))
                         ct$assign("prec", as.array(prec))
                         ct$eval("var res=[]; for(var i=0, len=t.length; i < len; i++) { res[i]=natural_wetbulb(t[i],rh[i],wind[i],solar[i],zenith[i],pair[0],alb_sfc[0],fdir[0],irad[0],maxair[0],minair[0],prec[0])};")
                         res=ct$get("res")
                         return(ifelse(!is.numeric(res),NA,res))
}

