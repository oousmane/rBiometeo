#' vpaTorr
#'
#' Calculate water vapor pressure in torr.
#'
#' @param t numeric Air temperature in degC.
#' @return vpa in Torr
#'
#'
#' @author Istituto per la Bioeconomia CNR Firenze Italy  Alfonso Crisci \email{alfonso.crisci@@ibe.cnr.it}
#' @keywords  vpaTorr 
#' 
#' @export
#'
#'
#'
#'

vpaTorr=function(t) {
                         ct$assign("T", as.array(t))
                         ct$eval("var res=[]; for(var i=0, len=T.length; i < len; i++){ res[i]=vpaTorr(T[i])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}

