# Описание данных

## loanapp

1989 наблюдений, 59 переменных

- occ: occupancy
- loanamt: loan amt in thousands
- action: type of action taken
- msa: msa number of property
- suffolk: =1 if property in suffolk co.
- appinc: applicant income, $1000s
- typur: type of purchaser of loan
- unit: number of units in property
- married: =1 if applicant married
- dep: number of dependents
- emp: years employed in line of work
- yjob: years at this job
- self: =1 if self employed
- atotinc: total monthly income
- cototinc: coapp total monthly income
- hexp: propose housing expense
- price: purchase price
- other: other financing, $1000s
- liq: liquid assets
- rep: no. of credit reports
- gdlin: credit history meets guidelines
- lines: no. of credit lines on reports
- mortg: credit history on mortgage paym
- cons: credit history on consumer stuf
- pubrec: =1 if filed bankruptcy
- hrat: housing exp, percent total inc
- obrat: other oblgs, percent total inc
- fixadj: fixed or adjustable rate?
- term: term of loan in months
- apr: appraised value
- prop: type of property
- inss: PMI sought
- inson: PMI approved
- gift: gift as down payment
- cosign: is there a cosigner
- unver: unverifiable info
- review: number of times reviewed
- netw: net worth
- unem: unemployment rate by industry
- min30: =1 if minority pop. > 30percent
- bd: =1 if boarded-up val > MSA med
- mi: =1 if tract inc > MSA median
- old: =1 if applic age > MSA median
- vr: =1 if tract vac rte > MSA med
- sch: =1 if > 12 years schooling
- black: =1 if applicant black
- hispan: =1 if applicant Hispanic
- male: =1 if applicant male
- reject: =1 if action == 3
- approve: =1 if action == 1 or 2
- mortno: no mortgage history
- mortperf: no late mort. payments
- mortlat1: one or two late payments
- mortlat2: > 2 late payments
- chist: =0 if accnts deliq. >= 60 days
- multi: =1 if two or more units
- loanprc: amt/price
- thick: =1 if rep > 2
- white: =1 if applicant white

## TableF5-1

Labor Supply Data From Mroz (1987), 753 Observations [Source](https://pages.stern.nyu.edu/~wgreene/Text/Edition7/): 1976 Panel Study of Income Dynamics, Mroz(1987).

- LFP = A dummy variable = 1 if woman worked in 1975, else 0
- WHRS = Wife's hours of work in 1975
- KL6 = Number of children less than 6 years old in household
- K618 = Number of children between ages 6 and 18 in household
- WA = Wife's age
- WE = Wife's educational attainment, in years
- WW = Wife's average hourly earnings, in 1975 dollars
- RPWG = Wife's wage reported at the time of the 1976 interview (not = 1975 estimated wage)
- HHRS = Husband's hours worked in 1975
- HA = Husband's age
- HE = Husband's educational attainment, in years
- HW = Husband's wage, in 1975 dollars
- FAMINC = Family income, in 1975 dollars
- WMED = Wife's mother's educational attainment, in years
- WFED = Wife's father's educational attainment, in years
- UN = Unemployment rate in county of residence, in percentage points.
- CIT = Dummy variable = 1 if live in large city (SMSA), else 0
- AX = Actual years of wife's previous labor market experience

## TableF7-3

Expenditure and Default Data, 13,444 observations [Source](https://pages.stern.nyu.edu/~wgreene/Text/Edition7/): Greene (1992)

- Cardhldr = Dummy variable, 1 if application for credit card accepted, 0 if not
- Default = 1 if defaulted 0 if not (observed when Cardhldr = 1, 10,499 observations),
- Age = Age in years plus twelfths of a year,
- Adepcnt = 1 + number of dependents,
- Acadmos = months living at current address,
- Majordrg = Number of major derogatory reports,
- Minordrg = Number of minor derogatory reports,
- Ownrent = 1 if owns their home, 0 if rent
- Income = Monthly income (divided by 10,000),
- Selfempl = 1 if self employed, 0 if not,
- Inc_per = Income divided by number of dependents,
- Exp_Inc = Ratio of monthly credit card expenditure to yearly income,
- Spending = Average monthly credit card expenditure (for Cardhldr = 1),
- Logspend = Log of spending.
