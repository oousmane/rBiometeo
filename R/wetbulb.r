#' wetbulb
#'
#' DESCRIPTION
#'
#' @param numeric t       Air temperature in degC.
#' @param numeric rh      Air Relative humidity in percentage (%)
#' @param numeric wind    Wind velocity in meter per second.
#' @param numeric pair    Air pressure in hPa or millibar.
#' @param numeric solar   Global radiation in watt on mq.
#' @param numeric zenith  Solar zenith in decimal degrees.
#' @param numeric alb_sfc Albedo of surrounding surfaces. Default is 0.4.
#' @param numeric fdir    Ratio between directed and diffuse ( isotropic) radiation
#' @param numeric maxair  Upper bound of search range referred to air temperature in degC. Default is 10.
#' @param numeric minair  Lower bound of search range referred to air temperature in degC. Default is 10.
#' @param numeric prec    Precision of outcomes.Default is 0.01.  
#' @return wet-bulb temperature in degC.
#'
#'
#' @author  Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  wetbulb 
#' @references  
#' @export
#'
#'
#'
#'
wetbulb=function(t,rh,wind,solar=0,zenith=0,pair,alb_sfc=0.4,fdir=0.8,maxair=10,minair=2,prec=0.01) {
                         if (is.null(press)) {press=1010}
                         if (length(solar) != length(t)) {solar=rep(solar,length(t));
                                                        zenith=rep(zenith,length(t));
                                                       }

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

