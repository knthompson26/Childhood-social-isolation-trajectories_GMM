// read in file
use "/Users/katiethompson/Documents/PhD/LISS-DTP_Louise_and_Tim/Social isolation trajectories_Paper 1/data_analysis/data_full/data_raw/multinom.reg.stata.dta"

// create list of outcome variables
local outcomes "ses acorn vandalism probneighbours numberchildschool meals harm siblings socialsupport activities biodad domesticviolence maternalwarmth maternaldepression openness conscientiousness extroversion agreeableness neuroticism antisocial iq execfunction theoryofmind externalising internalising adhd prosocial"

// loop for multinomial regression clustered by familyid
foreach var of varlist `outcomes' {
mlogit classreordered `var' sex, cluster(familyid)

estimates store results_`var'
}

// install package estout
ssc install estout

// save results, dropping estimates we don't need and saving the RRR and upper and lower CI for each variable 
estout results_* using multinomial_results_si.txt, drop(sex) cells(b(fmt(2)) ci_l(fmt(2)) ci_u(fmt(2)) p(fmt(2))) eform replace

// block multinomial regressions - only including ones that were significant from individual analysis

// social block - removed vandalism and children in school
mlogit classreordered ses acorn probneighbours meals sex, cluster(familyid)
estimates store socialblock
estout socialblock using multinomial_results_si.socialblock.txt, drop(sex) cells(b(fmt(2)) ci_l(fmt(2)) ci_u(fmt(2)) p(fmt(2))) eform replace

// home block 
mlogit classreordered harm siblings socialsupport activities biodad domesticviolence maternalwarmth sex, cluster(familyid)
estimates store homeblock
estout homeblock using multinomial_results_si.homeblock.txt, drop(sex) cells(b(fmt(2)) ci_l(fmt(2)) ci_u(fmt(2)) p(fmt(2))) eform replace

// parent block 
mlogit classreordered maternaldepression openness conscientiousness extroversion agreeableness neuroticism antisocial sex, cluster(familyid)
estimates store parentblock
estout parentblock using multinomial_results_si.parentblock.txt, drop(sex) cells(b(fmt(2)) ci_l(fmt(2)) ci_u(fmt(2)) p(fmt(2))) eform replace

// neuro block
mlogit classreordered iq execfunction theoryofmind sex, cluster(familyid)
estimates store neuroblock
estout neuroblock using multinomial_results_si.neuroblock.txt, drop(sex) cells(b(fmt(2)) ci_l(fmt(2)) ci_u(fmt(2)) p(fmt(2))) eform replace

// emo block
mlogit classreordered externalising internalising adhd prosocial sex, cluster(familyid)
estimates store emoblock
estout emoblock using multinomial_results_si.emoblock.txt, drop(sex) cells(b(fmt(2)) ci_l(fmt(2)) ci_u(fmt(2)) p(fmt(2))) eform replace

// full model - need to change depending on what is significant
mlogit classreordered ses meals harm activities maternalwarmth conscientiousness antisocial iq execfunction theoryofmind internalising adhd prosocial sex, cluster(familyid)
estimates store fullmodel
estout fullmodel using multinomial_results_si.fullmodel.txt, drop(sex) cells(b(fmt(2)) ci_l(fmt(2)) ci_u(fmt(2)) p(fmt(2))) eform replace
