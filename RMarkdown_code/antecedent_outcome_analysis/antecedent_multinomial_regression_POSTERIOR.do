// read in file
use "/Users/katiethompson/Documents/PhD/LISS-DTP_Louise_and_Tim/Social isolation trajectories_Paper 1/data_analysis/data_full/data_raw/multinom.reg.stata.POSTERIOR.dta"

// create list of outcome variables
local outcomes "ses acorn vandalism probneighbours numberchildschool meals harm siblings socialsupport activities biodad domesticviolence maternalwarmth maternaldepression openness conscientiousness extroversion agreeableness neuroticism antisocial alcohol iq execfunction theoryofmind externalising internalising adhd prosocial"

// loop for multinomial regression clustered by familyid
foreach var of varlist `outcomes' {
mlogit classreordered `var' sex, cluster(familyid)

estimates store presults_`var'
}

// install package estout
// ssc install estout

// save results, dropping estimates we don't need and saving the RRR and upper and lower CI for each variable 
estout presults_* using multinomial_results_si_POSTERIOR.txt, drop(sex) cells(b(fmt(2)) ci_l(fmt(2)) ci_u(fmt(2)) p(fmt(8))) eform replace

// all model - predictors that are significant from UNIVARIATE models
mlogit classreordered ses acorn probneighbours meals harm siblings socialsupport activities biodad domesticviolence maternalwarmth maternaldepression openness conscientiousness extroversion agreeableness neuroticism antisocial alcohol iq execfunction theoryofmind externalising internalising adhd prosocial sex, cluster(familyid)
estimates store pallmodelsiguni 
estout pallmodelsiguni using multinomial_results_si.allmodel.SIGUNI_POSTERIOR.txt, drop(sex) cells(b(fmt(2)) ci_l(fmt(2)) ci_u(fmt(2)) p(fmt(8))) eform replace

// all model - all predictors in one model
mlogit classreordered ses acorn vandalism probneighbours numberchildschool meals harm siblings socialsupport activities biodad domesticviolence maternalwarmth maternaldepression openness conscientiousness extroversion agreeableness neuroticism antisocial alcohol iq execfunction theoryofmind externalising internalising adhd prosocial sex, cluster(familyid)
estimates store pallmodel 
estout pallmodel using multinomial_results_si.allmodel_POSTERIOR.txt, drop(sex) cells(b(fmt(2)) ci_l(fmt(2)) ci_u(fmt(2)) p(fmt(8))) eform replace
