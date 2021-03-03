# Childhood_social_isolation_trajectories-GMM
This repository holds code for growth mixture models (GMM) of social isolation variables at ages 5, 7, 10 and 12 and how the trajectories identified are associated with antecedents and outcomes in the E-Risk study. 

Code for manuscript titled: "Antecedents and outcomes of social isolation across childhood".

All code written by Katherine N Thompson.
Analyses for this project were conducted in MPlus (Version 8.4) and R (version XXX). 

Trajectory_models (Mplus): *(will be uploaded in a txt file once complete)*

1. GROWTH MIXTURE MODEL: 
 - Mplus code for linear models of 2-6 classes
 - OPTSEED checks on 3 and 4 class models
 - 5 and 6 class models fixed to zero

2. LATENT CLASS GROWTH ANALYSIS: 
 - Mplus code for linear models 
     
3. LATENT GROWTH MODEL:
 - Mplus code for linear, log linear, quadratic and log quadratic growth models

Antecedent_and_outcome_analysis (R):

1. preprocessing_isolation_trajectories.Rmd 
 - Script to clean, rename, and prepare variables for subsequent analysis

2. descriptives_of_isolation.Rmd
 - Script to provide sample descriptives 

3. trajectory_statistics_and_figures_FULL.Rmd 
 - Script which imports Mplus data and creates tables and figures of growht models and GMM results

4. regression_variable_prepararation_THREE_traj.Rmd
 - Edits to variables to be used in subsequent regression analyses
 - This is likely to be combined with the preprocessing script once all variable edits have been decided

5. regressions_isolation_THREE_trajectories.Rmd - Need to RENAME
 - Script containing all antecedent regressions with output statistics and graphs

6. outcomes_isolation_THREE_trajectories.Rmd
 - Script containing all outcome regressions with output and graphs     
