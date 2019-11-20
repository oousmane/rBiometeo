#' clomin_custom
#'
#' Calculate minimal clothing insulation value needed for thermal comfort.
#'
#' @param numeric t        Air temperature in degC.
#' @param numeric rh       Air Relative humidity in percentage.
#' @param numeric wind     Windspeed in meter per second.
#' @param numeric trad     Air temperature in degC.
#' @param numeric M        Metabolic rate of subject Watt per mq.
#' @param numeric W        Work rate of subject in Watt per mq.
#' @param numeric age      Age in years.
#' @param numeric mbody    Body Mass in kg. 
#' @param numeric ht       Heigth of subject in meters.
#' @param character gender Sex of the subject. Default is "male" otherwise "female".
#' @return 
#'
#'
#' @author  Istituto per la Bioeconomia Firenze Italy  Alfonso Crisci \email{a.crisci@@ibe.cnr.it}
#' @keywords  ocir #' 
#' @export
#'
#'
#'
#'

clomin_custom=function(t,rh,wind,trad,age,mbody,ht,gender="male")  {
  ct$assign("t", as.array(t))
  ct$assign("rh", as.array(rh))
  ct$assign("wind", as.array(wind))
  ct$assign("mtrad", as.array(trad))
  ct$assign("age", as.array(age))
  ct$assign("mbody", as.array(mbody))
  ct$assign("ht", as.array(ht))
  ct$assign("gender", as.array(gender))
  ct$eval("var res=[]; for(var i=0, len=t.length; i < len; i++){ res[i]=clomin_custom(t[i],rh[i],wind[i],mtrad[i],age[0],mbody[0],ht[0],gender[0])};")
  res=ct$get("res")
  return(ifelse(res==9999,NA,res))
}



