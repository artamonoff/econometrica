# Panel data description

## Cigar

**Cigarette Consumption**

a panel of 46 observations from 1963 to 1992

- state state abbreviation
- year the year
- price price per pack of cigarettes
- pop population
- pop16 population above the age of 16
- cpi consumer price index (1983=100)
- ndi per capita disposable income
- sales cigarette sales in packs per capita
- pimin minimum price in adjoining states per pack of cigarettes

**Details**

total number of observations : 1380 

observation : regional

country : United States


**Source**: 

- Online complements to Baltagi (2001): https://www.wiley.com/legacy/wileychi/baltagi/
- Online complements to Baltagi (2013): https://bcs.wiley.com/he-bcs/Books?action=resource&bcsId=4338&itemId=1118672321&resourceId=13452

**References**

- Baltagi BH (2001). Econometric Analysis of Panel Data, 3rd edition. John Wiley and Sons ltd.
- Baltagi BH (2013). Econometric Analysis of Panel Data, 5th edition. John Wiley and Sons ltd.
- Baltagi B, Levin D (1992). “Cigarette taxation: Raising revenues and reducing consumption.” Structural Change and Economic Dynamics, 3(2), 321-335. https://EconPapers.repec.org/ RePEc:eee:streco:v:3:y:1992:i:2:p:321-335.
- Baltagi BH, Griffin JM, Xiong W (2000). “To Pool or Not to Pool: Homogeneous Versus Hetero- geneous Estimators Applied to Cigarette Demand.” The Review of Economics and Statistics, 82(1), 117-126. doi:10.1162/003465300558551, https://doi.org/10.1162/003465300558551.

## Crime

**Crime in North Carolina**

a panel of 90 observational units (counties) from 1981 to 1987

- county county identifier
- year year from 1981 to 1987
- crmrte crimes committed per person
- prbarr ’probability’ of arrest
- prbconv ’probability’ of conviction
- prbpris ’probability’ of prison sentence
- avgsen average sentence, days
- polpc police per capita
- density people per square mile
- taxpc tax revenue per capita
- region factor. One of ’other’, ’west’ or ’central’.
- smsa factor. (Also called "urban".) Does the individual reside in a SMSA (standard metropolitan statistical area)?
- pctmin percentage minority in 1980
- wcon weekly wage in construction
- wtuc weekly wage in transportation, utilities, communications 
- wtrd weekly wage in wholesale and retail trade
- wfir weekly wage in finance, insurance and real estate
- wser weekly wage in service industry
- wmfg weekly wage in manufacturing
- wfed weekly wage in federal government
- wsta weekly wage in state government
- wloc weekly wage in local government
- mix offence mix: face-to-face/other
- pctymle percentage of young males (between ages 15 to 24) 
- lcrmrte log of crimes committed per person
- lprbarr log of ’probability’ of arrest
- lprbconv log of ’probability’ of conviction
- lprbpris log of ’probability’ of prison sentence
- lavgsen log of average sentence, days
- lpolpc log of police per capita
- ldensity log of people per square mile
- ltaxpc log of tax revenue per capita
- lpctmin log of percentage minority in 1980
- lwcon log of weekly wage in construction
- lwtuc log of weekly wage in transportation, utilities, communications 
- lwtrd log of weekly wage in wholesale and retail trade
- lwfir log of weekly wage in finance, insurance and real estate
- lwser log of weekly wage in service industry
- lwmfg log of weekly wage in manufacturing
- lwfed log of weekly wage in federal government
- lwsta log of weekly wage in state government
- lwloc log of weekly wage in local government
- lmix log of offence mix: face-to-face/other
- lpctymle log of percentage of young males (between ages 15 to 24)

**Details**

total number of observations : 630 

observation : regional

country : United States

The variables l* (lcrmrte, lprbarr, ...) contain the pre-computed logarithms of the base variables as found in the original data set. Note that these values slightly differ from what R’s log() function yields for the base variables. In order to reproduce examples from the literature, the pre-computed logs need to be used, otherwise the results differ slightly.

**Source**

- Journal of Applied Econometrics Data Archive (complements Baltagi (2006)): http://qed.econ.queensu.ca/jae/2006-v21.4/baltagi/
- Online complements to Baltagi (2001): https://www.wiley.com/legacy/wileychi/baltagi/
- Online complements to Baltagi (2013): https://bcs.wiley.com/he-bcs/Books?action=resource&bcsId=4338&itemId=1118672321&resourceId=13452
- See also Journal of Applied Econometrics data archive entry for Baltagi (2006) at http://qed.econ.queensu.ca/jae/2006-v21.4/baltagi/.

**References**
- Cornwell C, Trumbull WN (1994). “Estimating the economic model of crime with panel data.” Review of Economics and Statistics, 76, 360–366.
- Baltagi BH (2006). “Estimating an economic model of crime using panel data from North Carolina.” Journal of Applied Econometrics, 21(4).
- Baltagi BH (2001). Econometric Analysis of Panel Data, 3rd edition. John Wiley and Sons ltd. Baltagi BH (2013). Econometric Analysis of Panel Data, 5th edition. John Wiley and Sons ltd.

## EmplUK

**Employment and Wages in the United Kingdom**

An unbalanced panel of 140 observations from 1976 to 1984

- firm firm index
- year year
- sector the sector of activity emp employment
- wage wages
- capital capital
- output output

**Details**

total number of observations : 1031 

observation : firms

country : United Kingdom

**Source**

Arellano M, Bond S (1991). “Some Tests of Specification for Panel Data : Monte Carlo Evidence and an Application to Employment Equations.” Review of Economic Studies, 58, 277–297.

## Gasoline

**Gasoline Consumption**

A panel of 18 observations from 1960 to 1978

- country a factor with 18 levels
- year the year
- lgaspcar logarithm of motor gasoline consumption per car lincomep logarithm of real per-capita income
- lrpmg logarithm of real motor gasoline price
- lcarpcap logarithm of the stock of cars per capita

**Details**

total number of observations : 342 

observation : country

country : OECD

**Source**

- Online complements to Baltagi (2001): https://www.wiley.com/legacy/wileychi/baltagi/
- Online complements to Baltagi (2013): https://bcs.wiley.com/he-bcs/Books?action=resource&bcsId=4338&itemId=1118672321&resourceId=13452

**References**

- Baltagi BH (2001). Econometric Analysis of Panel Data, 3rd edition. John Wiley and Sons ltd.
- Baltagi BH (2013). Econometric Analysis of Panel Data, 5th edition. John Wiley and Sons ltd.
- Baltagi BH, Griffin JM (1983). “Gasoline demand in the OECD: An application of pooling and testing procedures.” European Economic Review, 22(2), 117 - 137. ISSN 0014-2921, https://www.sciencedirect.com/science/article/pii/0014292183900776.

## Grunfeld

**Grunfeld’s Investment Data**

A balanced panel of 10 observational units (firms) from 1935 to 1954

- firm observation
- year date
- inv gross Investment
- value value of the firm
- capital stock of plant and equipment

**Details**

total number of observations : 200 

observation : production units 

country : United States

**Source**

- Online complements to Baltagi (2001): https://www.wiley.com/legacy/wileychi/baltagi/
https://www.wiley.com/legacy/wileychi/baltagi/supp/Grunfeld.fil
- Online complements to Baltagi (2013): https://bcs.wiley.com/he-bcs/Books?action=resource&bcsId=4338&itemId=1118672321&resourceId=13452

**References**

- Baltagi BH (2001). Econometric Analysis of Panel Data, 3rd edition. John Wiley and Sons ltd. Baltagi BH (2013). Econometric Analysis of Panel Data, 5th edition. John Wiley and Sons ltd.
- Grunfeld Y (1958). The determinants of corporate investment. Ph.D. thesis, Department of Economics, University of Chicago.
- Kleiber C, Zeileis A (2010). “The Grunfeld Data at 50.” German Economic Review, 11, 404-417. https://doi.org/10.1111/j.1468-0475.2010.00513.x. website accompanying the paper with various variants of the Grunfeld data: https://www.zeileis. org/grunfeld/.

## Hedonic

**Hedonic Prices of Census Tracts in the Boston Area**

- mv median value of owner–occupied homes
- crim crime rate
- zn proportion of 25,000 square feet residential lots
- indus proportion of no–retail business acres
- chas is the tract bounds the Charles River?
- nox annual average nitrogen oxide concentration in parts per hundred million rm average number of rooms
- age proportion of owner units built prior to 1940
- dis weighted distances to five employment centers in the Boston area
- rad index of accessibility to radial highways
- tax full value property tax rate ($/$10,000)
- ptratio pupil/teacher ratio
- blacks proportion of blacks in the population
- lstat proportion of population that is lower status
- townid town identifier

**Details**

number of observations : 506 

observation : regional 

country : United States

**Source**

- Online complements to Baltagi (2001): https://www.wiley.com/legacy/wileychi/baltagi/
- Online complements to Baltagi (2013): https://bcs.wiley.com/he-bcs/Books?action=resource&bcsId=4338&itemId=1118672321&resourceId=13452

**References**

- Baltagi BH (2001). Econometric Analysis of Panel Data, 3rd edition. John Wiley and Sons ltd. Baltagi BH (2013). Econometric Analysis of Panel Data, 5th edition. John Wiley and Sons ltd.
- Besley DA, Kuh E, Welsch RE (1980). Regression diagnostics: identifying influential data and sources of collinearity. John Wiley and Sons ltd. Wiley series in probability and statistics.
- Harrison D, Rubinfeld DL (1978). “Hedonic housing prices and the demand for clean air.” Journal of Environmental Economics and Management, 5, 81-102.

## LaborSupply

**Wages and Hours Worked**

A panel of 532 observations from 1979 to 1988

- lnhr log of annual hours worked 
- lnwg log of hourly wage
- kids number of children
- age age
- disab bad health id id
- year year

**Details** 

number of observations : 5320

**Source** 

- Journal of Business Economics and Statistics web site: https://amstat.tandfonline.com/loi/ubes20/.

**References**

- Colin Cameron A, K. Trivedi P (2005). Microeconometrics: Methods and Applications. Cambridge University Press. ISBN 0521848059, doi:10.1017/CBO9780511811241.
- Ziliak JP (1997). “Efficient Estimation with Panel Data When Instruments Are Predetermined: An Empirical Comparison of Moment-Condition Estimators.” Journal of Business & Economic Statistics, 15(4), 419–431. ISSN 07350015.

## Males

**Wages and Education of Young Males**

A panel of 545 observations from 1980 to 1987

- nr identifier
- year year
- school years of schooling
- exper years of experience (computed as age-6-school)
- union wage set by collective bargaining?
- ethn a factor with levels black, hisp, other
- married married?
- health health problem?
- wage log of hourly wage
- industry a factor with 12 levels
- occupation a factor with 9 levels
- residence a factor with levels *rural_area, north_east, northern_central, south*

**Details**

total number of observations : 4360 

observation : individuals

country : United States

**Source**

- Journal of Applied Econometrics data archive http://qed.econ.queensu.ca/jae/1998-v13.2/ vella-verbeek/.

**References**

- Vella F, Verbeek M (1998). “Whose wages do unions raise? A dynamic model of unionism and wage rate determination for young men.” Journal of Applied Econometrics, 13, 163–183.
- Verbeek M (2004). A Guide to Modern Econometrics, 2nd edition. Wiley.

## Parity

**Purchasing Power Parity and other parity relationships**

A panel of 104 quarterly observations from 1973Q1 to 1998Q4

- country country codes: a factor with 17 levels time the quarter index, 1973Q1-1998Q4
- ls log spot exchange rate vs. USD
- lp log price level
- is short term interest rate
- il long term interest rate
- ld log price differential vs. USA 
- uis U.S. short term interest rate 
- uil U.S. long term interest rate

**Details**

total number of observations : 1768 

observation : country

country : OECD

**Source**

- Coakley J, Fuertes A, Smith R (2006). “Unobserved heterogeneity in panel time series models.” Computational Statistics & Data Analysis, 50(9), 2361–2380.

**References**

- Coakley J, Fuertes A, Smith R (2006). “Unobserved heterogeneity in panel time series models.” Computational Statistics & Data Analysis, 50(9), 2361–2380.
- Driscoll JC, Kraay AC (1998). “Consistent covariance matrix estimation with spatially dependent panel data.” Review of economics and statistics, 80(4), 549–560.

## Produc

**US States Production**

A panel of 48 observations from 1970 to 1986

- state the state
- year the year
- region the region
- pcap public capital stock
- hwy highway and streets
- water water and sewer facilities
- util other public buildings and structures 
- pc private capital stock
- gsp gross state product
- emp labor input measured by the employment in non–agricultural payrolls 
- unemp state unemployment rate

**Details**

total number of observations : 816 

observation : regional

country : United States

**Source**

- Online complements to Baltagi (2001): https://www.wiley.com/legacy/wileychi/baltagi/
- Online complements to Baltagi (2013): https://bcs.wiley.com/he-bcs/Books?action=resource&bcsId=4338&itemId=1118672321&resourceId=13452

**References**

- Baltagi BH (2001). Econometric Analysis of Panel Data, 3rd edition. John Wiley and Sons ltd. Baltagi BH (2013). Econometric Analysis of Panel Data, 5th edition. John Wiley and Sons ltd.
- Baltagi BH, Pinnoi N (1995). “Public capital stock and state productivity growth: further evidence from an error components model.” Empirical Economics, 20, 351-359.
- Munnell A (1990). “Why Has Productivity Growth Declined? Productivity and Public Investment.” New England Economic Review, 3–22.

## RiceFarms

**Production of Rice in Indonesia**

a panel of 171 observations

- id the farm identifier
- size the total area cultivated with rice, measured in hectares
- status land status, one of *'owner' (non sharecroppers, owner operators or leaseholders or both), 'share' (sharecroppers), 'mixed' (mixed of the two previous status)*
- varieties one of *'trad'(traditionalvarieties),'high'(highyieldingvarieties)and'mixed'(mixed varieties)
bimas bIMASisanintensificationprogram;oneof'no'(non-bimasfarmer),'yes'(bimasfarmer) or 'mixed' (part but not all of farmer’s land was registered to be in the bimas program)*
- seed seed in kilogram
- urea urea in kilogram
- phosphate phosphate in kilogram
- pesticide pesticide cost in Rupiah
- pseed price of seed in Rupiah per kg
- purea price of urea in Rupiah per kg
- pphosph price of phosphate in Rupiah per kg
- hiredlabor hired labor in hours
- famlabor family labor in hours
- totlabor total labor (excluding harvest labor)
- wage labor wage in Rupiah per hour
- goutput gross output of rice in kg
- noutput net output, gross output minus harvesting cost (paid in terms of rice)
- price price of rough rice in Rupiah per kg
- region one of *'wargabinangun','langan','gunungwangi','malausma','sukaambit','ciwangi'*

**Details**

number of observations : 1026 

observation : farms

country : Indonesia

**Source**

- Feng Q, Horrace WC (2012). “Alternative technical efficiency measures: Skew, bias and scale.” Journal of Applied Econometrics, 27(2), 253-268. doi:10.1002/jae.1190.

## Snmesp

**Employment and Wages in Spain**

A panel of 738 observations from 1983 to 1990

- firm firm index
- year year
- n log of employment
- w log of wages
- y log of real output
- i log of intermediate inputs k log of real capital stock
- f real cash flow

**Details**

total number of observations: 5904 

observation: firms

country: Spain

**Source**

- Journal of Business Economics and Statistics data archive: https://amstat.tandfonline.com/loi/ubes20/.

**References**

- Alonso-Borrego C, Arellano M (1999). “Symmetrically Normalized Instrumental-Variable Estima- tion Using Panel Data.” Journal of Business and Economic Statistics, 17(1), 36-49.

## SumHes

**The Penn World Table, v. 5**

A panel of 125 observations from 1960 to 1985

- year the year
- country the country name (factor)
- opec OPEC member?
- com communist regime?
- pop country’s population (in thousands)
- gdp real GDP per capita (in 1985 US dollars) sr saving rate (in percent)

**Details**

total number of observations : 3250 

observation : country

country : World

**Source**

- Online supplements to Hayashi (2000). http://fhayashi.fc2web.com/datasets.htm

**References**

- Hayashi F (2000). Econometrics. Princeton University Press.
- Summers R, Heston A (1991). “The Penn World Table (Mark 5): An Expanded Set of Interna- tional Comparisons, 1950–1988.” The Quarterly Journal of Economics, 106, 327-68. doi:10.2307/ 2937941.

## Wages

**Panel Data of Individual Wages**

A panel of 595 individuals from 1976 to 1982, taken from the Panel Study of Income Dynamics (PSID).

- exp years of full-time work experience. 
- wks weeks worked.
- bluecol blue collar?
- ind works in a manufacturing industry? 
- south resides in the south?
- smsa resides in a standard metropolitan statistical area? 
- married married?
- sex a factor with levels "male" and "female"
- union individual’s wage set by a union contract?
- ed years of education.
- black is the individual black? 
- lwage logarithm of wage.
- id individual index
- time time index

**Details**

total number of observations : 4165 

observation : individuals

country : United States

**Source**

- Online complements to Baltagi (2001): https://www.wiley.com/legacy/wileychi/baltagi/
- Online complements to Baltagi (2013): https://bcs.wiley.com/he-bcs/Books?action=resource&bcsId=4338&itemId=1118672321&resourceId=13452

**References**

- Baltagi BH (2001). Econometric Analysis of Panel Data, 3rd edition. John Wiley and Sons ltd. Baltagi BH (2013). Econometric Analysis of Panel Data, 5th edition. John Wiley and Sons ltd.
- Cornwell C, Rupert P (1988). “Efficient Estimation With Panel Data: an Empirical Comparison of Instrumental Variables Estimators.” Journal of Applied Econometrics, 3, 149–155.