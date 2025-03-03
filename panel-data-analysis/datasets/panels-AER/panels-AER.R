# load and save panel data from AER r-package

panels.df <- c('CigarettesSW', 'Fatalities', 'GSOEP9402', 'Guns', 'HealthInsurance', 'Municipalities', 'NaturalGas', 'OECDGas', 'PSID1976', 'PSID7682', 'USSeatBelts') 

loaded.df <- data(list=panels.df, package = "AER")

for (ds in loaded.df) {
  print(ds)
  write.csv( x=get(ds), file=paste0(ds, '.csv'), row.names=FALSE )
}

rm(list=ls())