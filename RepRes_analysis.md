<br>  
<br>

------------------------------------------------------------------------

1 TABLE OF CONTENTS
===================

------------------------------------------------------------------------

-   [1 TABLE OF CONTENTS](#ind-1--TABLE-OF-CONTENTS)  
-   [2 PROLOGUE](#ind-2--PROLOGUE)
    -   [2.1 About The Assignment](#ind-2-1--About-The-Assignment)  
    -   [2.2 About The Script](#ind-2-2--About-The-Script)  
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

<br>

<font size="1">[back to start of this
chapter](#ind-2--PROLOGUE)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

2.1 About The Assignment
------------------------

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

2.2 About The Script
--------------------

<br>

<font size="1">[back to start of this
section](#ind-2-2--About-The-Script)</font>  
<font size="1">[back to start of this
chapter](#ind-2--PROLOGUE)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>  
<br>

2.3 About The Report
--------------------

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

<br>

<font size="1">[back to start of this
chapter](#ind-4--STORM-EVENTS-DATASET)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

4.1 General Informations
------------------------

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

<br>

<font size="1">[back to start of this
section](#ind-4-2--Points-Of-Interest)</font>  
<font size="1">[back to start of this
chapter](#ind-4--STORM-EVENTS-DATASET)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 4.2.1 Changes in the composition of weather event types

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

<br>

<font size="1">[back to start of this
chapter](#ind-5--PRELIMINARY-ACTIVITIES)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

5.1 Set The Random Seed
-----------------------

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