# LA County Collision Analysis

# Overview

This project is looking at driver incidents to help vehicle manufacturers to evaluate what safety improvements would be the best to research and develop for the future based on the findings of accidents reported by the California Highway Patrol (CHP) in Los Angeles County.  The data collected includes information about the incident including the severity of the accident and the safety equipment used.  Based on the data collected the factors contributing to each incident will be evaluated to determine the most significant factors to resulting in severe and fatal incidents for cars, trucks and motorcycles.  This data can then be used to identify what new safety features should be the focus for manufacturers for the future.  

## Data
The data for this project was obtained from the [Transportation Injury Mapping System](https://tims.berkeley.edu) database developed by researchers from University of California Berkley(UCBerkley) which was developed to collect accident data from the stat of California from data collected from the California Highway Patrol (CHP).  The data used in this analysis include accident data between 2017-2019 in Los Angeles County which contains detail from all accident that occurred in this region during the time period selected.  This data set will be at the core of our analysis to determine what factors were key in determining the severity of the accidents reported in this dataset.

## Cleaning the dataset
To complete the machine learning analysis using the dataset downloaded from the TIMS, the data needed to be cleaned to ensure that it could be integrated into the analysis script.  The data was divided into 3 datasets containing the crash data (crashes_df), party data (parties_df) and the victims (victims_df).  The datasets were connected by a CASE_ID number that connected the accident event with the parties and victim data.  The parties data related to the vehicles involved in the incident and the victims data contains the data related to each victim of the accident.  The crash data contains the conditions during the time the accident occured. Using these datasets it is 


### Machine Learning Model
Supervised unbalanced machince leanring. Investigating Forest Classifier Model.  

## Questions
    * Is there the ability/opportunity to improve the safety features of the data?
    
    * TBD, subject to change  

## Communication
    
    * Triangle - Joe
    
    * Square - Roger
    
    * Circle - Landon

The Group has 2 group chats and regular zoom calls. Communication flows freely and regularly.  3 branches exist. Group (as a whole) decides what goes into the main branch.

# Methodology

1. Collect and clean data

2. Create database and queries for machine learning modeling

3. Evaluate and prepare data for machine learning

4. Conduct supervised machine learning 

5. Prepare and present findings using Tableau


