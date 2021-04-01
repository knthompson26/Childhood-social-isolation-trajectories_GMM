// read in file
use "/Users/katiethompson/Documents/PhD/LISS-DTP_Louise_and_Tim/Social isolation trajectories_Paper 1/data_analysis/data_full/data_raw/multinom.reg.stata.dta"

// multinomial full regression clustered by familyid
mlogit classreordered i.ses acorn vandalism probneighbours numberchildschool meals i.harm siblings socialsupport activities i.biodad i.domesticviolence maternalwarmth i.maternaldepression openness conscientiousness extroversion agreeableness neuroticism antisocial iq execfunction theoryofmind externalising internalising adhd prosocial i.sex , rrr cluster(familyid)

// save results as text file
translate @Results mmultinom_ant.txt














