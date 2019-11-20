#' RT
#'
#' Computes the value of Required Recovery Time following scheme adopted in ISO 11079. Valid under 10 Celsius degree.
#'
#' @param numeric t Air temperature in Celsius degrees.
#' @param numeric rh Air Relative humidity in percentage.
#' @param numeric wind Windspeed in meter per second.
#' @param numeric trad Mean radiant temperature in Celsius degree.
#' @param numeric M Metabolic work in Watt per mq of the subject.
#' @param numeric W Mechanical work rate in Watt per mq of the subject.
#' @param numeric clo Available basic clothing insulation in clo.
#' @param numeric p  Air permeability of clothing ensemble lt on meter per second.
#' @param numeric w  Walking speed in meter per second.
#' @return RT
#'
#' @author  Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @author  Ingvar Holmer. R adaptation Istituto di Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords Recovery Time. 
#' @references ISO 11079, 2007-12-15, ERGONOMICS OF THE THERMAL ENVIRONMENT - DETERMINATION AND INTERPRETATION OF COLD STRESS WHEN USING REQUIRED CLOTHING INSULATION (IREQ) AND LOCAL COOLING EFFECTS.
#'
#' @export
#'
#'
#'
#'

RT=function(t,rh,wind,trad,M,W,clo,p,w) {
                         ct$assign("t", as.array(t))
                         ct$assign("rh", as.array(rh))
                         ct$assign("v", as.array(wind))
                         ct$assign("Tr", as.array(trad))
                         ct$assign("M", as.array(M))
                         ct$assign("W", as.array(W))
                         ct$assign("Icl", as.array(clo))
                         ct$assign("p", as.array(p))
                         ct$assign("w", as.array(w))
                         ct$eval("var res=[]; for(var i=0, len=Ta.length; i < len; i++){ res[i]=RT(Ta[i],rh[i],v[i],Tr[i],M[i],W[i],Icl[i],p[i],w[i])};")
                         res=ct$get("res")
                         return(ifelse(res==9999,NA,res))
}

