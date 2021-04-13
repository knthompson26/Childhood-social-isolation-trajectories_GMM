# Childhood_social_isolation_trajectories-GMM

## This repository holds code for growth mixture models (GMM) of social isolation variables at ages 5, 7, 10 and 12 years and how these trajectories are associated with antecedents and outcomes in the E-Risk study. 

### All code written by Katherine N Thompson (2021).

Code for manuscript titled: "Antecedents and outcomes of social isolation across childhood".
Analyses for this project were conducted in MPlus version 8.4, STATA version 16 and R version 4.0.3 (All R code written in Rmd format). 

**Trajectory_models (Mplus):**

1. LATENT GROWTH MODELS (LGCM):
 - Linear, log linear, quadratic and log quadratic growth models

2. LATENT CLASS GROWTH ANALYSIS (LCGA): 
 - Linear models of 2-6 classes, includes clustering 

1. GROWTH MIXTURE MODELS (GMM): 
 - Linear models of 2-6 classes, includes clustering
 - OPTSEED checks on 3 and 4 class models
 - 5 and 6 class models with slope fixed to zero
 - Quadratic models for 2-6 classes: 4-6 class models with slope fixed to zero

**Antecedent_and_outcome_analysis (R and STATA):**

Preprocessing:

1. preprocessing_isolation_trajectories.Rmd 
 - Cleans, renames, and prepares variables for subsequent analysis

Descriptives:

1. preliminary_desriptives_of_social_isolation.Rmd
 - provides simple sample descriptives 

2. trajectory_descriptives_THREE_CLASS.Rmd
 - gives decriptives for class specific variables

Trajectory_analysis:

1. trajectory_statistics_and_figures_GMM_&_LGCM.Rmd 
 - Imports Mplus data and creates tables and figures for linear/log-linear LGCM and Linear GMM results for 2-6 classes

2. trajectory_statistics_and_figures_GMM_QUADRATIC.Rmd
 - Imports Mplus data and creates tables and figures for Quadratic GMM for 2-6 classes

3. trajectory_statistics_and_figures_LCGA.Rmd 
 - Imports Mplus data and creates tables and figures for Linear LCGA for 2-6 classes

Antecedent_outcome_analysis:

1. antecedent_isolation_THREE_trajectories.Rmd
 - Antecedent multinomial regressions in R with output and graphs - not including clustering for twin sample  

2. antecedent_multinomial_regression.do
 - STATA do file containing antecedent regressions with clustering

3. stata_antecedent_isolation_THREE_trajectories.Rmd
 - R script adapting output from STATA into tables and graphs  

4. outcomes_isolation_THREE_trajectories.Rmd
 - Outcome linear and logistic regressions with output and graphs - with clustering
