# load and save panel data from pder r-package

library(plm)

panels.df <- c('CallBacks', 'CoordFailure', 'DemocracyIncome', 'DemocracyIncome25', 'Dialysis', 'Donors', 'EvapoTransp', 
               'FinanceGrowth', 'ForeignTrade', 'GiantsShoulders', 'HousePricesUS', 
               'IncomeMigrationH', 'IncomeMigrationV', 'IneqGrowth', 'LandReform', 'LateBudgets', 
               'Mafia', 'MagazinePrices', 'RDPerfComp', 'RDSpillovers', 'Reelection', 'RegIneq', 
               'ScrambleAfrica', 'SeatBelt','Seniors', 'Solow', 
               'TexasElectr', 'Tileries', 'TobinQ', 'TradeEU','TradeFDI','TurkishBanks', 'TwinCrises') 

loaded.df <- data(list=panels.df, package = "pder")

# Wages <- pdata.frame(Wages, index=595)
# Wages <- as.data.frame(Wages)

for (ds in loaded.df) {
  print(ds)
  write.csv( x=get(ds), file=paste0(ds, '.csv'), row.names=FALSE )
}

rm(list=ls())