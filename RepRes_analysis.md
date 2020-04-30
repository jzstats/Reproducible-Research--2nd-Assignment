<font size="2">[read the SYNOPSIS](#ind-3--SYNOPSIS)</font>

<br>  
<br>

------------------------------------------------------------------------

1 TABLE OF CONTENTS
===================

------------------------------------------------------------------------

-   [1 TABLE OF CONTENTS](#ind-1--TABLE-OF-CONTENTS)  
-   [2 PROLOGUE](#ind-2--PROLOGUE)
    -   [2.1 About The Assignment](#ind-2-1--About-The-Assignment)  
    -   [2.2 About The Main Script](#ind-2-2--About-The-Main-Script)  
    -   [2.3 About The Report](#ind-2-3--About-The-Report)  
-   [3 SYNOPSIS](#ind-3--SYNOPSIS)  
-   [4 STORM EVENTS DATASET](#ind-4--STORM-EVENTS-DATASET)
    -   [4.1 General Informations](#ind-4-1--General-Informations)  
    -   [4.2 Points Of Interest](#ind-4-2--Points-Of-Interest)
        -   [4.2.1 Changes in the composition of weather event
            types](#ind-4-2-1--Changes-in-the-composition-of-weather-event-types)  
        -   [4.2.2 Eligibility criteria for inclusion of weather events
            in the
            dataset](#ind-4-2-2--Eligibility-criteria-for-inclusion-of-weather-events-in-the-dataset)
-   [5 PRELIMINARY ACTIVITIES](#ind-5--PRELIMINARY-ACTIVITIES)
    -   [5.1 Set The Random Seed](#ind-5-1--Set-The-Random-Seed)  
    -   [5.2 Load All Required
        Libraries](#ind-5-2--Load-All-Required-Libraries)  
    -   [5.3 Create All Required
        Directories](#ind-5-3--Create-All-Required-Directories)  
    -   [5.4 Access The File With The Raw
        Data](#ind-5-4--Access-The-File-With-The-Raw-Data)  
-   [6 DATA PROCESSING](#ind-6--DATA-PROCESSING)
    -   [6.1 Load The Raw Data In R](#ind-6-1--Load-The-Raw-Data-In_R)
        -   [6.1.1 Create the table with the raw
            data](#ind-6-1-1--Create-the-table-with-the-raw-data)  
        -   [6.1.2 Conduct post validation for the table with the raw
            data](#ind-6-1-2--Conduct-post-validation-for-the-table-with-the-raw-data)  
        -   [6.1.3 Overview of the table with the raw
            data](#ind-6-1-3--Overview-of-the-table-with-the-raw-data)  
    -   [6.2 Preprocess The Raw Data](#ind-6-2--Preprocess-The-Raw-Data)
        -   [6.2.1 Verify the prerequisites for the selected
            variables](#ind-6-2-1--Verify-the-prerequisites-for-the-selected-variables)
            -   [6.2.1.1 Verify the coercibility of the values for the
                selected
                variables](#ind-6-2-1-1--Verify-the-coercibility-for-the-values-at-the-selected-variables)  
            -   [6.2.1.2 Verify the uniqueness of the key
                values](#ind-6-2-1-2--Verify-the-uniqueness-of-the-key-values)  
        -   [6.2.2 Create the table with the preprocessed
            data](#ind-6-2-2--Create-the-table-with-the-preprocessed-data)  
        -   [6.2.3 Conduct post validation for the table with the
            preprocessed
            data](#ind-6-2-3--Conduct-post-validation-for-the-table-with-the-preprocessed-data)  
        -   [6.2.4 Overview of the table with the preprocessed
            data](#ind-6-2-4--Overview-of-the-table-with-the-preprocessed-data)  
    -   [6.3 Extract The Target Data
        Subset](#ind-6-3--Extract-The-Target-Data-Subset)
        -   [6.3.1 Identify the target subset of
            observations](#ind-6-3-1--Identify-the-target-subset-of-observations)  
        -   [6.3.2 Create the table with the target data
            subset](#ind-6-3-2--Create-the-table-with-the-target-data-subset)  
        -   [6.3.3 Conduct post validation for the table with the target
            data
            subset](#ind-6-3-3--Conduct-post-validation-for-the-table-with-the-target-data-subset)  
        -   [6.3.4 Overview of the table with the target data
            subset](#ind-6-3-4--Overview-of-the-table-with-the-target-data-subset)  
    -   [6.4 Conduct In-Record Data
        Validation](#ind-6-4--Conduct-In-Record-Data-Validation)
        -   [6.4.1 Introduce information from the Strom Data
            Documentation](#ind-6-4-1--Introduce-information-from-the-Strom-Data-Documentation)  
        -   [6.4.2 Conduct in-record data validation for each
            variable](#ind-6-4-2--Conduct-in-record-data-validation-for-each-variable)  
        -   [6.4.3 Create the table with the in-record validated
            data](#ind-6-4-3--Create-the-table-with-the-in-record-validated-data)  
        -   [6.4.4 Conduct post validation for the table with the
            in-record validated
            data](#ind-6-4-4--Conduct-post-validation-for-the-table-with-the-in-record-validated-data)  
        -   [6.4.5 Overview of the table with the in-record validated
            data](#ind-6-4-5--Overview-of-the-table-with-the-in-record-validated-data)  
    -   [6.5 Impute Missing Values](#ind-6-5--Impute-Missing-Values)
        -   [6.5.1 Impute missing values at the variable
            EVTYPE](#ind-6-5-1--Impute-missing-values-at-the-variable-EVTYPE)  
        -   [6.5.2 Impute missing values at the variable
            PROPDMGEXP](#ind-6-5-2--Impute-missing-values-at-the-variable-PROPDMGEXP)  
        -   [6.5.3 Impute missing values at the variable
            CROPDMGEXP](#ind-6-5-3--Impute-missing-values-at-the-variable-CROPDMGEXP)  
        -   [6.5.4 Conduct post validation for the table with the
            imputed
            data](#ind-6-5-4--Conduct-post-validation-for-the-table-with-the-imputed-data)  
        -   [6.5.5 Overview of the table with the imputed
            data](#ind-6-5-5--Overview-of-the-table-with-the-imputed-data)  
    -   [6.6 Conduct Cross-Record Data
        Validation](#ind-6-6--Conduct-Cross-Record-Data-Validation)
        -   [6.6.1 Conduct cross-record data validation for each
            observation](#ind-6-6-1--Conduct-cross-record-data-validation-for-each-observation)  
        -   [6.6.2 Create the table with the cross-record validated
            data](#ind-6-6-2--Create-the-table-with-the-cross-record-validated-data)  
        -   [6.6.3 Conduct post validation for table with the
            cross-record validated
            data](#ind-6-6-3--Conduct-post-validation-for-table-with-the-cross-record-validated-data)  
        -   [6.6.4 Overview of the table with the cross-record validated
            data](#ind-6-6-4--Overview-of-the-table-with-the-cross-record-validated-data)  
    -   [6.7 Produce The Processed
        Data](#ind-6-7--Produce-The-Processed-Data)
        -   [6.7.1 Create the table with the processed
            data](#ind-6-7-1--Create-the-table-with-the-processed-data)  
        -   [6.7.2 Conduct post validation for the table with the
            processed
            data](#ind-6-7-2--Conduct-post-validation-for-the-table-with-the-processed-data)  
-   [7 PROCESSED DATA](#ind-7--PROCESSED-DATA)
    -   [7.1 Information For The Table With The Processed
        Data](#ind-7-1--Information-For-The-Table-With-The-Processed-Data)  
    -   [7.2 Overview Of The Table With The Processed
        Data](#ind-7-2--Overview-Of-The-Table-With-The-Processed-Data)  
    -   [7.3 Export The Table With The Processed
        Data](#ind-7-3--Export-The-Table-With-The-Processed-Data)  
-   [8 HARM ON POPULATION HEALTH](#ind-8--HARM-ON-POPULATION-HEALTH)
    -   [8.1 Harm On Population Health With Respect To Fatalities By
        Each Weather Event
        Type](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)
        -   [8.1.1 Extract the target data for harm on population health
            with respect to
            fatalities](#ind-8-1-1--Extract-the-target-data-for-harm-on-population-health-with-respect-to-fatalities)  
        -   [8.1.2 Process the target data for harm on population health
            with respect to
            fatalities](#ind-8-1-2--Process-the-target-data-for-harm-on-population-health-with-respect-to-fatalities)  
        -   [8.1.3 Summarize the processed data for harm on population
            health with respect to fatalities by each weather event
            type](#ind-8-1-3--Summarize-the-processed-data-for-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)  
        -   [8.1.4 Visualize the results of the summary for the harm on
            population health with respect to fatalities by each weather
            event
            type](#ind-8-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)
            -   [8.1.4.1 Create the components of Multiplot
                1.1](#ind-8-1-4-1--Create-the-components-of-Multiplot-1-1)
                -   [8.1.4.1.1 Create The Plot
                    1.1.1](#ind-8-1-4-1-1--Create-The-Plot-1-1-1)  
                -   [8.1.4.1.2 Create The Plot
                    1.1.2](#ind-8-1-4-1-2--Create-The-Plot-1-1-2)  
                -   [8.1.4.1.3 Create The Plot
                    1.1.3](#ind-8-1-4-1-3--Create-The-Plot-1-1-3)  
                -   [8.1.4.1.4 Create The Plot
                    1.1.4](#ind-8-1-4-1-4--Create-The-Plot-1-1-4)  
            -   [8.1.4.2 Compose the Multiplot
                1.1](#ind-8-1-4-2--Compose-the-Multiplot-1-1)  
    -   [8.2 Harm On Population Health With Respect To Injuries By Each
        Weather Event
        Type](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)
        -   [8.2.1 Extract the target data for harm on population health
            with respect to
            injuries](#ind-8-2-1--Extract-the-target-data-for-harm-on-population-health-with-respect-to-injuries)  
        -   [8.2.2 Process the target data for harm on population health
            with respect to
            injuries](#ind-8-2-2--Process-the-target-data-for-harm-on-population-health-with-respect-to-injuries)  
        -   [8.2.3 Summarize the processed data for harm on population
            health with respect to injuries by each weather event
            type](#ind-8-2-3--Summarize-the-processed-data-for-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)  
        -   [8.2.4 Visualize the results of the summary for the harm on
            population health with respect to injuries by each weather
            event
            type](#ind-8-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)
            -   [8.2.4.1 Create the components of Multiplot
                1.2](#ind-8-2-4-1--Create-the-components-of-Multiplot-1-2)
                -   [8.2.4.1.1 Create The Plot
                    1.2.1](#ind-8-2-4-1-1--Create-The-Plot-1-2-1)  
                -   [8.2.4.1.2 Create The Plot
                    1.2.2](#ind-8-2-4-1-2--Create-The-Plot-1-2-2)  
                -   [8.2.4.1.3 Create The Plot
                    1.2.3](#ind-8-2-4-1-3--Create-The-Plot-1-2-3)  
                -   [8.2.4.1.4 Create The Plot
                    1.2.4](#ind-8-2-4-1-4--Create-The-Plot-1-2-4)  
            -   [8.2.4.2 Compose the Multiplot
                1.2](#ind-8-2-4-2--Compose-the-Multiplot-1-2)  
    -   [8.3 Harm On Population Health With Respect To Casualties By
        Each Weather Event
        Type](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)
        -   [8.3.1 Extract the target data for harm on population health
            with respect to
            casualties](#ind-8-3-1--Extract-the-target-data-for-harm-on-population-health-with-respect-to-casualties)  
        -   [8.3.2 Process the target data for harm on population health
            with respect to
            casualties](#ind-8-3-2--Process-the-target-data-for-harm-on-population-health-with-respect-to-casualties)  
        -   [8.3.3 Summarize the processed data for harm on population
            health with respect to casualties by each weather event
            type](#ind-8-3-3--Summarize-the-processed-data-for-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)  
        -   [8.3.4 Visualize the results of the summary for the harm on
            population health with respect to casualties by each weather
            event
            type](#ind-8-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)
            -   [8.3.4.1 Create the components of Multiplot
                1.3](#ind-8-3-4-1--Create-the-components-of-Multiplot-1-3)
                -   [8.3.4.1.1 Create The Plot
                    1.3.1](#ind-8-3-4-1-1--Create-The-Plot-1-3-1)  
                -   [8.3.4.1.2 Create The Plot
                    1.3.2](#ind-8-3-4-1-2--Create-The-Plot-1-3-2)  
                -   [8.3.4.1.3 Create The Plot
                    1.3.3](#ind-8-3-4-1-3--Create-The-Plot-1-3-3)  
                -   [8.3.4.1.4 Create The Plot
                    1.3.4](#ind-8-3-4-1-4--Create-The-Plot-1-3-4)  
            -   [8.3.4.2 Compose the Multiplot
                1.3](#ind-8-3-4-2--Compose-the-Multiplot-1-3)  
-   [9 HARM ON ECONOMY](#ind-9--HARM-ON-ECONOMY)
    -   [9.1 Harm On Economy With Respect To Property Damage By Each
        Weather Event
        Type](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)
        -   [9.1.1 Extract the target data for harm on economy with
            respect to property
            damage](#ind-9-1-1--Extract-the-target-data-for-harm-on-economy-with-respect-to-property-damage)  
        -   [9.1.2 Process the target data for harm on economy with
            respect to property
            damage](#ind-9-1-2--Process-the-target-data-for-harm-on-economy-with-respect-to-property-damage)  
        -   [9.1.3 Summarize the processed data for harm on economy with
            respect to property damage by each weather event
            type](#ind-9-1-3--Summarize-the-processed-data-for-harm-on-economy-with-respect-to-property-damage-by-each-weather-event-type)  
        -   [9.1.4 Visualize the results of the summary for the harm on
            economy with respect to property damage by each weather
            event
            type](#ind-9-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-property-damage-by-each-weather-event-type)
            -   [9.1.4.1 Create the components of Multiplot
                2.1](#ind-9-1-4-1--Create-the-components-of-Multiplot-2-1)
                -   [9.1.4.1.1 Create The Plot
                    2.1.1](#ind-9-1-4-1-1--Create-The-Plot-2-1-1)  
                -   [9.1.4.1.2 Create The Plot
                    2.1.2](#ind-9-1-4-1-2--Create-The-Plot-2-1-2)  
                -   [9.1.4.1.3 Create The Plot
                    2.1.3](#ind-9-1-4-1-3--Create-The-Plot-2-1-3)  
                -   [9.1.4.1.4 Create The Plot
                    2.1.4](#ind-9-1-4-1-4--Create-The-Plot-2-1-4)  
            -   [9.1.4.2 Compose the Multiplot
                2.1](#ind-9-1-4-2--Compose-the-Multiplot-2-1)  
    -   [9.2 Harm On Economy With Respect To Crop Damage By Each Weather
        Event
        Type](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)
        -   [9.2.1 Extract the target data for harm on economy with
            respect to crop
            damage](#ind-9-2-1--Extract-the-target-data-for-harm-on-economy-with-respect-to-crop-damage)  
        -   [9.2.2 Process the target data for harm on economy with
            respect to crop
            damage](#ind-9-2-2--Process-the-target-data-for-harm-on-economy-with-respect-to-crop-damage)  
        -   [9.2.3 Summarize the processed data for harm on economy with
            respect to crop damage by each weather event
            type](#ind-9-2-3--Summarize-the-processed-data-for-harm-on-economy-with-respect-to-crop-damage-by-each-weather-event-type)  
        -   [9.2.4 Visualize the results of the summary for the harm on
            economy with respect to crop damage by each weather event
            type](#ind-9-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-crop-damage-by-each-weather-event-type)
            -   [9.2.4.1 Create the components of Multiplot
                2.2](#ind-9-2-4-1--Create-the-components-of-Multiplot-2-2)
                -   [9.2.4.1.1 Create The Plot
                    2.2.1](#ind-9-2-4-1-1--Create-The-Plot-2-2-1)  
                -   [9.2.4.1.2 Create The Plot
                    2.2.2](#ind-9-2-4-1-2--Create-The-Plot-2-2-2)  
                -   [9.2.4.1.3 Create The Plot
                    2.2.3](#ind-9-2-4-1-3--Create-The-Plot-2-2-3)  
                -   [9.2.4.1.4 Create The Plot
                    2.2.4](#ind-9-2-4-1-4--Create-The-Plot-2-2-4)  
            -   [9.2.4.2 Compose the Multiplot
                2.2](#ind-9-2-4-2--Compose-the-Multiplot-2-2)  
    -   [9.3 Harm On Economy With Respect To Economic Damage By Each
        Weather Event
        Type](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)
        -   [9.3.1 Extract the target data for harm on economy with
            respect to economic
            damage](#ind-9-3-1--Extract-the-target-data-for-harm-on-economy-with-respect-to-economic-damage)  
        -   [9.3.2 Process the target data for harm on economy with
            respect to economic
            damage](#ind-9-3-2--Process-the-target-data-for-harm-on-economy-with-respect-to-economic-damage)  
        -   [9.3.3 Summarize the processed data for harm on economy with
            respect to economic damage by each weather event
            type](#ind-9-3-3--Summarize-the-processed-data-for-harm-on-economy-with-respect-to-economic-damage-by-each-weather-event-type)  
        -   [9.3.4 Visualize the results of the summary for the harm on
            economy with respect to economic damage by each weather
            event
            type](#ind-9-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-economic-damage-by-each-weather-event-type)
            -   [9.3.4.1 Create the components of Multiplot
                2.3](#ind-9-3-4-1--Create-the-components-of-Multiplot-2-3)
                -   [9.3.4.1.1 Create The Plot
                    2.3.1](#ind-9-3-4-1-1--Create-The-Plot-2-3-1)  
                -   [9.3.4.1.2 Create The Plot
                    2.3.2](#ind-9-3-4-1-2--Create-The-Plot-2-3-2)  
                -   [9.3.4.1.3 Create The Plot
                    2.3.3](#ind-9-3-4-1-3--Create-The-Plot-2-3-3)  
                -   [9.3.4.1.4 Create The Plot
                    2.3.4](#ind-9-3-4-1-4--Create-The-Plot-2-3-4)  
            -   [9.3.4.2 Compose the Multiplot
                2.3](#ind-9-3-4-2--Compose-the-Multiplot-2-3)  
-   [10 RESULTS](#ind-10--RESULTS)
    -   [10.1 Question 1: Across the United States, which types of
        events (as indicated in the EVTYPE variable) are most harmful
        with respect to population
        health?](#ind-10-1--results-harm-on-population-health)
        -   [10.1.1 Overview of results for the harm on population
            health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)  
        -   [10.1.2 Most harmful event types with respect to
            fatalities](#ind-10-1-2--Most-harmful-weather-event-types-with-respect-to-fatalities)  
        -   [10.1.3 Most harmful event types with respect to
            injuries](#ind-10-1-3--Most-harmful-weather-event-types-with-respect-to-injuries)  
        -   [10.1.4 Most harmful event types with respect to
            casualties](#ind-10-1-4--Most-harmful-weather-event-types-with-respect-to-casualties)  
    -   [10.2 Question 2 : Across the United States, which types of
        events have the greatest economic
        consequences?](#ind-10-2--results-harm-on-economy)
        -   [10.2.1 Overview of results for the harm on
            economy](#ind-10-2-1--Overview-of-results-for-the-harm-on-economy)  
        -   [10.2.2 Most harmful event types with respect to property
            damage](#ind-10-2-2--Most-harmful-weather-event-types-with-respect-to-property-damage)  
        -   [10.2.3 Most harmful event types with respect to crop
            damage](#ind-10-2-3--Most-harmful-weather-event-types-with-respect-to-crop-damage)  
        -   [10.2.4 Most harmful event types with respect to economic
            damage](#ind-10-2-4--Most-harmful-weather-event-types-with-respect-to-economic-damage)  
-   [11 REPRODUCIBILITY DETAILS](#ind-11--REPRODUCIBILITY-DETAILS)
    -   [11.1 Session Info](#ind-11-1--Session-Info)  
    -   [11.2 Options](#ind-11-2--Options)  
    -   [11.3 MD5 Checksums](#ind-11-3--MD5-Checksums)
        -   [11.3.1 Create a utility function to export MD5
            checksums](#ind-11-3-1--Create-a-utility-function-to-export-MD5-checksums)  
        -   [11.3.2 MD5 checksum of the input file with the unprocessed
            data](#ind-11-3-2--MD5-checksum-of-the-input-file-with-the-unprocessed-data)  
        -   [11.3.3 MD5 checksum of the output file with the processed
            data](#ind-11-3-3--MD5-checksum-for-the-output-file-with-the-processed-data)  
        -   [11.3.4 MD5 checksum of the output files with the
            results](#ind-11-3-4--MD5-checksum-of-the-output-files-with-the-results)  
    -   [11.4 Random Seed](#ind-11-4--Random-Seed)  
-   [12 LICENSE](#ind-12--LICENSE)  
-   [13 REFERENCES](#ind-13--REFERENCES)

<br>

<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

2 PROLOGUE
==========

------------------------------------------------------------------------

To provide some context for the reader with respect to *what this is all
about*, some general information was included:

-   [2.1 About The Assignment](#ind-2-1--About-The-Assignment)  
-   [2.2 About The Main Script](#ind-2-2--About-The-Main-Script)  
-   [2.3 About The Report](#ind-2-3--About-The-Report)

A summary for the analysis was not included in this chapter, but can be
found at the chapter [SYNOPSIS](#ind-3--SYNOPSIS).

<br>

<font size="1">[back to start of this
chapter](#ind-2--PROLOGUE)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

2.1 About The Assignment
------------------------

This project was created for the 2nd peer-graded assignment of:

> Course 5: Reproducible Research,  
> from Data Science Specialization,  
> by Johns Hopkins University,  
> at Coursera

The course is taught by:

-   Jeff Leek, PhD  
-   Roger D. Peng, PhD  
-   Brian Caffo, PhD

As putted by the teachers of the course:

> The basic goal of this assignment is to explore the NOAA Storm
> Database and answer some basic questions about severe weather events.
> You must use the database to answer the questions below and show the
> code for your entire analysis. Your analysis can consist of tables,
> figures, or other summaries. You may use any R package you want to
> support your analysis.

The assignment requests to address 2 questions:

> Your data analysis must address the following questions:
>
> **Question 1:** Across the United States, which types of events (as
> indicated in the EVTYPE variable) are most harmful with respect to
> population health?
>
> **Question 2:** Across the United States, which types of events have
> the greatest economic consequences?

based on the observation from the [supplied
dataset](https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2):

> The data for this assignment come in the form of a
> comma-separated-value file compressed via the bzip2 algorithm to
> reduce its size.

Some quite general guidelines and a tip were provided:

> Consider writing your report as if it were to be read by a government
> or municipal manager who might be responsible for preparing for severe
> weather events and will need to prioritize resources for different
> types of events. However, there is no need to make any specific
> recommendations in your report.

> The events in the database start in the year 1950 and end in November
> 2011. In the earlier years of the database there are generally fewer
> events recorded, most likely due to a lack of good records. More
> recent years should be considered more complete.

It was deliberately decided to adopt a more educational approach aiming
to produce a well-justified and self-explained product that can serve as
guide to a beginner on how a basic pipeline can be constructed in order
to obtain a report with an analysis from scratch.

**All the requirements for the assignment were followed, with one
exception:**

-   **due to the book-like structure that was adopted for the report it
    was considered more appropriate to include the
    [SYNOPSIS](#ind-3--SYNOPSIS) not immediately after the title, but as
    a separate chapter after the [PROLOGUE](#ind-2--PROLOGUE)**

<br>

<font size="1">[back to start of this
section](#ind-2-1--About-The-Assignment)</font>  
<font size="1">[back to start of this
chapter](#ind-2--PROLOGUE)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

2.2 About The Main Script
-------------------------

In the github repository
<a href="https://github.com/jzstats/Reproducible-Research--2nd-Assignment" class="uri">https://github.com/jzstats/Reproducible-Research--2nd-Assignment</a>,
that hosts all the material relevant to this project the main script
[RepRes\_\_\_\_\_analysis.Rmd](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.Rmd)
that contains the code used to conduct the analysis can be found.

When *knitted* directly from RStudio, it produces the Markdown file
[RepRes\_\_\_\_\_analysis.md](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.md)
with the analysis.

In addition, it was rendered with appropriate scripts, (as explained at
the following section of this chapter, [2.3 About The
Report](#ind-2-3--About-The-Report)) to produce some html variations of
the report that were used to populate the
[webpage](https://jzstats.github.io/Reproducible-Research--2nd-Assignment/)
that was created to showcase this project.

<br>

<font size="1">[back to start of this
section](#ind-2-2--About-The-Main-Script)</font>  
<font size="1">[back to start of this
chapter](#ind-2--PROLOGUE)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

2.3 About The Report
--------------------

The main Rmd file,
[RepRes\_analysis.Rmd](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.Rmd)
that contains the code to conduct the analysis and produces the Markdown
document
[RepRes\_analysis.md](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.md)
was rendered by appropriate scripts to create alternative html versions
of the report with the analysis, that are hosted at the
[webpage](https://jzstats.github.io/Reproducible-Research--2nd-Assignment/)
created to showcase the this project:

1.  [Report(versions:html\_document)](https://jzstats.github.io/Reproducible-Research--2nd-Assignment/Report(version:html_document).html)
    -   The simplest version of the report that is a direct analog of
        the Markdown document
        [RepRes\_analysis.md](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.md).
        It was produced by rendering the
        [RepRes\_analysis.Rmd](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.Rmd)
        with the script
        [render\_report\_\_\_\_\_html\_document.R](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/rendering_scripts/render_report_____html_document.R).  
2.  [Report(version:html\_pretty)](https://jzstats.github.io/Reproducible-Research--2nd-Assignment/Report(version:html_pretty).html)
    -   A more visually appealing version of the report powered by the
        [prettydocs](https://cran.rstudio.com/web/packages/prettydoc/index.html)
        library. It was produced by rendering the
        [RepRes\_analysis.Rmd](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.Rmd)
        with the script
        [render\_report\_\_\_\_\_html\_pretty.R](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/rendering_scripts/render_report_____html_pretty.R).  
3.  [Report(version:readthedown)](https://jzstats.github.io/Reproducible-Research--2nd-Assignment/Report(version:readthedown).html)
    -   A more visually appealing and practical (due to the sidepanel
        with contents that contains) book-like version of the report
        powered by the
        [rmdformats](https://cran.rstudio.com/web/packages/rmdformats/index.html)
        library. It was produced by rendering the
        [RepRes\_analysis.Rmd](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.Rmd)
        with the script
        [render\_report\_\_\_\_\_readthedown.R](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/rendering_scripts/render_report_____readthedown.R).
        This is the version that was uploaded to RPubs at this
        [link](https://rpubs.com/JZstats/Reproducible-Research--2nd-Assignment).

<br>

<font size="1">[back to start of this
section](#ind-2-3--About-The-Report)</font>  
<font size="1">[back to start of this
chapter](#ind-2--PROLOGUE)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

3 SYNOPSIS
==========

------------------------------------------------------------------------

The U.S. National Oceanic and Atmospheric Administration’s (NOAA) *Storm
Events Database*, was explored to identify the most harmful weather
event types, among the weather phenomena defined in *NATIONAL WEATHER
SERVICE INSTRUCTION 10-1605, AUGUST 17, 2007 (*at chapter 7*)*, with
respect to population health and economy.

The raw data was loaded in R from the supplied file, preproccessed, the
target data subset was extracted, in-record validation was conducted,
the majority of missing values were imputed (via a deterministic and
conservative approach), the observations were cross validated and
finally the table with the processed data was created, which contained
all information needed to address the two questions of interest:

1.  Across the United States, which types of events (as indicated in the
    EVTYPE variable) are most harmful with respect to population
    health?  
2.  Across the United States, which types of events have the greatest
    economic consequences?

For the first question, the harm on population health by each weather
event type was evaluated (separately) based on the average impact of the
observations that resulted in non-zero damage over each of the three
perspectives (fatalities, injuries and casualties) that were considered
to be of importance.

Similarly for the second question, the harm on economy by each weather
event type was evaluated (separately) based on the average impact from
the observations that resulted in non-zero damage over each of the three
perspectives (property damage, crop damage and economic damage) that
were considered to be of importance.

Although for both questions the main criterion to rank the included
weather event types (from the most harmful to the least) for each
perspective was the overall average damage observed (with respect to
each perspective) based on the observations that caused non-zero damage,
the average for the 90% of cases with lowest impact versus the average
for the 10% of cases with the highest impact (for each of the included
weather event types) was reported to provide a more complete and
insightful ‘picture’ of the consequences observed by each weather event
type, due to the fact that for all perspectives, the majority of weather
event types were highly positively skewed.

The analysis was structured, performed and documented in such way that
fortifies the reproducibility of the report and explains every required
detail so that even the non-expert can follow the procedure and
understand the thought process behind the decision making at each stage.

<br>

<font size="1">[back to start of this
chapter](#ind-3--SYNOPSIS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

4 STORM EVENTS DATASET
======================

------------------------------------------------------------------------

To conduct the analysis for this project, the file with the raw data
[repdata\_data\_StormData.csv.bz2](https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2)
was used, which contains data from the *Storm Events Dataset* gathered
and made publicly available by U.S. National Oceanic and Atmospheric
Administration (NOAA).

Some [general information](#ind-4-1--General-Informations) as well as
two [points of interest](#ind-4-2--Points-Of-Interest) about the
dataset:

-   [4.2.1 Changes in the composition of weather event
    types](#ind-4-2-1--Changes-in-the-composition-of-weather-event-types)  
-   [4.2.2 Eligibility criteria for inclusion of weather events in the
    dataset](#ind-4-2-2--Eligibility-criteria-for-inclusion-of-weather-events-in-the-dataset)

were discussed to provide the nessecary insights in order to understand
why the decisions which govern the approach adopted in this analysis
were made.

<br>

<font size="1">[back to start of this
chapter](#ind-4--STORM-EVENTS-DATASET)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

4.1 General Informations
------------------------

The version of the dataset used in this analysis contains observations
for the severe weather events that happened (or more accurately begun)
from January 1950 to November 2011 at United States.

Further details about the dataset (which was used in this analysis) can
be accessed by the supplemental material provided at the instructions of
the assignment:

-   [NATIONAL WEATHER SERVICE INSTRUCTION 10-1605 (AUGUST
    17, 2007)](https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf)
    (also available at the GitHub repository created to support this
    project through [this
    link](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/supplemental_information/NATIONAL%20WEATHER%20SERVICE%20INSTRUCTION%2010-1605%20(AUGUST%2017%2C%202007).pdf))

-   [Storm Data Faq
    Page](https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2FNCDC%20Storm%20Events-FAQ%20Page.pdf)
    (also available at the GitHub repository created to support this
    project through [this
    link](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/supplemental_information/NCDC%20Storm%20Events-FAQ%20Page.pdf))

For additional information on the Storm Events Dataset, as well as an
updated and cleaner version of the data, with observations from January
1950 up to January 2020 (at the time this report was produced, but it is
expected to continue updating), it is recommended to visit and explore:

-   [NOAA’s Storm Events Dataset official
    wepbage](https://www.ncdc.noaa.gov/stormevents)

Finally, a document with detailed information for the history of the
dataset, was available at [NOAA’s Storm Events Dataset wepbage for the
version history](https://www.ncdc.noaa.gov/stormevents/versions.jsp):

-   [The History of the Storm Events
    Database](https://www1.ncdc.noaa.gov/pub/data/swdi/stormevents/The-History-of-the-Storm-Events-Database.docx)
    (also available at the GitHub repository created to support this
    project through [this
    link](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/supplemental_information/The-History-of-the-Storm-Events-Database.docx))

<br>

<font size="1">[back to start of this
section](#ind-4-1--General-Informations)</font>  
<font size="1">[back to start of this
chapter](#ind-4--STORM-EVENTS-DATASET)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

4.2 Points Of Interest
----------------------

In order to understand why some of the decisions which govern the
approach adopted in this analysis were made, it is essential to take
into account two crucial facts with respect to the observations recorded
in the dataset:

-   [4.2.1 Changes in the composition of weather event
    types](#ind-4-2-1--Changes-in-the-composition-of-weather-event-types)
    -   Both the composition of the weather events types that were
        recorded in the dataset and the way the data was entered in the
        system (the data entry procedure and the database software)
        changed several times across the years.  
-   [4.2.2 Eligibility criteria for inclusion of weather events in the
    dataset](#ind-4-2-2--Eligibility-criteria-for-inclusion-of-weather-events-in-the-dataset)
    -   Not every weather event that occurred in the period that the
        dataset spans, was automatically eligible to be recorded in the
        dataset. Only those that have caused harm (either to population
        health or to economy)  
        or have gathered public interest were recorded.

<br>

<font size="1">[back to start of this
section](#ind-4-2--Points-Of-Interest)</font>  
<font size="1">[back to start of this
chapter](#ind-4--STORM-EVENTS-DATASET)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 4.2.1 Changes in the composition of weather event types

Through the years, as the publicity of the dataset soared, several
aspects governing the data collection procedure changed in order to
expand, enrich and fortify the quality of the data.

As a result the number of defined weather event types that were
collected increased several times starting from just one (*TORNADO*) for
the first few years and expanding into 48 defined weather event times at
the time the dataset used in this analysis was created. Consequently
there are inconsistencies in the the composition of weather event types
between different periods that could affect the integrity of the
analysis.

Furthermore for the period 1996 up to 2000 while the weather event types
that were being recorded had already been significantly increased, the
values for the weather event type entries were entered though a free
text field resulting in more than 950 different unique entries.

For this reason **it was decided to use for the analysis only the part
with observations since January 2001**, for which as a result of the
introduction of a drop down menu and the removal of the free text field
for the entries of the weather event type values, the majority of
observations don’t suffer from such problems and the weather event types
contained include the majority of the latest defined weather event
types.

<br>

<font size="1">[back to start of this
subsection](#ind-4-2-1--Changes-in-the-composition-of-weather-event-types)</font>  
<font size="1">[back to start of this
section](#ind-4-2--Points-Of-Interest)</font>  
<font size="1">[back to start of this
chapter](#ind-4--STORM-EVENTS-DATASET)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 4.2.2 Eligibility criteria for inclusion of weather events in the dataset

Out of all weather events that happened in the period from January 2001
to November 2011 at United States and were classified as one of the
types that were recorded (at the period they occurred), only those in
the subset that belonged to at least one of the following three groups
were eligible to be included in the dataset:

1.  The occurrence of storms and other significant weather phenomena
    having sufficient intensity to cause loss of life, injuries,
    significant property damage, and/or disruption to commerce.  
2.  Rare, unusual, weather phenomena that generate media attention.  
3.  Other significant meteorological events, such as record maximum or
    minimum temperatures or precipitation that occur in connection with
    another event.

An important implication of the above policy must be highlighted:

-   From all the weather phenomena that happened in the period from
    January 2001 to November 2011 at United States and were of a type
    that was recorded at the time they occurred, the dataset contains
    only the subset with those that either resulted in harm (to
    population health or to economy) or gathered high publicity.  
-   On the contrary all the weather phenomena that happened in the
    period from January 2001 to November 2011 at United States and
    neither caused any harm (to population health or to economy) nor
    gathered high public interest, were ignored, even if they were of a
    type that was recorded at the time they occurred.

Consequently any conclusion made for a weather event type in *general*
will inevitably be biased, as it will overestimate the consequences with
respect to the harm they caused (either to population health or to
economy) due to the fact that the available sample is not representative
of the the overall population of weather phenomena (of the types that
were recorded) by default.

For this reason **it was decided to use for the analysis:**

-   **Only the subset of observations that resulted in non-zero harm
    with respect to each of the perspectives of interest (fatalities,
    injuries and casualties) in order to determine the most harmful
    weather event types for the population health.**  
-   **Only the subset of observations that resulted in non-zero harm
    with respect to each of the perspectives of interest (property
    damage, crop damage and economic damage) in order to determine the
    most harmful weather event types for the economy.**

<br>

<font size="1">[back to start of this
subsection](#ind-4-2-2--Eligibility-criteria-for-inclusion-of-weather-events-in-the-dataset)</font>  
<font size="1">[back to start of this
section](#ind-4-2--Points-Of-Interest)</font>  
<font size="1">[back to start of this
chapter](#ind-4--STORM-EVENTS-DATASET)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

5 PRELIMINARY ACTIVITIES
========================

------------------------------------------------------------------------

Executes four preliminary tasks in order to ensure (and set when it is
needed and possible) that the working directory and the R session are
ready to proceed with the analysis:

-   [5.1 Set The Random Seed](#ind-5-1--Set-The-Random-Seed)
    -   Sets a random seed to make the random events reproducible.  
-   [5.2 Load All Required
    Libraries](#ind-5-2--Load-All-Required-Libraries)
    -   Loads all libraries required to conduct the analysis and produce
        the report.  
-   [5.3 Create All Required
    Directories](#ind-5-3--Create-All-Required-Directories)
    -   Creates (if it doesn’t exist) a directory tree (at the working
        directory) in which the output files will be exported.  
-   [5.4 Access The File With The Raw
    Data](#ind-5-4--Access-The-File-With-The-Raw-Data)
    -   Downloads the file with the raw data,
        [repdata\_data\_StormData.csv.bz2](https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2)
        in the working directory, if it doesn’t already exist.

<br>

<font size="1">[back to start of this
chapter](#ind-5--PRELIMINARY-ACTIVITIES)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

5.1 Set The Random Seed
-----------------------

In an attempt to fortify the reproducibility of the random events, the
number *1234567890* was explicitly chosen and set as the random seed.

    # Select a random seed.
    selected_random_seed <- 1234567890

    # Set the selected random seed.
    set.seed(selected_random_seed)

*Note that the only random events that took place in this analysis were
the assignment of random positions for the labels at the plots: *

-   *[Plot 1.1.4](#ind-8-1-4-1-4--Create-The-Plot-1-1-4)*  
-   *[Plot 1.2.4](#ind-8-2-4-1-4--Create-The-Plot-1-2-4)*  
-   *[Plot 1.3.4](#ind-8-3-4-1-4--Create-The-Plot-1-3-4)*  
-   *[Plot 2.1.4](#ind-9-1-4-1-4--Create-The-Plot-2-1-4)*  
-   *[Plot 2.2.4](#ind-9-2-4-1-4--Create-The-Plot-2-2-4)*  
-   *[Plot 2.3.4](#ind-9-3-4-1-4--Create-The-Plot-2-3-4)*

*by the function geom\_repel\_label() from the ggrepel library.*

<br>

<font size="1">[back to start of this
section](#ind-5-1--Set-The-Random-Seed)</font>  
<font size="1">[back to start of this
chapter](#ind-5--PRELIMINARY-ACTIVITIES)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

5.2 Load All Required Libraries
-------------------------------

Loads all libraries required to conduct the analysis and produce the
report.

    # Load all required libraries.
    library(tools)
    library(rmarkdown)
    library(knitr)
    library(kableExtra)
    library(magrittr)
    library(DT)
    library(rmdformats)
    library(data.table)
    library(validate)
    library(stringr)
    library(moments)
    library(ggplot2)

    ## 
    ## Attaching package: 'ggplot2'

    ## The following object is masked from 'package:validate':
    ## 
    ##     expr

    library(ggrepel)
    library(grid)
    library(gridExtra)

*Note that the libraries:*

-   *prettydocs*
    -   *was only used to produce the
        [Report(version:html\_pretty)](https://jzstats.github.io/Reproducible-Research--2nd-Assignment/Report(version:html_pretty).html)*  
-   *rmdformats*
    -   *was only used to produce the
        [Report(version:readthedown)](https://jzstats.github.io/Reproducible-Research--2nd-Assignment/Report(version:readthedown).html)*

*are not essential to conduct the analysis or were used for any other
purpose in this project.*

<br>

<font size="1">[back to start of this
section](#ind-5-2--Load-All-Required-Libraries)</font>  
<font size="1">[back to start of this
chapter](#ind-5--PRELIMINARY-ACTIVITIES)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

5.3 Create All Required Directories
-----------------------------------

During the execution of the main script,
[RepRes\_analysis.Rmd](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.Rmd)
several outputs are produced, (that are also included in the report),
mostly to enhance further the reproducibility of the analysis.

All those files are exported in appropriate sub-directories inside the
directory with name *outputs* which is created at the working directory.

    # Create a list with the paths to all sub-directories 
    # of the directory tree for the outputs of this analysis
    directory_tree_____outputs <- list(
        "filepath_____outputs_____processed_data" = 
            file.path("outputs", "processed_data"),
        "filepath_____outputs_____harm_on_population_health_____figures" = 
            file.path("outputs", "harm_on_population_health", "figures"),
        "filepath_____outputs_____harm_on_population_health_____results" = 
            file.path("outputs", "harm_on_population_health", "results"),
        "filepath_____outputs_____harm_on_economy_____figures" = 
            file.path("outputs", "harm_on_economy", "figures"),
        "filepath_____outputs_____harm_on_economy_____results" = 
            file.path("outputs", "harm_on_economy", "results"),
        "filepath_____outputs_____reproducibility_support_____r_session" = 
            file.path("outputs", "reproducibility_support", "r_session"),
        "filepath_____outputs_____reproducibility_support_____MD5_checksums" =
            file.path("outputs", "reproducibility_support", "MD5_checksums")
        
    )

    # Create the directory tree for the outputs of the analysis.  
    invisible(lapply(
        X = directory_tree_____outputs,
        FUN = function(filepath_of_subdirectory) {
            if ( ! dir.exists(filepath_of_subdirectory) ) {
                dir.create(filepath_of_subdirectory, recursive = TRUE)
            }
        }
    ))


    # Check if all subdirectories of the directory for the outputs of the analysis 
    # were successfully created.
    do_the_directories_exists <- vapply(
        X = directory_tree_____outputs,
        FUN = dir.exists,
        FUN.VALUE = logical(1)
    )

    # If failed to created any of the sub-directories 
    # required for the outputs of the analysis 
    # the process terminates
    if (any(!do_the_directories_exists)) {
        stop(
            "\n",
            "Failed to create the directories: ", "\n",
            paste0("\t", directory_tree_____outputs[!do_the_directories_exists], "\n"),
            "The process is aborted for now.", "\n",
            "Please rerun the script or create the required sub-directories manually.", 
            "\n"
        )
    }

*If failed to created any of the sub-directories in the directory tree
for the outputs of the analysis, the process terminates.*

<br>

<font size="1">[back to start of this
section](#ind-5-3--Create-All-Required-Directories)</font>  
<font size="1">[back to start of this
chapter](#ind-5--PRELIMINARY-ACTIVITIES)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

5.4 Access The File With The Raw Data
-------------------------------------

The file with name
[repdata\_data\_StormData.csv.bz2](https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2),
which contains data from the [Storm Events
Dataset](#ind-4--STORM-EVENTS-DATASET) was supplied for this assignment
and used to conduct the analysis.

If the file doesn’t already exists at the working directory, an attempt
will be made to download it automatically.

    # Path to the file with the compressed raw data.
    filepath_____unprocessed_data <- "repdata_data_StormData.csv.bz2"

    # The link supplied by the instuctions of the assignment 
    # to download the file with the compressed raw data.
    url_to_download_the_data_file <- 
      "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"

    # Check if the file 'repdata_data_StormData.csv.bz2', 
    # with the compressed raw data is available at the working directory. 
    ## if it doesn't exist...
    if ( !file.exists(filepath_____unprocessed_data) ) {

      message(
        "\n", 
        "The file, '", filepath_____unprocessed_data, "'", "\n", 
        "doesn't exists at the working directory.",
        "\n"
      )
      message(
        "\n", "Trying to download the file, ", "\n",
        "'", filepath_____unprocessed_data, "' ", "\n",
        "with the raw data from the url: ", "\n",
        "\t", "'",  url_to_download_the_data_file, "'"
      )
      
      ### ...an attempt is made to download it from the link supplied by assignment
      try(
        download.file(
          url = url_to_download_the_data_file,
          destfile = filepath_____unprocessed_data)
      )
      
      ## Checks if the file 'repdata_data_StormData.csv.bz2' 
      ## was successfully downloaded.  
      ### in case the file is not found at the working directory 
      ### after the attempt to download 
      ### the process terminates with an informative message 
      ### that explains the situation to the user
      if ( !file.exists(filepath_____unprocessed_data)  ) {
        stop(
          "\n", 
          "Failed to download the required file,", "\n",
          "'", filepath_____unprocessed_data, "'", "\n",
          "with the raw data.", "\n",
          "The process is aborted for now."
        )
      } 
    } 

*If the download fails, the process terminates.*

<br>

<font size="1">[back to start of this
section](#ind-5-4--Access-The-File-With-The-Raw-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-5--PRELIMINARY-ACTIVITIES)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

6 DATA PROCESSING
=================

------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

6.1 Load The Raw Data In R
--------------------------

<br>

<font size="1">[back to start of this
section](#ind-6-1--Load-The-Raw-Data-In_R)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.1.1 Create the table with the raw data

<br>

<font size="1">[back to start of this
subsection](#ind-6-1-1--Create-the-table-with-the-raw-data)</font>  
<font size="1">[back to start of this
section](#ind-6-1--Load-The-Raw-Data-In_R)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.1.2 Conduct post validation for the table with the raw data

<br>

<font size="1">[back to start of this
subsection](#ind-6-1-2--Conduct-post-validation-for-the-table-with-the-raw-data)</font>  
<font size="1">[back to start of this
section](#ind-6-1--Load-The-Raw-Data-In_R)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.1.3 Overview of the table with the raw data

<br>

<font size="1">[back to start of this
subsection](#ind-6-1-3--Overview-of-the-table-with-the-raw-data)</font>  
<font size="1">[back to start of this
section](#ind-6-1--Load-The-Raw-Data-In_R)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

6.2 Preprocess The Raw Data
---------------------------

<br>

<font size="1">[back to start of this
section](#ind-6-2--Preprocess-The-Raw-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.2.1 Verify the prerequisites for the selected variables

<br>

<font size="1">[back to start of this
subsection](#ind-6-2-1--Verify-the-prerequisites-for-the-selected-variables)</font>  
<font size="1">[back to start of this
section](#ind-6-2--Preprocess-The-Raw-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.2.1.1 Verify the coercibility of the values for the selected variables

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-2-1-1--Verify-the-coercibility-for-the-values-at-the-selected-variables)</font>  
<font size="1">[back to start of this
subsection](#ind-6-2-1--Verify-the-prerequisites-for-the-selected-variables)</font>  
<font size="1">[back to start of this
section](#ind-6-2--Preprocess-The-Raw-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.2.1.2 Verify the uniqueness of the key values

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-2-1-2--Verify-the-uniqueness-of-the-key-values)</font>  
<font size="1">[back to start of this
subsection](#ind-6-2-1--Verify-the-prerequisites-for-the-selected-variables)</font>  
<font size="1">[back to start of this
section](#ind-6-2--Preprocess-The-Raw-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

### 6.2.2 Create the table with the preprocessed data

<br>

<font size="1">[back to start of this
subsection](#ind-6-2-2--Create-the-table-with-the-preprocessed-data)</font>  
<font size="1">[back to start of this
section](#ind-6-2--Preprocess-The-Raw-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.2.3 Conduct post validation for the table with the preprocessed data

<br>

<font size="1">[back to start of this
subsection](#ind-6-2-3--Conduct-post-validation-for-the-table-with-the-preprocessed-data)</font>  
<font size="1">[back to start of this
section](#ind-6-2--Preprocess-The-Raw-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.2.4 Overview of the table with the preprocessed data

<br>

<font size="1">[back to start of this
subsection](#ind-6-2-4--Overview-of-the-table-with-the-preprocessed-data)</font>  
<font size="1">[back to start of this
section](#ind-6-2--Preprocess-The-Raw-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

6.3 Extract The Target Data Subset
----------------------------------

<br>

<font size="1">[back to start of this
section](#ind-6-3--Extract-The-Target-Data-Subset)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.3.1 Identify the target subset of observations

<br>

<font size="1">[back to start of this
subsection](#ind-6-3-1--Identify-the-target-subset-of-observations)</font>  
<font size="1">[back to start of this
section](#ind-6-3--Extract-The-Target-Data-Subset)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.3.2 Create the table with the target data subset

<br>

<font size="1">[back to start of this
subsection](#ind-6-3-2--Create-the-table-with-the-target-data-subset)</font>  
<font size="1">[back to start of this
section](#ind-6-3--Extract-The-Target-Data-Subset)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.3.3 Conduct post validation for the table with the target data subset

<br>

<font size="1">[back to start of this
subsection](#ind-6-3-3--Conduct-post-validation-for-the-table-with-the-target-data-subset)</font>  
<font size="1">[back to start of this
section](#ind-6-3--Extract-The-Target-Data-Subset)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.3.4 Overview of the table with the target data subset

<br>

<font size="1">[back to start of this
subsection](#ind-6-3-4--Overview-of-the-table-with-the-target-data-subset)</font>  
<font size="1">[back to start of this
section](#ind-6-3--Extract-The-Target-Data-Subset)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

6.4 Conduct In-Record Data Validation
-------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-6-4--Conduct-In-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.4.1 Introduce information from the Strom Data Documentation

<br>

<font size="1">[back to start of this
subsection](#ind-6-4-1--Introduce-information-from-the-Strom-Data-Documentation)</font>  
<font size="1">[back to start of this
section](#ind-6-4--Conduct-In-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.4.2 Conduct in-record data validation for each variable

<br>

<font size="1">[back to start of this
subsection](#ind-6-4-2--Conduct-in-record-data-validation-for-each-variable)</font>  
<font size="1">[back to start of this
section](#ind-6-4--Conduct-In-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.4.3 Create the table with the in-record validated data

<br>

<font size="1">[back to start of this
subsection](#ind-6-4-3--Create-the-table-with-the-in-record-validated-data)</font>  
<font size="1">[back to start of this
section](#ind-6-4--Conduct-In-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.4.4 Conduct post validation for the table with the in-record validated data

<br>

<font size="1">[back to start of this
subsection](#ind-6-4-4--Conduct-post-validation-for-the-table-with-the-in-record-validated-data)</font>  
<font size="1">[back to start of this
section](#ind-6-4--Conduct-In-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.4.5 Overview of the table with the in-record validated data

<br>

<font size="1">[back to start of this
subsection](#ind-6-4-5--Overview-of-the-table-with-the-in-record-validated-data)</font>  
<font size="1">[back to start of this
section](#ind-6-4--Conduct-In-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

6.5 Impute Missing Values
-------------------------

<br>

<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.5.1 Impute missing values at the variable EVTYPE

<br>

<font size="1">[back to start of this
subsection](#ind-6-5-1--Impute-missing-values-at-the-variable-EVTYPE)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.5.2 Impute missing values at the variable PROPDMGEXP

<br>

<font size="1">[back to start of this
subsection](#ind-6-5-2--Impute-missing-values-at-the-variable-PROPDMGEXP)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.5.3 Impute missing values at the variable CROPDMGEXP

<br>

<font size="1">[back to start of this
subsection](#ind-6-5-3--Impute-missing-values-at-the-variable-CROPDMGEXP)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.5.4 Conduct post validation for the table with the imputed data

<br>

<font size="1">[back to start of this
subsection](#ind-6-5-4--Conduct-post-validation-for-the-table-with-the-imputed-data)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.5.5 Overview of the table with the imputed data

<br>

<font size="1">[back to start of this
subsection](#ind-6-5-5--Overview-of-the-table-with-the-imputed-data)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

6.6 Conduct Cross-Record Data Validation
----------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-6-6--Conduct-Cross-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.6.1 Conduct cross-record data validation for each observation

<br>

<font size="1">[back to start of this
subsection](#ind-6-6-1--Conduct-cross-record-data-validation-for-each-observation)</font>  
<font size="1">[back to start of this
section](#ind-6-6--Conduct-Cross-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.6.2 Create the table with the cross-record validated data

<br>

<font size="1">[back to start of this
subsection](#ind-6-6-2--Create-the-table-with-the-cross-record-validated-data)</font>  
<font size="1">[back to start of this
section](#ind-6-6--Conduct-Cross-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.6.3 Conduct post validation for table with the cross-record validated data

<br>

<font size="1">[back to start of this
subsection](#ind-6-6-3--Conduct-post-validation-for-table-with-the-cross-record-validated-data)</font>  
<font size="1">[back to start of this
section](#ind-6-6--Conduct-Cross-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.6.4 Overview of the table with the cross-record validated data

<br>

<font size="1">[back to start of this
subsection](#ind-6-6-4--Overview-of-the-table-with-the-cross-record-validated-data)</font>  
<font size="1">[back to start of this
section](#ind-6-6--Conduct-Cross-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

6.7 Produce The Processed Data
------------------------------

<br>

<font size="1">[back to start of this
section](#ind-6-7--Produce-The-Processed-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.7.1 Create the table with the processed data

<br>

<font size="1">[back to start of this
subsection](#ind-6-7-1--Create-the-table-with-the-processed-data)</font>  
<font size="1">[back to start of this
section](#ind-6-7--Produce-The-Processed-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.7.2 Conduct post validation for the table with the processed data

<br>

<font size="1">[back to start of this
subsection](#ind-6-7-2--Conduct-post-validation-for-the-table-with-the-processed-data)</font>  
<font size="1">[back to start of this
section](#ind-6-7--Produce-The-Processed-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

7 PROCESSED DATA
================

------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
chapter](#ind-7--PROCESSED-DATA)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

7.1 Information For The Table With The Processed Data
-----------------------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-7-1--Information-For-The-Table-With-The-Processed-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-7--PROCESSED-DATA)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

7.2 Overview Of The Table With The Processed Data
-------------------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-7-2--Overview-Of-The-Table-With-The-Processed-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-7--PROCESSED-DATA)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

7.3 Export The Table With The Processed Data
--------------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-7-3--Export-The-Table-With-The-Processed-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-7--PROCESSED-DATA)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

8 HARM ON POPULATION HEALTH
===========================

------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

8.1 Harm On Population Health With Respect To Fatalities By Each Weather Event Type
-----------------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 8.1.1 Extract the target data for harm on population health with respect to fatalities

<br>

<font size="1">[back to start of this
subsection](#ind-8-1-1--Extract-the-target-data-for-harm-on-population-health-with-respect-to-fatalities)</font>  
<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 8.1.2 Process the target data for harm on population health with respect to fatalities

<br>

<font size="1">[back to start of this
subsection](#ind-8-1-2--Process-the-target-data-for-harm-on-population-health-with-respect-to-fatalities)</font>  
<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 8.1.3 Summarize the processed data for harm on population health with respect to fatalities by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-8-1-3--Summarize-the-processed-data-for-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 8.1.4 Visualize the results of the summary for the harm on population health with respect to fatalities by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-8-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 8.1.4.1 Create the components of Multiplot 1.1

<br>

<font size="1">[back to start of this
subsubsection](#ind-8-1-4-1--Create-the-components-of-Multiplot-1-1)</font>  
<font size="1">[back to start of this
subsection](#ind-8-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.1.4.1.1 Create The Plot 1.1.1**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-1-4-1-1--Create-The-Plot-1-1-1)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-1-4-1--Create-the-components-of-Multiplot-1-1)</font>  
<font size="1">[back to start of this
subsection](#ind-8-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.1.4.1.2 Create The Plot 1.1.2**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-1-4-1-2--Create-The-Plot-1-1-2)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-1-4-1--Create-the-components-of-Multiplot-1-1)</font>  
<font size="1">[back to start of this
subsection](#ind-8-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.1.4.1.3 Create The Plot 1.1.3**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-1-4-1-3--Create-The-Plot-1-1-3)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-1-4-1--Create-the-components-of-Multiplot-1-1)</font>  
<font size="1">[back to start of this
subsection](#ind-8-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.1.4.1.4 Create The Plot 1.1.4**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-1-4-1-4--Create-The-Plot-1-1-4)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-1-4-1--Create-the-components-of-Multiplot-1-1)</font>  
<font size="1">[back to start of this
subsection](#ind-8-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

#### 8.1.4.2 Compose the Multiplot 1.1

<br>

<font size="1">[back to start of this
subsubsection](#ind-8-1-4-2--Compose-the-Multiplot-1-1)</font>  
<font size="1">[back to start of this
subsection](#ind-8-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>

8.2 Harm On Population Health With Respect To Injuries By Each Weather Event Type
---------------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 8.2.1 Extract the target data for harm on population health with respect to injuries

<br>

<font size="1">[back to start of this
subsection](#ind-8-2-1--Extract-the-target-data-for-harm-on-population-health-with-respect-to-injuries)</font>  
<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 8.2.2 Process the target data for harm on population health with respect to injuries

<br>

<font size="1">[back to start of this
subsection](#ind-8-2-2--Process-the-target-data-for-harm-on-population-health-with-respect-to-injuries)</font>  
<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 8.2.3 Summarize the processed data for harm on population health with respect to injuries by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-8-2-3--Summarize-the-processed-data-for-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 8.2.4 Visualize the results of the summary for the harm on population health with respect to injuries by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-8-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 8.2.4.1 Create the components of Multiplot 1.2

<br>

<font size="1">[back to start of this
subsubsection](#ind-8-2-4-1--Create-the-components-of-Multiplot-1-2)</font>  
<font size="1">[back to start of this
subsection](#ind-8-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.2.4.1.1 Create The Plot 1.2.1**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-2-4-1-1--Create-The-Plot-1-2-1)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-2-4-1--Create-the-components-of-Multiplot-1-2)</font>  
<font size="1">[back to start of this
subsection](#ind-8-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.2.4.1.2 Create The Plot 1.2.2**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-2-4-1-2--Create-The-Plot-1-2-2)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-2-4-1--Create-the-components-of-Multiplot-1-2)</font>  
<font size="1">[back to start of this
subsection](#ind-8-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.2.4.1.3 Create The Plot 1.2.3**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-2-4-1-3--Create-The-Plot-1-2-3)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-2-4-1--Create-the-components-of-Multiplot-1-2)</font>  
<font size="1">[back to start of this
subsection](#ind-8-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.2.4.1.4 Create The Plot 1.2.4**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-2-4-1-4--Create-The-Plot-1-2-4)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-2-4-1--Create-the-components-of-Multiplot-1-2)</font>  
<font size="1">[back to start of this
subsection](#ind-8-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

#### 8.2.4.2 Compose the Multiplot 1.2

<br>

<font size="1">[back to start of this
subsubsection](#ind-8-2-4-2--Compose-the-Multiplot-1-2)</font>  
<font size="1">[back to start of this
subsection](#ind-8-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

8.3 Harm On Population Health With Respect To Casualties By Each Weather Event Type
-----------------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 8.3.1 Extract the target data for harm on population health with respect to casualties

<br>

<font size="1">[back to start of this
subsection](#ind-8-3-1--Extract-the-target-data-for-harm-on-population-health-with-respect-to-casualties)</font>  
<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 8.3.2 Process the target data for harm on population health with respect to casualties

<br>

<font size="1">[back to start of this
subsection](#ind-8-3-2--Process-the-target-data-for-harm-on-population-health-with-respect-to-casualties)</font>  
<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 8.3.3 Summarize the processed data for harm on population health with respect to casualties by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-8-3-3--Summarize-the-processed-data-for-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 8.3.4 Visualize the results of the summary for the harm on population health with respect to casualties by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-8-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 8.3.4.1 Create the components of Multiplot 1.3

<br>

<font size="1">[back to start of this
subsubsection](#ind-8-3-4-1--Create-the-components-of-Multiplot-1-3)</font>  
<font size="1">[back to start of this
subsection](#ind-8-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.3.4.1.1 Create The Plot 1.3.1**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-3-4-1-1--Create-The-Plot-1-3-1)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-3-4-1--Create-the-components-of-Multiplot-1-3)</font>  
<font size="1">[back to start of this
subsection](#ind-8-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.3.4.1.2 Create The Plot 1.3.2**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-3-4-1-2--Create-The-Plot-1-3-2)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-3-4-1--Create-the-components-of-Multiplot-1-3)</font>  
<font size="1">[back to start of this
subsection](#ind-8-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.3.4.1.3 Create The Plot 1.3.3**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-3-4-1-3--Create-The-Plot-1-3-3)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-3-4-1--Create-the-components-of-Multiplot-1-3)</font>  
<font size="1">[back to start of this
subsection](#ind-8-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **8.3.4.1.4 Create The Plot 1.3.4**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-8-3-4-1-4--Create-The-Plot-1-3-4)</font>  
<font size="1">[back to start of this
subsubsection](#ind-8-3-4-1--Create-the-components-of-Multiplot-1-3)</font>  
<font size="1">[back to start of this
subsection](#ind-8-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

#### 8.3.4.2 Compose the Multiplot 1.3

<br>

<font size="1">[back to start of this
subsubsection](#ind-8-3-4-2--Compose-the-Multiplot-1-3)</font>  
<font size="1">[back to start of this
subsection](#ind-8-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

9 HARM ON ECONOMY
=================

------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

9.1 Harm On Economy With Respect To Property Damage By Each Weather Event Type
------------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 9.1.1 Extract the target data for harm on economy with respect to property damage

<br>

<font size="1">[back to start of this
subsection](#ind-9-1-1--Extract-the-target-data-for-harm-on-economy-with-respect-to-property-damage)</font>  
<font size="1">[back to start of this
section](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 9.1.2 Process the target data for harm on economy with respect to property damage

<br>

<font size="1">[back to start of this
subsection](#ind-9-1-2--Process-the-target-data-for-harm-on-economy-with-respect-to-property-damage)</font>  
<font size="1">[back to start of this
section](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 9.1.3 Summarize the processed data for harm on economy with respect to property damage by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-9-1-3--Summarize-the-processed-data-for-harm-on-economy-with-respect-to-property-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 9.1.4 Visualize the results of the summary for the harm on economy with respect to property damage by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-9-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-property-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 9.1.4.1 Create the components of Multiplot 2.1

<br>

<font size="1">[back to start of this
subsubsection](#ind-9-1-4-1--Create-the-components-of-Multiplot-2-1)</font>  
<font size="1">[back to start of this
subsection](#ind-9-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-property-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.1.4.1.1 Create The Plot 2.1.1**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-1-4-1-1--Create-The-Plot-2-1-1)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-1-4-1--Create-the-components-of-Multiplot-2-1)</font>  
<font size="1">[back to start of this
subsection](#ind-9-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-property-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.1.4.1.2 Create The Plot 2.1.2**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-1-4-1-2--Create-The-Plot-2-1-2)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-1-4-1--Create-the-components-of-Multiplot-2-1)</font>  
<font size="1">[back to start of this
subsection](#ind-9-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-property-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.1.4.1.3 Create The Plot 2.1.3**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-1-4-1-3--Create-The-Plot-2-1-3)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-1-4-1--Create-the-components-of-Multiplot-2-1)</font>  
<font size="1">[back to start of this
subsection](#ind-9-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-property-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.1.4.1.4 Create The Plot 2.1.4**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-1-4-1-4--Create-The-Plot-2-1-4)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-1-4-1--Create-the-components-of-Multiplot-2-1)</font>  
<font size="1">[back to start of this
subsection](#ind-9-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-property-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

#### 9.1.4.2 Compose the Multiplot 2.1

<br>

<font size="1">[back to start of this
subsubsection](#ind-9-1-4-2--Compose-the-Multiplot-2-1)</font>  
<font size="1">[back to start of this
subsection](#ind-9-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-property-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-1--Harm-On-Economy-With-Respect-To-Property-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

9.2 Harm On Economy With Respect To Crop Damage By Each Weather Event Type
--------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 9.2.1 Extract the target data for harm on economy with respect to crop damage

<br>

<font size="1">[back to start of this
subsection](#ind-9-2-1--Extract-the-target-data-for-harm-on-economy-with-respect-to-crop-damage)</font>  
<font size="1">[back to start of this
section](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 9.2.2 Process the target data for harm on economy with respect to crop damage

<br>

<font size="1">[back to start of this
subsection](#ind-9-2-2--Process-the-target-data-for-harm-on-economy-with-respect-to-crop-damage)</font>  
<font size="1">[back to start of this
section](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 9.2.3 Summarize the processed data for harm on economy with respect to crop damage by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-9-2-3--Summarize-the-processed-data-for-harm-on-economy-with-respect-to-crop-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 9.2.4 Visualize the results of the summary for the harm on economy with respect to crop damage by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-9-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-crop-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 9.2.4.1 Create the components of Multiplot 2.2

<br>

<font size="1">[back to start of this
subsubsection](#ind-9-2-4-1--Create-the-components-of-Multiplot-2-2)</font>
<font size="1">[back to start of this
subsection](#ind-9-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-crop-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.2.4.1.1 Create The Plot 2.2.1**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-2-4-1-1--Create-The-Plot-2-2-1)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-2-4-1--Create-the-components-of-Multiplot-2-2)</font>
<font size="1">[back to start of this
subsection](#ind-9-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-crop-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.2.4.1.2 Create The Plot 2.2.2**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-2-4-1-2--Create-The-Plot-2-2-2)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-2-4-1--Create-the-components-of-Multiplot-2-2)</font>
<font size="1">[back to start of this
subsection](#ind-9-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-crop-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.2.4.1.3 Create The Plot 2.2.3**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-2-4-1-3--Create-The-Plot-2-2-3)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-2-4-1--Create-the-components-of-Multiplot-2-2)</font>
<font size="1">[back to start of this
subsection](#ind-9-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-crop-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.2.4.1.4 Create The Plot 2.2.4**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-2-4-1-4--Create-The-Plot-2-2-4)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-2-4-1--Create-the-components-of-Multiplot-2-2)</font>
<font size="1">[back to start of this
subsection](#ind-9-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-crop-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

#### 9.2.4.2 Compose the Multiplot 2.2

<br>

<font size="1">[back to start of this
subsubsection](#ind-9-2-4-2--Compose-the-Multiplot-2-2)</font>
<font size="1">[back to start of this
subsection](#ind-9-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-crop-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-2--Harm-On-Economy-With-Respect-To-Crop-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

9.3 Harm On Economy With Respect To Economic Damage By Each Weather Event Type
------------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 9.3.1 Extract the target data for harm on economy with respect to economic damage

<br>

<font size="1">[back to start of this
subsection](#ind-9-3-1--Extract-the-target-data-for-harm-on-economy-with-respect-to-economic-damage)</font>  
<font size="1">[back to start of this
section](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 9.3.2 Process the target data for harm on economy with respect to economic damage

<br>

<font size="1">[back to start of this
subsection](#ind-9-3-2--Process-the-target-data-for-harm-on-economy-with-respect-to-economic-damage)</font>  
<font size="1">[back to start of this
section](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 9.3.3 Summarize the processed data for harm on economy with respect to economic damage by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-9-3-3--Summarize-the-processed-data-for-harm-on-economy-with-respect-to-economic-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 9.3.4 Visualize the results of the summary for the harm on economy with respect to economic damage by each weather event type

<br>

<font size="1">[back to start of this
subsection](#ind-9-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-economic-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 9.3.4.1 Create the components of Multiplot 2.3

<br>

<font size="1">[back to start of this
subsubsection](#ind-9-3-4-1--Create-the-components-of-Multiplot-2-3)</font>
<font size="1">[back to start of this
subsection](#ind-9-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-economic-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.3.4.1.1 Create The Plot 2.3.1**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-3-4-1-1--Create-The-Plot-2-3-1)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-3-4-1--Create-the-components-of-Multiplot-2-3)</font>
<font size="1">[back to start of this
subsection](#ind-9-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-economic-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.3.4.1.2 Create The Plot 2.3.2**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-3-4-1-2--Create-The-Plot-2-3-2)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-3-4-1--Create-the-components-of-Multiplot-2-3)</font>
<font size="1">[back to start of this
subsection](#ind-9-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-economic-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.3.4.1.3 Create The Plot 2.3.3**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-3-4-1-3--Create-The-Plot-2-3-3)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-3-4-1--Create-the-components-of-Multiplot-2-3)</font>
<font size="1">[back to start of this
subsection](#ind-9-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-economic-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

##### **9.3.4.1.4 Create The Plot 2.3.4**

<br>

<font size="1">[back to start of this
subsubsubsection](#ind-9-3-4-1-4--Create-The-Plot-2-3-4)</font>  
<font size="1">[back to start of this
subsubsection](#ind-9-3-4-1--Create-the-components-of-Multiplot-2-3)</font>
<font size="1">[back to start of this
subsection](#ind-9-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-economic-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

#### 9.3.4.2 Compose the Multiplot 2.3

<br>

<font size="1">[back to start of this
subsubsection](#ind-9-3-4-2--Compose-the-Multiplot-2-3)</font>
<font size="1">[back to start of this
subsection](#ind-9-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-economy-with-respect-to-economic-damage-by-each-weather-event-type)</font>  
<font size="1">[back to start of this
section](#ind-9-3--Harm-On-Economy-With-Respect-To-Economic-Damage-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-9--HARM-ON-ECONOMY)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

10 RESULTS
==========

------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
chapter](#ind-10--RESULTS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

10.1 Question 1: Across the United States, which types of events (as indicated in the EVTYPE variable) are most harmful with respect to population health?
----------------------------------------------------------------------------------------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-10-1--results-harm-on-population-health)</font>  
<font size="1">[back to start of this
chapter](#ind-10--RESULTS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 10.1.1 Overview of results for the harm on population health

<br>

<font size="1">[back to start of this
subsection](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)</font>  
<font size="1">[back to start of this
section](#ind-10-1--results-harm-on-population-health)</font>  
<font size="1">[back to start of this
chapter](#ind-10--RESULTS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 10.1.2 Most harmful event types with respect to fatalities

<br>

<font size="1">[back to start of this
subsection](#ind-10-1-2--Most-harmful-weather-event-types-with-respect-to-fatalities)</font>  
<font size="1">[back to start of this
section](#ind-10-1--results-harm-on-population-health)</font>  
<font size="1">[back to start of this
chapter](#ind-10--RESULTS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 10.1.3 Most harmful event types with respect to injuries

<br>

<font size="1">[back to start of this
subsection](#ind-10-1-3--Most-harmful-weather-event-types-with-respect-to-injuries)</font>  
<font size="1">[back to start of this
section](#ind-10-1--results-harm-on-population-health)</font>  
<font size="1">[back to start of this
chapter](#ind-10--RESULTS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 10.1.4 Most harmful event types with respect to casualties

<br>

<font size="1">[back to start of this
subsection](#ind-10-1-4--Most-harmful-weather-event-types-with-respect-to-casualties)</font>  
<font size="1">[back to start of this
section](#ind-10-1--results-harm-on-population-health)</font>  
<font size="1">[back to start of this
chapter](#ind-10--RESULTS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

10.2 Question 2 : Across the United States, which types of events have the greatest economic consequences?
----------------------------------------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
section](#ind-10-2--results-harm-on-economy)</font>  
<font size="1">[back to start of this
chapter](#ind-10--RESULTS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 10.2.1 Overview of results for the harm on economy

<br>

<font size="1">[back to start of this
subsection](#ind-10-2-1--Overview-of-results-for-the-harm-on-economy)</font>  
<font size="1">[back to start of this
section](#ind-10-2--results-harm-on-economy)</font>  
<font size="1">[back to start of this
chapter](#ind-10--RESULTS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 10.2.2 Most harmful event types with respect to property damage

<br>

<font size="1">[back to start of this
subsection](#ind-10-2-2--Most-harmful-weather-event-types-with-respect-to-property-damage)</font>  
<font size="1">[back to start of this
section](#ind-10-2--results-harm-on-economy)</font>  
<font size="1">[back to start of this
chapter](#ind-10--RESULTS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 10.2.3 Most harmful event types with respect to crop damage

<br>

<font size="1">[back to start of this
subsection](#ind-10-2-3--Most-harmful-weather-event-types-with-respect-to-crop-damage)</font>  
<font size="1">[back to start of this
section](#ind-10-2--results-harm-on-economy)</font>  
<font size="1">[back to start of this
chapter](#ind-10--RESULTS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 10.2.4 Most harmful event types with respect to economic damage

<br>

<font size="1">[back to start of this
subsection](#ind-10-2-4--Most-harmful-weather-event-types-with-respect-to-economic-damage)</font>  
<font size="1">[back to start of this
section](#ind-10-2--results-harm-on-economy)</font>  
<font size="1">[back to start of this
chapter](#ind-10--RESULTS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

11 REPRODUCIBILITY DETAILS
==========================

------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
chapter](#ind-11--REPRODUCIBILITY-DETAILS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

11.1 Session Info
-----------------

<br>

<font size="1">[back to start of this
section](#ind-11-1--Session-Info)</font>  
<font size="1">[back to start of this
chapter](#ind-11--REPRODUCIBILITY-DETAILS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

11.2 Options
------------

<br>

<font size="1">[back to start of this
section](#ind-11-2--Options)</font>  
<font size="1">[back to start of this
chapter](#ind-11--REPRODUCIBILITY-DETAILS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

11.3 MD5 Checksums
------------------

<br>

<font size="1">[back to start of this
section](#ind-11-3--MD5-Checksums)</font>  
<font size="1">[back to start of this
chapter](#ind-11--REPRODUCIBILITY-DETAILS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 11.3.1 Create a utility function to export MD5 checksums

<br>

<font size="1">[back to start of this
subsection](#ind-11-3-1--Create-a-utility-function-to-export-MD5-checksums)</font>  
<font size="1">[back to start of this
section](#ind-11-3--MD5-Checksums)</font>  
<font size="1">[back to start of this
chapter](#ind-11--REPRODUCIBILITY-DETAILS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 11.3.2 MD5 checksum of the input file with the unprocessed data

<br>

<font size="1">[back to start of this
subsection](#ind-11-3-2--MD5-checksum-of-the-input-file-with-the-unprocessed-data)</font>  
<font size="1">[back to start of this
section](#ind-11-3--MD5-Checksums)</font>  
<font size="1">[back to start of this
chapter](#ind-11--REPRODUCIBILITY-DETAILS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 11.3.3 MD5 checksum of the output file with the processed data

<br>

<font size="1">[back to start of this
subsection](#ind-11-3-3--MD5-checksum-for-the-output-file-with-the-processed-data)</font>  
<font size="1">[back to start of this
section](#ind-11-3--MD5-Checksums)</font>  
<font size="1">[back to start of this
chapter](#ind-11--REPRODUCIBILITY-DETAILS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 11.3.4 MD5 checksum of the output files with the results

<br>

<font size="1">[back to start of this
subsection](#ind-11-3-4--MD5-checksum-of-the-output-files-with-the-results)</font>  
<font size="1">[back to start of this
section](#ind-11-3--MD5-Checksums)</font>  
<font size="1">[back to start of this
chapter](#ind-11--REPRODUCIBILITY-DETAILS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

11.4 Random Seed
----------------

<br>

<font size="1">[back to start of this
section](#ind-11-4--Random-Seed)</font>  
<font size="1">[back to start of this
chapter](#ind-11--REPRODUCIBILITY-DETAILS)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

12 LICENSE
==========

------------------------------------------------------------------------

The script
[RepRes\_analysis.Rmd](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.Rmd)
with the code to conduct the analysis as well as any of the results and
outputs obtained when it is executed can be used freely for any propose
under the terms of MIT License.

> Copyright (c) <year> <copyright holders>
>
> Permission is hereby granted, free of charge, to any person obtaining
> a copy of this software and associated documentation files (the
> “Software”), to deal in the Software without restriction, including
> without limitation the rights to use, copy, modify, merge, publish,
> distribute, sublicense, and/or sell copies of the Software, and to
> permit persons to whom the Software is furnished to do so, subject to
> the following conditions:
>
> The above copyright notice and this permission notice shall be
> included in all copies or substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND,
> EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
> MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
> IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
> CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
> TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
> SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

<br>

<font size="1">[back to start of this
chapter](#ind-12--LICENSE)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

13 REFERENCES
=============

------------------------------------------------------------------------

<br>

<font size="1">[back to start of this
chapter](#ind-13--REFERENCES)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>  
<br>  
<br>  
<br>

------------------------------------------------------------------------

<font size="1">END OF THE REPORT</font>
