# Childhood_social_isolation_trajectories-GMM

## This repository holds code for the manuscript titled "Antecedents and outcomes of childhood social isolation" using data from the E-Risk study. 

### All code written by Katherine N Thompson and checked by Antony Ambler. 

Authors: Katherine N. Thompson, Candice L. Odgers, Bridget T. Bryan, Andrea Danese, Lily Strange, Timothy Matthews*, and Louise Arseneault*

*Joint senior author

Analyses for this project were conducted in MPlus version 8.4, STATA version 16, and R version 4.0.3 (All R code written in Rmd format). Scripts are ordered here in the same order they should be run to replicate findings. Folders are listed in the brackets of each header. 


**Preprocessing (Rmd):** (RMarkdown_code/preprocessing)

1. preprocessing_isolation_trajectories.Rmd 
 - Cleans, renames, and prepares variables for subsequent analysis


**Preliminary descriptives:** (RMarkdown_code/descriptives)

1. preliminary_desriptives_of_social_isolation.Rmd
 - provides simple sample descriptives: missingness statistics, differences in those who had missing data, and means for combined, teacher, and parent report
 - uses preprocessing script


**Trajectory_models (Mplus):** (Mplus_trajectory_models)

These models are run in Mplus and interpreted in Rmd. 

1. LATENT GROWTH MODELS (LGCM):
 - Linear, log linear, quadratic and log quadratic growth models

2. LATENT CLASS GROWTH ANALYSIS (LCGA): 
 - Linear models of 2-6 classes, includes clustering 

3. GROWTH MIXTURE MODELS (GMM): 
 - Linear models of 2-6 classes, includes clustering
 - OPTSEED checks on 3 and 4 class models
 - 5 and 6 class models with slope fixed to zero
 - Quadratic models for 2-6 classes: 4-6 class models with slope fixed to zero
 - 3-Step sensitivity analyses: antecedents (manual) and outcomes (BCH)


**Trajectory descriptives:** (RMarkdown_code/descriptives)

1. trajectory_descriptives_THREE_CLASS.Rmd
 - combines the preprocessed data with the data from Mplus - needed for all other scripts
 - gives decriptives for class specific variables


**Trajectory interpretation:** (RMarkdown_code/trajectory_analysis)

1. trajectory_statistics_and_figures_GMM_&_LGCM.Rmd 
 - Imports Mplus data and creates tables and figures for linear/log-linear LGCM and Linear GMM results for 2-6 classes

2. trajectory_statistics_and_figures_GMM_QUADRATIC.Rmd
 - Imports Mplus data and creates tables and figures for Quadratic GMM for 2-6 classes

3. trajectory_statistics_and_figures_LCGA.Rmd 
 - Imports Mplus data and creates tables and figures for Linear LCGA for 2-6 classes

**Antecedent analysis:** (RMarkdown_code/antecedent_analysis)

1. antecedent_multinomial_regression.do
 - STATA do file containing univariate and multivariate antecedent regressions with clustering

2. antecedent_multinomial_regression_POSTERIOR.do
 - STATA do file containing univariate and multivariate antecedent regressions with clustering: posterior probabilities sensitvity analysis
 - Only includes data with people who had a posterior probability >0.8 (the R script for this is enbedded in the no. 3 R script here)

3. stata_antecedent_isolation_THREE_trajectories.Rmd
 - R script adapting output from STATA into tables and graphs  

**Outcome analysis:** (RMarkdown_code/outcome_analysis)

1. outcomes_isolation_THREE_trajectories.Rmd
 - Outcome linear and logistic regressions with output and graphs - with clustering

**Sensitivity analysis: sex interactions for outcomes and mplus 3step** (RMarkdown_code/sensitivity_analysis)

1. sex_interactions_outcomes_isolation_THREE_trajectories.Rmd
 - Sex interaction terms are added to outcome regressions
 - Where significant interactions occur, regressions are rerun for males and females separately

2. mplus_3step_sensitivity.Rmd
 - Outcome tables were imported from Mplus BCH approach and prepared for manuscript


If you have any queries with the above, please contact katherine.n.thompson@kcl.ac.uk

*Please note that all analyses have not yet undergone peer review. Once published, the reference and DOI will be provided*

