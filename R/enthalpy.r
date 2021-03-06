#' enthalpy
#'
#' Calculates the enthalpy of air/water vapor mixture [kJ/kg]. Inputs are dry-bulb temperature [degC] and humidity ratio [unitless]. 
#'
#' @param t numeric Air temperature in degC.
#' @param hum_ratio numeric Humidity ratio.
#' @return enthalpy
#'
#'
#' @author    Istituto per la Bioeconomia CNR Firenze Italy  Alfonso Crisci \email{alfonso.crisci@@ibe.cnr.it}
#' @keywords  enthalpy 
#' 
#' @export
#'
#'
#'
#'

enthalpy=function(t,hum_ratio) {
                         ct$assign("t", as.array(t))
                         ct$assign("hum_ratio", as.array(hum_ratio))
                         ct$eval("var res=[]; for(var i=0, len=t.length; i < len; i++){ res[i]=enthalpy(t[i],hum_ratio[i])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}



