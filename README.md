# LA County Collision Analysis

# Overview

This project is looking at driver incidents to help vehicle manufacturers to evaluate what safety improvements would be the best to research and develop for the future based on the findings of accidents reported by the California Highway Patrol (CHP) in Los Angeles County.  The data collected includes information about the incident including the severity of the accident and the safety equipment used.  Based on the data collected the factors contributing to each incident will be evaluated to determine the most significant factors to resulting in severe and fatal incidents for cars, trucks and motorcycles.  This data can then be used to identify what new safety features should be the focus for manufacturers for the future.  

## Data Source
The data for this project was obtained from the [Transportation Injury Mapping System](https://tims.berkeley.edu) database developed by researchers from University of California Berkley(UCBerkley) which was developed to collect accident data from the stat of California from data collected from the California Highway Patrol (CHP).  The data used in this analysis include accident data between 2017-2019 in Los Angeles County which contains detail from all accident that occurred in this region during the time period selected.  This data set will be at the core of our analysis to determine what factors were key in determining the severity of the accidents reported in this dataset.  This dataset was selected as it contained a significant number of accident events with data that contained details related to each event which would aid in the analysis being completed.

## Cleaning the dataset
To complete the machine learning analysis using the dataset downloaded from the TIMS, the data needed to be cleaned to ensure that it could be integrated into the analysis script.  The data was divided into 3 datasets containing the crash data (crashes_df), party data (parties_df) and the victims (victims_df). To clean the data the following steps were complete.

### Parties Dataset

1. Empty entries containing "-" were converted to NaN values as the data contained in these did not add to the analysis
2. Columns were evaluated to determine the number of null values and columns containing number of greater than 90% were removed.
3. Entries with blank values were dropped using dropna() to finalize the data set.
4. Float values were converted to integers where not required
5. Each column was evaluated to see the distribution for each observation definition within each object-based column in the dataset.
6. Two safety equipment columns were concatenated to create one column containing all relevant safety equipment values for each accident.

### Victims Dataset

1. Empty entries containing "-" were converted to NaN values as the data contained in these did not add to the analysis
3. Entries with blank values were dropped using dropna() to finalize the data set.
4. Float values were converted to integers where not required
5. Each column was evaluated to see the distribution for each observation definition within each object-based column in the dataset.
6. Two safety equipment columns were concatenated to create one column containing all relevant safety equipment values for each accident.
7. VICTIM_DEGREE_OF_INJURY used to create binary column 'SEVERE_INJURY' which grouped severe and fatal injuries and minor and no injury events

### Crashes Dataset

1. Data from the three year was concatenated to create a dataset containing all the crash data
2. Empty entries containing "-" were converted to NaN values as the data contained in these did not add to the analysis
3. Columns were evaluated to determine if the data contained within the table was related to the analysis and none essential data was removed.
4. Columns were evaluated to determine the number of null values and columns containing number of greater than 90% were removed.
5. Columns containing binary data with blanks in place of "0' values were filled and "Y" cells were filled with "1"
5. Entries with blank values were dropped using dropna() to finalize the data set.
6. Float values were converted to integers where not required
7. Duplicate values were removed
7. Each column was evaluated to see the distribution for each observation definition within each object-based column in the dataset.

## Database development

 The datasets were connected by a CASE_ID number that connected the accident event with the parties and victim data. The parties and victim dataframes were evaluated to ensure that they contained the CASE_ID that remained in the cleaned crashes dataframe, any nonmatching rows were dropped to ensure that they could be loaded into the database. To ensure that the party and victim data could be used effectively with postgreSQL, a PARTY_ID column was added to the parties_df to link the victim data by matching the CASE_ID and PARTY_NUMBER columns.  The PARTY_ID column was added to the victims_df to allow for queries to be completed which linked the victim data to the party data.  This was essential to ensure queries joining data from all three tables through primary and foreign keys.  The parties data related to the vehicles involved in the incident and the victims data contains the data related to each victim of the accident.  The crash data contains the conditions during the time the accident occurred.  The there dataframes could be used to create a complete dataframe that could be used in the machine learning model by completing a query on the each dataframe loaded into the data set.  A schema containing the structure of the dataframe and the relationship between each table was saved.


## Machine Learning Model

In the development of the machine learning model two major factors were considered for the development strategy.  First is the prediction should hold some accessible link to the original data, so key predictive factors could be identified and presented at the end of the analysis.  The second is the dataset is unbalances in regard to the severity of the injuries to the victims with fewer fatalities and severe injuries observed over minor to no injury.  For this we looked at multiple resampling and ensemble models to evaluate for the greatest accuracy for predicting the outcome based on the training and testing data.

### Preprocessing

The data going into the models had minor preprocessing to remove missing data and formatting to standardize the columns going in.  The data for the analysis was collected through a postgreSQL query to collect the initial data from the raw dataset with a filter for the type of vehicle.  For this study we separated the incidents involving cars, trucks and motorcycles to be analyzed separately as we felt there was a large enough difference between each to require separate analysis.  The dataset were imported into JupyterLab for additional processing.  The data was processed through the following steps

1. Dropped columns containing data which did not add relevant data to the analysis of the accident severity
2. Evaluated the distribution of each object datatype column to determine if binning data was required
3. Visualize distribution to create determine how best to bin categories with low number of observations
4. Re-evaluate after analysis


## Dashboard development
## Questions
    * Is there the ability/opportunity to improve the safety features of the data?
    
    * TBD, subject to change  

## Communication
    
    * Triangle - Joe
    
    * Square - Roger
    

The Group has 2 group chats and regular zoom calls. Communication flows freely and regularly.  3 branches exist. Group (as a whole) decides what goes into the main branch.

# Methodology



2. Create database and queries for machine learning modeling

3. Evaluate and prepare data for machine learning

4. Conduct supervised machine learning 

5. Prepare and present findings using Tableau


