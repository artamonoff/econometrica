# load and save panel data from plm r-package

library(plm)

panels.df <- c('Cigar', 'Crime', 'EmplUK', 'Gasoline', 'Grunfeld', 'Hedonic', 'LaborSupply', 'Males', 'Parity', 'Produc', 'RiceFarms',
               'Snmesp', 'SumHes', 'Snmesp', 'Wages') 

loaded.df <- data(list=panels.df, package = "plm")

Wages <- pdata.frame(Wages, index=595)
Wages <- as.data.frame(Wages)

for (ds in loaded.df) {
  print(ds)
  write.csv( x=get(ds), file=paste0(ds, '.csv'), row.names=FALSE )
}

rm(list=ls())