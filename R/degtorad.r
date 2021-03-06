#' degtorad
#'
#' Conversion angles from decimal degrees to radians.
#'
#' @param angledeg numeric Angle in decimal degrees.
#' @return Angle in radians
#'
#'
#' @author  Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  degtorad 
#' 
#' @export
#'
#'
#'
#'

degtorad=function(angledeg) {
                         ct$assign("angledeg", as.array(angledeg))
                         ct$eval("var res=[]; for(var i=0, len=angledeg.length; i < len; i++){ res[i]=degToRad(angledeg[i])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}

