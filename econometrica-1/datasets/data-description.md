# Описание датасетов

## sleep75

*number of observations* : 706

- age: in years
- black: =1 if black
- case: identifier
- clerical: =1 if clerical worker
- construc: =1 if construction worker
- educ: years of schooling
- earns74: total earnings, 1974
- gdhlth: =1 if in good or excel. health - inlf: =1 if in labor force
- leis1: sleep - totwrk
- leis2: slpnaps - totwrk
- leis3: rlxall - totwrk
- smsa: =1 if live in smsa
- lhrwage: log hourly wage
- lothinc: log othinc, unless othinc < 0
- male: =1 if male
- marr: =1 if married
- prot: =1 if Protestant
- rlxall: slpnaps + personal activs
- selfe: =1 if self employed
- sleep: mins sleep at night, per wk
- slpnaps: minutes sleep, inc. naps
- south: =1 if live in south
- spsepay: spousal wage income
- spwrk75: =1 if spouse works
- totwrk: mins worked per week
- union: =1 if belong to union
- worknrm: mins work main job
- workscnd: mins work second job
- exper: age - educ - 6
- yngkid: =1 if children < 3 present
- yrsmarr: years married
- hrwage: hourly wage
- agesq: age^2

*Источник*: Wooldridge Source: J.E. Biddle and D.S. Hamermesh (1990), “Sleep and the Allocation of Time,” Journal of Political Economy 98, 922-943

## Electricity

*number of observations* : 158

- cost total cost
- q total output
- pl wage rate
- sl cost share for labor
- pk capital price index
- sk cost share for capital
- pf fuel price
- sf cost share for fuel

*Источник*: Christensen, L. and W. H. Greene (1976) “Economies of scale in U.S. electric power generation”, Journal of Political Economy, 84, 655-676.

## Diamond

*number of observations* : 308

- carat weight of diamond stones in carat unit
- colour a factor with levels (D,E,F,G,H,I)
- clarity a factor with levels (IF,VVS1,VVS2,VS1,VS2)
- certification certification body, a factor with levels ( GIA, IGI, HRD)
- price price in Singapore $

*Источник*: Chu, Singfat (2001) “Pricing the C’s of Diamond Stones”, Journal of Statistics Education, 9(2).

## Labour (Belgian firms)

*number of observations* : 569

- capital total fixed assets, end of 1995 (in 1000000 euro)
- labour number of workers (employment)
- output value added (in 1000000 euro)
- wage wage costs per worker (in 1000 euro)

*Источник*: Verbeek, Marno (2004) A Guide to Modern Econometrics, John Wiley and Sons, chapter 4.

## diamonds (Prices of over 50,000 round cut diamonds)

*number of observations* : 53940

- price price in US dollars ($326–$18,823)
- carat weight of the diamond (0.2–5.01)
- cut quality of the cut (Fair, Good, Very Good, Premium, Ideal) 
- color diamond colour, from D (best) to J (worst)
- clarity a measurement of how clear the diamond is (I1 (worst), SI2, SI1, VS2, VS1, VVS2, VVS1, IF (best))
- x length in mm (0–10.74)
- y width in mm (0–58.9)
- z depth in mm (0–31.8)
- depth total depth percentage = z / mean(x, y) = 2 * z / (x + y) (43–79)
- table width of top of diamond relative to widest point (43–95)

*Источник*: пакет ggplot2 для R

## wage1

A dataset with 526 observations on 24 variables

* wage: average hourly earnings
* educ: years of education
* exper: years potential experience
* tenure: years with current employer
* nonwhite: =1 if nonwhite
* female: =1 if female
* married: =1 if married
* numdep: number of dependents
* smsa: =1 if live in SMSA
* northcen: =1 if live in north central U.S
* south: =1 if live in southern region
* west: =1 if live in western region
* construc: =1 if work in construc. indus.
* ndurman: =1 if in nondur. manuf. indus. * trcommpu: =1 if in trans, commun, pub ut * trade: =1 if in wholesale or retail
* services: =1 if in services indus.
* profserv: =1 if in prof. serv. indus.
* profocc: =1 if in profess. occupation
* clerocc: =1 if in clerical occupation
* servocc: =1 if in service occupation
* lwage: log(wage)
* expersq: exper^2
* tenursq: tenure^2

## wage2

A dataset with 935 observations on 17 variables:

* wage: monthly earnings
* hours: average weekly hours
* IQ: IQ score
* KWW: knowledge of world work score * educ: years of education
* exper: years of work experience
* tenure: years with current employer
* age: age in years
* married: =1 if married
* black: =1 if black
* south: =1 if live in south
* urban: =1 if live in SMSA
* sibs: number of siblings
* brthord: birth order
* meduc: mother’s education
* feduc: father’s education
* lwage: natural log of wage

*Источник*: M. Blackburn and D. Neumark (1992), “Unobserved Ability, Efficiency Wages, and Interindustry Wage Differentials,” Quarterly Journal of Economics 107, 1421-1436.

## Mishkin

monthly observations from 1950-2 to 1990-12

*number of observations* : 491

*country* : United States

- pai1: one-month inflation rate (in percent, annual rate)
- pai3: three-month inflation rate (in percent, annual rate)
- tb1: one-month T-bill rate (in percent, annual rate)
- tb3: three-month T-bill rate (in percent, annual rate)
- cpi: CPI for urban consumers, all items (the 1982-1984 average is set to 100)

*Источник*: Mishkin, F. (1992) “Is the Fisher effect for real ?”, Journal of Monetary Economics, 30, 195-215.

## Tbrate

*quarterly observations* from 1950-1 to 1996-4

*number of observations* : 188

*country* : Canada

- r: the 91-day treasury bill rate
- y: the log of real GDP
- pi: the inflation rate
