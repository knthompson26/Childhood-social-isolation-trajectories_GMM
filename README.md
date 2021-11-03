## Developmental trajectories of social isolation
[Katherine N Thompson](https://twitter.com/KTNThompson)
November, 2021

***

This repository holds code for for manuscript titled "Trajectories of childhood social isolation in a nationally representative cohort: Associations with antecedents and early adulthood outcomes" is outlined below. Analyses include growth mixture models (GMM) of social isolation at ages 5, 7, 10 and 12 and associations with antecedents and outcomes. All data from the E-Risk Study. 

For greater clarity when reviewing the code and results for this manuscript, this repository has been converted into an R pages website. **The website can be accessed here: https://knthompson26.github.io/Childhood-social-isolation-trajectories_GMM/index.html** 

Analyses for this project were conducted in R (Version 4.0.3), Mplus (Version 8.4), and STATA (Version 16). Below names and locations for all  scripts are listed, with a brief explanation of what each script entails, for more detail please go to the [website](https://knthompson26.github.io/Childhood-social-isolation-trajectories_GMM/index.html). 

***

**Processing the data and running preliminary statistics (Rmd code can be found in the "/RMarkdown_code/" folder)**

1. preprocessing_isolation_trajectories.Rmd (/preprocessing/): Script to clean, rename, and prepare variables for subsequent analysis

2. preliminary_desriptives_of_social_isolation.Rmd (/descriptives/): Script to provide sample descriptives 

***

**Mplus trajectory models (Mplus code can be found in the "/Mplus_trajectory_models/" folder)** 

1. Latent growth curve model (/LGCM/): Mplus code for linear, log linear, quadratic and log quadratic growth models

2. Latent class growth analysis (/LCGA/): Mplus code for linear LCGA models for 2-6 classes
        
3. Growth mixture models (/GMM/): 

* Mplus code for linear models of 2-6 classes (/Linear/Original/): OPTSEED checks on 3 and 4 class models, 5 and 6 class models fixed to zero.

* Mplus code for quadratic models of 2-6 classes (/Quadratic/): 4-6 classes did not converge

* Mplus code for 3-step sensitivity analysis (Linear/3Step_sensitivity). 1) Manual 3-step for antecedents, 2) Auxiliary DE3STEP for outcomes, 3) BCH for outcomes
                
***

**Data merging from Mplus and Rmd, and trajectory descriptives (Rmd code can be found in the "/RMarkdown_code/descriptives/" folder):**

1. trajectory_descriptives_THREE_CLASS.Rmd: merges mplus and Rmd data and provides descroptives for the three class (chosen) GMM model
        
***

**Trajectory results imported from Mplus (Rmd code can be found in the "/RMarkdown_code/trajectory_analysis/" folder):**

1. trajectory_statistics_and_figures_GMM_LGCM.Rmd: Results for all LCGM and GMM models

2. trajectory_statistics_and_figures_LCGA.Rmd: Results for all LCGA models

3. trajectory_statistics_and_figures_GMM_QUADRATIC.Rmd: Results for all quadratic GMM models

***

**Antecedent analysis (Rmd code can be found in the "/antecedent_analysis/"" folder):**

1. antecedent_multinomial_regression.do: STATA .do file which runs all multinomial regressions

2. stata_antecedent_isolation_THREE_trajectories.Rmd: Rmd file which displays all results from the STATA .do file

3. antecedent_multinomial_regression_POSTERIOR.do: STATA file which runs posterior probability sensitivity analysis 

***

**Outcome analysis (Rmd code can be found in the "/outcome_analysis/"" folder)**

1. outcomes_isolation_THREE_trajectories.Rmd: runs all outcome linear and logistic regressions and displays results

*** 

**Sensitivity analysis (Rmd code can be found in the "/sensitivity_analysis/"" folder)**

1. mplus_3step_sensitivity.Rmd: three step sensitivity analyses for antecedents and outcomes

2. sex_interactions_outcomes_isolation_THREE_trajectories.Rmd: Sex interaction effects for all outcome regressions

