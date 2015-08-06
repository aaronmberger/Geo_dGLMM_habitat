Convert_LL_to_UTM_Fn <-
function( Lon, Lat, zone="10" ){
  Tmp = cbind('PID'=1,'POS'=1:length(Lon),'X'=Lon,'Y'=Lat)
  attr(Tmp,"projection") = "LL"
  attr(Tmp,"zone") = zone
  tmpUTM = convUL(Tmp)                                                         #$
  return( tmpUTM )
}