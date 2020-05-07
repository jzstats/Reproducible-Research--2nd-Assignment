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
            -   [6.3.1.1 Verify the consistency of date
                format](#ind-6-3-1-1--Verify-the-consistency-of-date-format)  
            -   [6.3.1.2 Identify the eligible
                observations](#ind-6-3-1-2--Identify-the-eligible-observations)  
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
            -   [6.4.1.1 Valid values for the EVTYPE
                variable](#ind-6-4-1-1--Valid-values-for-the-EVTYPE-variable)  
            -   [6.4.1.2 Valid values for the PROPDMGEXP
                variable](#ind-6-4-1-2--Valid-values-for-the-PROPDMGEX-variable)  
            -   [6.4.1.3 Valid values for the CROPDMGEXP
                variable](#ind-6-4-1-3--Valid-values-for-the-CROPDMGEX-variable)  
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
            -   [6.5.1.1 Examine the invalid values from the variable
                EVTYPE](#ind-6-5-1-1--Examine-the-invalid-values-from-the-variable-EVTYPE)  
            -   [6.5.1.2 Associate plausible substitutions to the
                invalid values from the variable
                EVTYPE](#ind-6-5-1-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-EVTYPE)  
            -   [6.5.1.3 Identify the imputable missing values at the
                variable
                EVTYPE](#ind-6-5-1-3--Identify-the-imputable-missing-values-at-the-variable-EVTYPE)  
            -   [6.5.1.4 Substitute the imputable missing values at the
                variable
                EVTYPE](#ind-6-5-1-4--Substitute-the-imputable-missing-values-at-the-variable-EVTYPE)  
        -   [6.5.2 Impute missing values at the variable
            PROPDMGEXP](#ind-6-5-2--Impute-missing-values-at-the-variable-PROPDMGEXP)
            -   [6.5.2.1 Examine the invalid values from the variable
                PROPDMGEXP](#ind-6-5-2-1--Examine-the-invalid-values-from-the-variable-PROPDMGEXP)  
            -   [6.5.2.2 Associate plausible substitutions to the
                invalid values from the variable
                PROPDMGEXP](#ind-6-5-2-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-PROPDMGEXP)  
            -   [6.5.2.3 Identify the imputable missing values at the
                variable
                PROPDMGEXP](#ind-6-5-2-3--Identify-the-imputable-missing-values-at-the-variable-PROPDMGEXP)  
            -   [6.5.2.4 Substitute the imputable missing values at the
                variable
                PROPDMGEXP](#ind-6-5-2-4--Substitute-the-imputable-missing-values-at-the-variable-PROPDMGEXP)  
        -   [6.5.3 Impute missing values at the variable
            CROPDMGEXP](#ind-6-5-3--Impute-missing-values-at-the-variable-CROPDMGEXP)
            -   [6.5.3.1 Examine the invalid values from the variable
                CROPDMGEXP](#ind-6-5-3-1--Examine-the-invalid-values-from-the-variable-CROPDMGEXP)  
            -   [6.5.3.2 Associate plausible substitutions to the
                invalid values from the variable
                CROPDMGEXP](#ind-6-5-3-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-CROPDMGEXP)  
            -   [6.5.3.3 Identify the imputable missing values at the
                variable
                CROPDMGEXP](#ind-6-5-3-3--Identify-the-imputable-missing-values-at-the-variable-CROPDMGEXP)  
            -   [6.5.3.4 Substitute the imputable missing values at the
                variable
                CROPDMGEXP](#ind-6-5-3-4--Substitute-the-imputable-missing-values-at-the-variable-CROPDMGEXP)  
        -   [6.5.4 Conduct post validation for the table with the
            imputed
            data](#ind-6-5-4--Conduct-post-validation-for-the-table-with-the-imputed-data)  
        -   [6.5.5 Overview of the table with the imputed
            data](#ind-6-5-5--Overview-of-the-table-with-the-imputed-data)  
    -   [6.6 Conduct Cross-Record Data
        Validation](#ind-6-6--Conduct-Cross-Record-Data-Validation)
        -   [6.6.1 Identify all valid
            observations](#ind-6-6-1--Identify-all-valid-observations)  
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

The data processing pipeline, started with a supplied file,
[*repdata\_data\_StormData.csv.bz2*](https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2)
that contained raw data from the [*Storm Events
Dataset*](#ind-4--STORM-EVENTS-DATASET) and produced the [table with the
processed data](#ind-7--PROCESSED-DATA).

The pipeline consists of seven distinct stages:

1.  [**Load The Raw Data In R**](#ind-6-1--Load-The-Raw-Data-In_R)
    -   The table with the raw data was created by loading in R the raw
        data from the supplied file with the compressed raw data with
        all variables coerced to character type. Post validation was
        conducted and an overview of the table with the raw data was
        presented.  
2.  [**Preprocess The Raw Data**](#ind-6-2--Preprocess-The-Raw-Data)
    -   From the data at the table with the raw data, in order to create
        the table with the preprocessed data prerequisites were verified
        about the variables required for the analysis before they were
        selected, coerced to their appropriate types and a key was set
        for the table. Post validation was conducted and an overview of
        the table with the preprocessed data was presented.  
3.  [**6.3 Extract The Target Data
    Subset**](#ind-6-3--Extract-The-Target-Data-Subset)
    -   From the table with the preprocessed data only the subset of
        data that includes the observations for the weather events that
        happened in the period from 2001 to 2011 and caused non-zero
        fatalities, injuries, property damage or crop damage were
        extracted. Post validation was conducted and an overview of the
        table with the target data subset was presented.  
4.  [**Conduct In-Record Data
    Validation**](#ind-6-4--Conduct-In-Record-Data-Validation)
    -   The values of each variable at the table with the target data
        subset were validated against appropriate constrains for each
        column separately (independently of the other variables) and
        those entries that were found invalid got substituted with NAs
        to create the table with the in-record validated data. Post
        validation was conducted and an overview of the table with the
        in-record validated data was presented.  
5.  [**Impute Missing Values**](#ind-6-5--Impute-Missing-Values)
    -   The missing values at each variable from the table with the
        in-record validated data were examined and the those that could
        be retrieved (via a deterministic and conservative way) were
        imputed, to produce the table with the imputed data. Post
        validation was conducted and an overview of the table with the
        imputed data was presented.  
6.  [**Conduct Cross-Record Data
    Validation**](#ind-6-6--Conduct-Cross-Record-Data-Validation)
    -   Each observations from the table with the imputed data was
        validated against appropriate constrains that spanned across all
        available variables and only those that were found valid were
        used to create the table with the cross-record validated data.
        Post validation was conducted and an overview of the table with
        the cross-record validated data was presented.  
7.  [**6.7 Produce The Processed
    Data**](#ind-6-7--Produce-The-Processed-Data)
    -   From the table with the cross-record validated data, by
        transforming appropriately the available information, the table
        with the processed data was created that contained the variables
        required to identify the most harmful weather event types with
        respect to the population health and for the economy. Post
        validation was conducted.

At each stage of the data processing procedure any fact that played a
major role was highlighted and examined when it was needed, in
compliance with the spirit of the assignment, aiming to supply all the
facts necessary to understand how and why the decision making behind
this analysis happened in order to create a well justified and
documented, reproducible report.

<br>

<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

6.1 Load The Raw Data In R
--------------------------

<font size="3"><u><strong>Summary</strong></u></font>

The raw data was loaded in R from the supplied file
[*repdata\_data\_StormData.csv.bz2*](https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2)
(which contains data from the [Storm Events
Dataset](#ind-4--STORM-EVENTS-DATASET)), to create the table with the
raw data which was then post validated and some basics fact about it
were highlighted.

<font size="3"><u><strong>Steps</strong></u></font>

-   [6.1.1 Create the table with the raw
    data](#ind-6-1-1--Create-the-table-with-the-raw-data)
    -   Reads the file
        [*repdata\_data\_StormData.csv.bz2*](https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2)
        in R, to create the table with the raw data.  
-   [6.1.2 Conduct post validation for the table with the raw
    data](#ind-6-1-2--Conduct-post-validation-for-the-table-with-the-raw-data)
    -   Ensures that the raw data was loaded correctly.  
-   [6.1.3 Overview of the table with the raw
    data](#ind-6-1-3--Overview-of-the-table-with-the-raw-data)
    -   Presents some basic facts about the table with the raw data.

<br>

<font size="1">[back to start of this
section](#ind-6-1--Load-The-Raw-Data-In_R)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.1.1 Create the table with the raw data

The raw data was loaded in R directly from the supplied file
[repdata\_data\_StormData.csv.bz2](https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2)
(which was a CSV file, compressed via a bzip2 algorithm), with all
variables deliberately coerced to character type in order to ensure that
no information was lost or altered as a side effect of coercion. The
first row of the file includes headers that were used to automatically
assign the names of all the variables at the table with the raw data
that was created.

    # Load the raw data in R from the supplied file:
    #     "repdata_data_StormData.csv.bz2"
    # and create the table with the raw data.
    raw_data <- fread(
      ## the file is expected to exist at the working directory
      file = filepath_____unprocessed_data,
      ## the variables in the file are separated via a comma
      sep = ",",
      ## the first row of the file contains the names of the variables
      header = TRUE,
      ## all variables were deliberately loaded as character type
      ## to avoid any loss or alteration of information as a side effect of coercion
      colClasses = "character"
    )

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

The table with the raw data was post validated to ensure that the data
from the file was loaded in R correctly.  
Three simple constrains were applied:

1.  It should contain 37 variables.  
2.  It should contain 902297 observations.  
3.  The type of all variables should be ‘character’.

*(The expected number of variables and the expected number of
observations, were acquired interactively before the execution of the
main script
[RepRes\_analysis.Rmd](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.Rmd)
and were then used to form the constrains for the post validation.)*

    # Create a validator with constrains for the validity of loaded raw data. 
    V_____loaded_raw_data <- validator(
      ## create a character vector that captures the class of each variable
      classes_of_varirables := vapply(
        X = ., 
        ### although it is not expected to get an output 
        ### with more than one element for the class of each variable, 
        ### in general it is possible to happen, 
        ### so proper care is taken to collapse the elements of such vector 
        ### in a single element so that the vapply() function 
        ### won't fail with an error in such case
        FUN = function(x) paste(class(x), collapse = ","), 
        FUN.VALUE = character(1)
      ),
      "expected_number_of_variables" = ( length(.) == 37 ),
      "expected_number_of_observations" = ( nrow(.) == 902297 ),
      "expected_variable_types" = ( classes_of_varirables == "character" )
    )

    # Confront the table with the raw data with the validator
    # which constrains the constrains for the validity of raw data.
    CF_____loaded_raw_data <- confront(dat = raw_data, V_____loaded_raw_data)

The table with the raw data was valid.

    # Create a kable with the results of post validation 
    # for the table with the raw data. 
    kable(
      x = summary(CF_____loaded_raw_data)[
        , 
        c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ], 
      caption = paste0(
        "TABLE 6.1.3-1: ", 
        "The results of post validation for the table with the raw data."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c(
          "striped", "hover", "condensed", "responsive", "bordered"
        ), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
TABLE 6.1.3-1: The results of post validation for the table with the raw
data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
expected\_number\_of\_variables
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
expected\_number\_of\_observations
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
expected\_variable\_types
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
37
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
</table>
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

The table with the raw data contained 37 variables that were all of type
‘character’ and 902297 observations.

    # Print the structure of the table with the raw data.
    str(raw_data)

    ## Classes 'data.table' and 'data.frame':   902297 obs. of  37 variables:
    ##  $ STATE__   : chr  "1.00" "1.00" "1.00" "1.00" ...
    ##  $ BGN_DATE  : chr  "4/18/1950 0:00:00" "4/18/1950 0:00:00" "2/20/1951 0:00:00" "6/8/1951 0:00:00" ...
    ##  $ BGN_TIME  : chr  "0130" "0145" "1600" "0900" ...
    ##  $ TIME_ZONE : chr  "CST" "CST" "CST" "CST" ...
    ##  $ COUNTY    : chr  "97.00" "3.00" "57.00" "89.00" ...
    ##  $ COUNTYNAME: chr  "MOBILE" "BALDWIN" "FAYETTE" "MADISON" ...
    ##  $ STATE     : chr  "AL" "AL" "AL" "AL" ...
    ##  $ EVTYPE    : chr  "TORNADO" "TORNADO" "TORNADO" "TORNADO" ...
    ##  $ BGN_RANGE : chr  "0.00" "0.00" "0.00" "0.00" ...
    ##  $ BGN_AZI   : chr  "" "" "" "" ...
    ##  $ BGN_LOCATI: chr  "" "" "" "" ...
    ##  $ END_DATE  : chr  "" "" "" "" ...
    ##  $ END_TIME  : chr  "" "" "" "" ...
    ##  $ COUNTY_END: chr  "0.00" "0.00" "0.00" "0.00" ...
    ##  $ COUNTYENDN: chr  "" "" "" "" ...
    ##  $ END_RANGE : chr  "0.00" "0.00" "0.00" "0.00" ...
    ##  $ END_AZI   : chr  "" "" "" "" ...
    ##  $ END_LOCATI: chr  "" "" "" "" ...
    ##  $ LENGTH    : chr  "14.00" "2.00" "0.10" "0.00" ...
    ##  $ WIDTH     : chr  "100.00" "150.00" "123.00" "100.00" ...
    ##  $ F         : chr  "3" "2" "2" "2" ...
    ##  $ MAG       : chr  "0.00" "0.00" "0.00" "0.00" ...
    ##  $ FATALITIES: chr  "0.00" "0.00" "0.00" "0.00" ...
    ##  $ INJURIES  : chr  "15.00" "0.00" "2.00" "2.00" ...
    ##  $ PROPDMG   : chr  "25.00" "2.50" "25.00" "2.50" ...
    ##  $ PROPDMGEXP: chr  "K" "K" "K" "K" ...
    ##  $ CROPDMG   : chr  "0.00" "0.00" "0.00" "0.00" ...
    ##  $ CROPDMGEXP: chr  "" "" "" "" ...
    ##  $ WFO       : chr  "" "" "" "" ...
    ##  $ STATEOFFIC: chr  "" "" "" "" ...
    ##  $ ZONENAMES : chr  "" "" "" "" ...
    ##  $ LATITUDE  : chr  "3040.00" "3042.00" "3340.00" "3458.00" ...
    ##  $ LONGITUDE : chr  "8812.00" "8755.00" "8742.00" "8626.00" ...
    ##  $ LATITUDE_E: chr  "3051.00" "0.00" "0.00" "0.00" ...
    ##  $ LONGITUDE_: chr  "8806.00" "0.00" "0.00" "0.00" ...
    ##  $ REMARKS   : chr  "" "" "" "" ...
    ##  $ REFNUM    : chr  "1.00" "2.00" "3.00" "4.00" ...
    ##  - attr(*, ".internal.selfref")=<externalptr>

There were no missing values (coded as NAs) at any of the variables it
contained, but there were a lot of empty values which probably represent
missing values. For some of the variables, a suspiciously large or small
number of distinct values was observed.

    # Create a kable to highlight some facts 
    # about the variables at the table with the raw data.
    kable(
      data.table(
        "Variable" = names(raw_data),
        "Number of Distinct Values" = vapply(
          X = raw_data, 
          FUN = function(x) length(unique(x)), 
          FUN.VALUE = integer(1)
          ),
        "Number of NAs" = vapply(
          X = raw_data, 
          FUN = function(x) sum(is.na(x)),
          FUN.VALUE = integer(1)
          ),
        # from the output with the structure of the table with the raw data 
        # it was found that some empty values exist at some variables 
        # and the exact number that each of them contains was reported
        "Number of Empty Values" = vapply(
          X = raw_data, 
          FUN = function(x) sum(x == ""), 
          FUN.VALUE = integer(1))
        
      ),
      caption = paste0(
        "TABLE 6.1.3-2: ", 
        "Facts about the variables at the table with the raw data."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c(
          "striped", "hover", "condensed", "responsive", "bordered"
        ), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = paste0(
          "The table with the raw data contains 37 variables ", 
          "that are all of type 'character'", "\n",
          "and 902297 observations."
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
TABLE 6.1.3-2: Facts about the variables at the table with the raw data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Variable
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Distinct Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of NAs
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Empty Values
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
STATE\_\_
</td>
<td style="text-align:right;">
70
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_DATE
</td>
<td style="text-align:right;">
16335
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_TIME
</td>
<td style="text-align:right;">
3608
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
TIME\_ZONE
</td>
<td style="text-align:right;">
22
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
COUNTY
</td>
<td style="text-align:right;">
557
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
COUNTYNAME
</td>
<td style="text-align:right;">
29601
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
1589
</td>
</tr>
<tr>
<td style="text-align:left;">
STATE
</td>
<td style="text-align:right;">
72
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
EVTYPE
</td>
<td style="text-align:right;">
985
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_RANGE
</td>
<td style="text-align:right;">
272
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_AZI
</td>
<td style="text-align:right;">
35
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
547332
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_LOCATI
</td>
<td style="text-align:right;">
54429
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
287743
</td>
</tr>
<tr>
<td style="text-align:left;">
END\_DATE
</td>
<td style="text-align:right;">
6663
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
243411
</td>
</tr>
<tr>
<td style="text-align:left;">
END\_TIME
</td>
<td style="text-align:right;">
3647
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
238978
</td>
</tr>
<tr>
<td style="text-align:left;">
COUNTY\_END
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
COUNTYENDN
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
902297
</td>
</tr>
<tr>
<td style="text-align:left;">
END\_RANGE
</td>
<td style="text-align:right;">
266
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
END\_AZI
</td>
<td style="text-align:right;">
24
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
724837
</td>
</tr>
<tr>
<td style="text-align:left;">
END\_LOCATI
</td>
<td style="text-align:right;">
34506
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
499225
</td>
</tr>
<tr>
<td style="text-align:left;">
LENGTH
</td>
<td style="text-align:right;">
568
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
WIDTH
</td>
<td style="text-align:right;">
293
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
F
</td>
<td style="text-align:right;">
7
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
843563
</td>
</tr>
<tr>
<td style="text-align:left;">
MAG
</td>
<td style="text-align:right;">
226
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
FATALITIES
</td>
<td style="text-align:right;">
52
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
INJURIES
</td>
<td style="text-align:right;">
200
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMG
</td>
<td style="text-align:right;">
1390
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMGEXP
</td>
<td style="text-align:right;">
19
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
465934
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMG
</td>
<td style="text-align:right;">
432
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMGEXP
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
618413
</td>
</tr>
<tr>
<td style="text-align:left;">
WFO
</td>
<td style="text-align:right;">
542
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
142069
</td>
</tr>
<tr>
<td style="text-align:left;">
STATEOFFIC
</td>
<td style="text-align:right;">
250
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
248769
</td>
</tr>
<tr>
<td style="text-align:left;">
ZONENAMES
</td>
<td style="text-align:right;">
25112
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
594029
</td>
</tr>
<tr>
<td style="text-align:left;">
LATITUDE
</td>
<td style="text-align:right;">
1781
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
47
</td>
</tr>
<tr>
<td style="text-align:left;">
LONGITUDE
</td>
<td style="text-align:right;">
3841
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
LATITUDE\_E
</td>
<td style="text-align:right;">
1729
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
40
</td>
</tr>
<tr>
<td style="text-align:left;">
LONGITUDE\_
</td>
<td style="text-align:right;">
3778
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
<tr>
<td style="text-align:left;">
REMARKS
</td>
<td style="text-align:right;">
436906
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
287433
</td>
</tr>
<tr>
<td style="text-align:left;">
REFNUM
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The table with the raw data contains 37 variables that are
all of type ‘character’<br>and 902297 observations.
</td>
</tr>
</tfoot>
</table>
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

<font size="3"><u><strong>Summary</strong></u></font>

From the table with the raw data which contains 37 variables, only 9
were selected to create the table with preprocessed data and proceed
with this analysis:

1.  **REFNUM** : an id that uniquely identifies each observation  
2.  **BGN\_DATE** : the date when each weather event begun  
3.  **EVTYPE** : the type of each weather event  
4.  **FATALITIES** : the number of fatalities  
5.  **INJURIES** : the number of injuries  
6.  **PROPDMG** : the magnitude value of the damage caused in properties
    that could have been expressed in thousands, millions or billions of
    dollars, depending on the corresponding indicator value at the
    variable *PROPDMGEXP*  
7.  **PROPDMGEXP** : an indicator value that denotes whether the
    corresponding magnitude value at the variable *PROPDMG* refers to
    thousands, millions or billions of dollars  
8.  **CROPDMG** : the magnitude value of the damage caused in crops that
    could have been expressed in thousands, millions or billions of
    dollars, depending on the corresponding indicator value at the
    variable *CROPDMGEXP*  
9.  **CROPDMGEXP** : an indicator value that denotes whether the
    corresponding magnitude value at the variable *CROPDMG* refers to
    thousands, millions or billions of dollars

Due to the fact that all variables at the table with the raw data were
(deliberately) loaded as type ‘character’ some prerequisites were needed
to get verified for the format of the character string values that they
contained before they were coerced to their appropriate type.

The variable *REFNUM* after having verified that the values it contained
uniquely identify each observation, was set as the key for the table
with the preprocessed data.

Finally post validation was conducted and some facts about the table
with the preprocessed data were highlighted.

<font size="3"><u><strong>Steps</strong></u></font>

-   [6.2.1 Verify the prerequisites for the selected
    variables](#ind-6-2-1--Verify-the-prerequisites-for-the-selected-variables)
    -   Checks two key points for the values of selected variables from
        the table with the raw data:
        -   [6.2.1.1 Verify the coercibility of the values for the
            selected
            variables](#ind-6-2-1-1--Verify-the-coercibility-for-the-values-at-the-selected-variables)
            -   The character values at the selected variables were
                checked to verify if their format was compatible with
                the variable type that each of the them should be
                coerced to.
        -   [6.2.1.2 Verify the uniqueness of the key
            values](#ind-6-2-1-2--Verify-the-uniqueness-of-the-key-values)
            -   The values of the variable that was intended to be used
                as the key of the table with the preprocessed data were
                checked to verify if they uniquely identify each
                observation.  
-   [6.2.2 Create the table with the preprocessed
    data](#ind-6-2-2--Create-the-table-with-the-preprocessed-data)
    -   Creates the table with the preprocessed data, by selecting the
        required variahles, coercing them to their appropriate type and
        setting a key was set for the table.  
-   [6.2.3 Conduct post validation for the table with the preprocessed
    data](#ind-6-2-3--Conduct-post-validation-for-the-table-with-the-preprocessed-data)
    -   Ensures that the raw data was preprocessed data correctly.  
-   [6.2.4 Overview of the table with the preprocessed
    data](#ind-6-2-4--Overview-of-the-table-with-the-preprocessed-data)
    -   Presents some basic fact about the table with the preprocessed
        data.

<br>

<font size="1">[back to start of this
section](#ind-6-2--Preprocess-The-Raw-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.2.1 Verify the prerequisites for the selected variables

Two key points were checked for the values of the selected variables
from the table with raw data before proceeding to create the table with
the preprocessed data:

-   [6.2.1.1 Verify the coercibility of the values for the selected
    variables](#ind-6-2-1-1--Verify-the-coercibility-for-the-values-at-the-selected-variables)
    -   Checks if the format of the character string values of the
        selected variables from the table with the raw data are
        compatible with the (variable) type that each of them should be
        coerced to.  
-   [6.2.1.2 Verify the uniqueness of the key
    values](#ind-6-2-1-2--Verify-the-uniqueness-of-the-key-values)
    -   Checked if the values of the variable *REFNUM* (when coerced to
        type ‘integer’) that was intended to be used as the key of the
        table preprocessed data uniquely identifies each observation.

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

The format of the character string values of the selected variables,
*REFNUM*, *BGN\_DATE*, *EVTYPE*, *FATALITIES*, *INJURIES*, *PROPDMG*,
*PROPDMGEXP*, *CROPDMG* and *CROPDMGEXP*, from the table with the raw
data were checked in order to verify that they were compatible with the
new variable type that each them should be coerced to, so as not to lose
any information without knowing it (or in other words to avoid the side
effect of automatic substitution by NAs, of the values that were
incompatible with the new variable type that each of them should be
coerced to).

The variables *EVTYPE*, *BGN\_DATE*, *PROPDMGEXP* and *CROPDMGEXP* were
already in their appropriate type (which is ‘character’), so no further
adjustments were needed. On the other hand the variables *REFNUM*,
*FATALITIES* and *INJURIES* had to be coerced from ‘character’ type to
‘integer’, while the type of the remaining two variables, *PROPDMG* and
*CROPDMG* had to change from ‘character’ to ‘double’.

A validation was conducted to verify that:

1.  the values of the variable *REFNUM* can be coerced to ‘integer’
    type  
2.  the values of the variable *FATALITIES* can be coerced to ‘integer’
    type  
3.  the values of the variable *INJURIES* can be coerced to ‘integer’
    type  
4.  the values of the variable *PROPDMG* can be coerced to ‘double’
    type  
5.  the values of the variable *CROPDMG* can be coerced to ‘double’ type

<!-- -->

    # Create a validator with the constrains needed to verify 
    # that the formats of the character string values 
    # at the selected variables from the table with the raw data 
    # are compatible with the variable types that they should be coerced to.
    V_____coercibible_format_of_the_character_string_values <- 
      validator(
        "REFNUM_value_is_coercible_to_integer" = 
          ( grepl("^\\d{1,}\\.00$", REFNUM) ),
        "FATALITIES_value_is_coercible_to_integer" = 
          ( grepl("^\\d{1,}\\.00$", FATALITIES) ),
        "INJURIES_value_is_coercible_to_integer" = 
          ( grepl("^\\d{1,}\\.00$", INJURIES) ),
        "PROPDMG_value_is_coercible_to_double" = 
          ( grepl("^\\d{1,}\\.\\d{2}$", PROPDMG) ),
        "CROPDMG_value_is_coercible_to_double" = 
          ( grepl("^\\d{1,}\\.\\d{2}$", CROPDMG) )
      )

    # Confront the table with the raw data with the validator 
    # which contains the constrains for the formats of the character string values 
    # at the selected variables from the table with the raw data.
    CF_____coercibible_format_of_the_character_string_values <- 
      confront(
        dat = raw_data,
        V_____coercibible_format_of_the_character_string_values
      )

The values of all selected variables were found to be compatible with
the new type that each of them should be coerced to.

    # Create a kable to present the results validation 
    # for the format of the character string values 
    # at the selected variables from the table with the raw data.
    kable(
      x = summary(
        CF_____coercibible_format_of_the_character_string_values
      )[, c("name", "items", "passes", "fails", "nNA", "error", "warning")],
      caption = paste0(
        "Table 6.2.1.1-1: ",
        "The results of the validation ", 
        "for the compatibility of the format of the character string values ", 
        "at the selected variables from the table with raw data ",
        "with the appropriate type that each of them should be coerced to, ",
        "at the table of preprocessed data."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )   

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.2.1.1-1: The results of the validation for the compatibility of
the format of the character string values at the selected variables from
the table with raw data with the appropriate type that each of them
should be coerced to, at the table of preprocessed data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
REFNUM\_value\_is\_coercible\_to\_integer
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
FATALITIES\_value\_is\_coercible\_to\_integer
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
INJURIES\_value\_is\_coercible\_to\_integer
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMG\_value\_is\_coercible\_to\_double
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMG\_value\_is\_coercible\_to\_double
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
</table>
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

The variable *REFNUM*, coerced to its proper type (that is ‘integer’),
should and was expected to uniquely identify each observation, making it
an excellent choice for the key of the table with the preprocessed data,
(as well as for the rest of the tables that were generated at the
following stages of the data processing pipeline).

Before proceeding to set the *REFNUM* as the key, the claim that *it
uniquely identifies each observations* was checked to avoid unexpected
surprises that may jeopardize the reproducibility of the analysis.

    # Create a validator for the uniqueness of values at the variable REFNUM.
    V_____uniqueness_of_values_for_the_key_of_the_table <- validator(
      "value_uniquely_identifies_the_observation" = (
        # the values of the variable REFNUM will be first coerced 
        # to their appropriate variable type, which is 'integer' 
        # and then checked for uniqueness
        as.integer(REFNUM) %in% 
          names(table(as.integer(REFNUM)))[table(as.integer(REFNUM)) == 1]
      )
    )

    # Confront the table with raw data with the validator 
    # for the uniqueness of values at REFNUM variable 
    CF_____uniqueness_of_values_for_the_key_of_the_table <- confront(
      dat = raw_data,
      V_____uniqueness_of_values_for_the_key_of_the_table
    )

All values of the variable *REFNUM* were found to be distinct, and
consequently they uniquely identify each observation.

    # Create a kable to present the results from the validation 
    # for the uniqueness of each value at the variable REFNUM 
    # at the table with the raw data. 
    kable(
      x = summary(CF_____uniqueness_of_values_for_the_key_of_the_table)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ], 
      caption = paste0(
        "Table 6.2.1.2-1: ",
        "The results from the validation ",
        "for the uniqueness of values from REFNUM variable ", 
        "at the table with the raw data."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c(
          "striped", "hover", "condensed", "responsive", "bordered"
        ), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = paste0(
          "The values at REFNUM variable were coerced to 'integer' type ", "\n",
          "before checking if they uniquely identify each observation."
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.2.1.2-1: The results from the validation for the uniqueness of
values from REFNUM variable at the table with the raw data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
value\_uniquely\_identifies\_the\_observation
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The values at REFNUM variable were coerced to ‘integer’ type
<br>before checking if they uniquely identify each observation.
</td>
</tr>
</tfoot>
</table>
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

Having identify the variables from the table with the raw data
(*REFNUM*, *BGN\_DATE*, *EVTYPE*, *FATALITIES*, *INJURIES*, *PROPDMG*,
*PROPDMGEXP*, *CROPDMG* and *CROPDMGEXP*) that were required to proceed
with the analysis, and [verified that they satisfied the necessary
prerequisites](#ind-6-2-1--Verify-the-prerequisites-for-the-selected-variables),
the table with preprocessed data was created, by selecting those 9
variables, coercing them to their appropriate type:

1.  *REFNUM* was selected and coerced from ‘character’ type to
    ‘integer’  
2.  *BGN\_DATE* was selected (no coercion happened as it was already of
    the proper type, ‘character’)  
3.  *EVTYPE* was selected (no coercion happened as it was already of the
    proper type, ‘character’)  
4.  *FATALITIES* was selected and coerced from ‘character’ type to
    ‘integer’  
5.  *INJURIES* was selected and coerced from ‘character’ type to
    ‘integer’  
6.  *PROPDMG* was selected and coerced from ‘character’ type to
    ‘double’  
7.  *PROPDMGEXP* was selected (no coercion happened as it was already of
    the proper type, ‘character’)  
8.  *CROPDMG* was selected and coerced from ‘character’ type to
    ‘double’  
9.  *CROPDMGEXP* was selected (no coercion happened as it was already of
    the proper type, ‘character’)

and finally setting the variable *REFNUM* as the key of the table.

    # Create the table with the preprocessed data 
    # with the selected variables from the table with the raw data, 
    # coerced to their appropriate type.
    preprocessed_data <- raw_data[
      ,
      list(
        "REFNUM" = as.integer(REFNUM),
        "BGN_DATE" = BGN_DATE,
        "EVTYPE" = EVTYPE,
        "FATALITIES" = as.integer(FATALITIES),
        "INJURIES" = as.integer(INJURIES),
        "PROPDMG" = as.double(PROPDMG),
        "PROPDMGEXP" = PROPDMGEXP,
        "CROPDMG" = as.double(CROPDMG),
        "CROPDMGEXP" = CROPDMGEXP
      )
      ]

    # Set REFNUM as the key of the table with the preprocessed data
    setkey(preprocessed_data, REFNUM)

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

The table with the preprocessed data was post validated to ensure that:

1.  all and only, the variables required for the analysis were
    included  
2.  all the observations from table with raw data were transfered  
3.  each of the selected variables was coerced to its appropriate type  
4.  no missing values were introduced as a result of the coercion  
5.  *REFNUM* was set as the key of the table

<!-- -->

    # Create a vector with the names of the expected variables 
    # at the table with the preprocessed data.
    expected_variables_at_the_table_with_preprocessed_data <- c(
      "REFNUM", "BGN_DATE", "EVTYPE", "FATALITIES", "INJURIES", 
      "PROPDMG","PROPDMGEXP","CROPDMG","CROPDMGEXP"
    )

    # Create a validator for the post validation of the preprocessed data.
    V_____post_validation_of_table_with_preprocessed_data <- validator(
      # check if the table contains all and only the required variables 
      "all_and_only_the_required_variables_are_included" = 
        ( names(.) == expected_variables_at_the_table_with_preprocessed_data ),
      # check if all the observations were included.
      "all_observations_were_transfered" = nrow(.) == nrow(raw_data),
      # checks if each variable is coerced to its appropriate type
      "REFNUM_is_integer" = 
        ( paste(class(.[["REFNUM"]]), collapse = ",") == "integer" ),
      "BGN_DATE_is_character" = 
        ( paste(class(.[["BGN_DATE"]]), collapse = ",") == "character" ),
      "EVTYPE_is_character" = 
        ( paste(class(.[["EVTYPE"]]), collapse = ",") == "character" ),
      "FATALITIES_is_integer" = 
        ( paste(class(.[["FATALITIES"]]), collapse = ",") == "integer" ),
      "INJURIES_is_integer" = 
        ( paste(class(.[["INJURIES"]]), collapse = ",") == "integer" ),
      "PROPDMG_is_numeric" = 
        ( paste(class(.[["PROPDMG"]]), collapse = ",") == "numeric" ),
      "PROPDMGEXP_is_character" = 
        ( paste(class(.[["PROPDMGEXP"]]), collapse = ",") == "character" ),
      "CROPDMG_is_numeric" = 
        ( paste(class(.[["CROPDMG"]]), collapse = ",") == "numeric" ),
      "CROPDMGEXP_is_character" = 
        ( paste(class(.[["CROPDMGEXP"]]), collapse = ",") == "character" ),
      # check that no missing values were introduced as a result of coercion
      "no_missing_values_introduced" = ( mean(complete.cases(.)) == 1 ),
      # checks if the REFNUM is set as the key of the table
      "REFNUM_is_the_key_of_the_table" = ( attributes(.)[["sorted"]] == "REFNUM" )
    )

    # Confront the table with the preprocessed data with the validator 
    # which contains the constrains for the validity of preprocessed data. 
    CF_____post_validation_of_table_with_preprocessed_data <- confront(
      dat = preprocessed_data,
      V_____post_validation_of_table_with_preprocessed_data
    )

The table with the preprocessed data was valid.

    # Create a kable was to present the results of post validation 
    # for table with the preprocessed data. 
    kable(
      x = summary(CF_____post_validation_of_table_with_preprocessed_data)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ], 
      caption = paste0(
        "Table 6.2.3-1: ",
        "The results of post validation for the table with the preprocessed data."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.2.3-1: The results of post validation for the table with the
preprocessed data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
all\_and\_only\_the\_required\_variables\_are\_included
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
9
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
all\_observations\_were\_transfered
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
REFNUM\_is\_integer
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_DATE\_is\_character
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
EVTYPE\_is\_character
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
FATALITIES\_is\_integer
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
INJURIES\_is\_integer
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMG\_is\_numeric
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMGEXP\_is\_character
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMG\_is\_numeric
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMGEXP\_is\_character
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
no\_missing\_values\_introduced
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
REFNUM\_is\_the\_key\_of\_the\_table
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
</table>
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

The table with the preprocessed data, contained 9 variables and 902297
observations.

The variable *REFNUM* was set as the key of the table.

    # Print the structure of the table with the preprocessed data.
    str(preprocessed_data)

    ## Classes 'data.table' and 'data.frame':   902297 obs. of  9 variables:
    ##  $ REFNUM    : int  1 2 3 4 5 6 7 8 9 10 ...
    ##  $ BGN_DATE  : chr  "4/18/1950 0:00:00" "4/18/1950 0:00:00" "2/20/1951 0:00:00" "6/8/1951 0:00:00" ...
    ##  $ EVTYPE    : chr  "TORNADO" "TORNADO" "TORNADO" "TORNADO" ...
    ##  $ FATALITIES: int  0 0 0 0 0 0 0 0 1 0 ...
    ##  $ INJURIES  : int  15 0 2 2 2 6 1 0 14 0 ...
    ##  $ PROPDMG   : num  25 2.5 25 2.5 2.5 2.5 2.5 2.5 25 25 ...
    ##  $ PROPDMGEXP: chr  "K" "K" "K" "K" ...
    ##  $ CROPDMG   : num  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ CROPDMGEXP: chr  "" "" "" "" ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

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

<font size="3"><u><strong>Summary</strong></u></font>

From all available observations that the table with the preprocessed
data contains, only the subset of the weather phenomena that begun at
2001 or later and resulted in non-zero harm either to population health
(caused fatalities or injuries) or to economy (caused property damage or
crop damage) will be used for this analysis (for the reasons that were
discussed in detail at the section [4.2 Points Of
Interest](#ind-4-2--Points-Of-Interest) about the *Storm Events
Dataset*).

The consistency of the format of dates at the *BGN\_DATE* variable (that
indicates when each weather phenomenon begun) was checked, as it was
intended to be used for the identification, the eligible observations
for the target data subset were identified, and got extracted to create
the table with the target data subset.

Finally post validation was conducted and some facts about the table
with the target data subset were highlighted.

<font size="3"><u><strong>Steps</strong></u></font>

-   [6.3.1 Identify the target subset of
    observations](#ind-6-3-1--Identify-the-target-subset-of-observations)
    -   Verifies prerequisites and identifies the eligible observations
        for the table with the target data subset:
        -   [6.3.1.1 Verify the consistency of date
            format](#ind-6-3-1-1--Verify-the-consistency-of-date-format)
            -   Verifies that the character string format of the values
                at *BGN\_DATE* variable are consistent.  
        -   [6.3.1.2 Identify the eligible
            observations](#ind-6-3-1-2--Identify-the-eligible-observations)
            -   Identifies the eligible observations for the table with
                the target data subset by their key value.  
-   [6.3.2 Create the table with the target data
    subset](#ind-6-3-2--Create-the-table-with-the-target-data-subset)
    -   Creates the table with the target data subset by identifying and
        extracting the eligible observations by their key values.  
-   [6.3.3 Conduct post validation for the table with the target data
    subset](#ind-6-3-3--Conduct-post-validation-for-the-table-with-the-target-data-subset)
    -   Ensures that the target data was extracted correctly.  
-   [6.3.4 Overview of the table with the target data
    subset](#ind-6-3-4--Overview-of-the-table-with-the-target-data-subset)
    -   Presents some basic facts about the table with the target data
        subset.

<br>

<font size="1">[back to start of this
section](#ind-6-3--Extract-The-Target-Data-Subset)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.3.1 Identify the target subset of observations

Out of all available observations it was decided to use for the analysis
the subset that includes only the weather phenomena that happened from
2001 and later (due to the implications of [changes in the composition
of weather event
types](#ind-4-2-1--Changes-in-the-composition-of-weather-event-types))
and resulted in non-zero harm either to population health (caused
fatalities or injuries) or to economy (caused property damage or crop
damage) (due to the implications of the [eligibility criteria for
inclusion of weather events in the
dataset](#ind-4-2-2--Eligibility-criteria-for-inclusion-of-weather-events-in-the-dataset)).

The format of the date values at *BGN\_DATE* variable from the table
with preprocessed data had to be checked to see if it is consistent
across all observations, before it was used to form the first of the two
constrains.

The eligible observations were finally identified by their key value
(denoted by the variable *REFNUM*).

-   [6.3.1.1 Verify the consistency of date
    format](#ind-6-3-1-1--Verify-the-consistency-of-date-format%60)
    -   Verifies that the character string format of the values at
        *BGN\_DATE* variable are consistent.
-   [6.3.1.2 Identify the eligible
    observations](#ind-6-3-1-2--Identify-the-eligible-observations)
    -   Identifies by their key value the observations at the table with
        preprocessed data that begun from 2001 or later and resulted in
        non-zero harm either to population health (caused fatalities or
        injuries) or to economy (caused property damage or crop damage)

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

#### 6.3.1.1 Verify the consistency of date format

The year in the value of date at the variable *BGN\_DATE* was intended
to be used as one of the two criteria to identify the eligible
observations for the target data subset at the [next
subsubsection](#ind-6-3-1-2--Identify-the-eligible-observations).

That’s why it is crucial at this point, to verify that the values of
date are in the expected format, which as indicated by the [overview of
the table with preprocessed
data](#ind-6-2-4--Overview-of-the-table-with-the-preprocessed-data) (as
well as some interactive examination) seems to be:

-   **MM/DD/YYYY 0:00:00**
    -   *MM* stands for 2 characters for the month  
    -   *DD* stands for 2 characters for the day  
    -   *YYYY* stands for 4 characters for the year  
    -   the value of year is followed by a space  
    -   *0:00:00* is a dummy part that stands for the time

<!-- -->

    # Create a validator for the format 
    # of the character string values of the dates.
    V____expected_character_string_format_for_begin_date <- validator(
      "expected_character_string_format_of_date" = 
        grepl("^\\d{1,2}/\\d{1,2}/\\d{4} 0:00:00$", BGN_DATE)
    )

    # Confront the table with the preprocessed data with the validator 
    # for the format of the character string values of dates.
    CF____expected_character_string_format_for_begin_date <- confront(
      dat = preprocessed_data,
      V____expected_character_string_format_for_begin_date
    )

Indeed all values for dates were found to be in the expected format.

    # Create a kable to present the results of the confrontation 
    # for the format of the character string values of dates.
    kable(
      x = summary(CF____expected_character_string_format_for_begin_date)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ],
      caption = paste0(
        "Table 6.3.1.1-1: ",
        "The results of the validation ",
        "for the format of the character sting values of dates ", 
        "from the variable BGN_DATE at the table with preprocessed data." 
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.3.1.1-1: The results of the validation for the format of the
character sting values of dates from the variable BGN\_DATE at the table
with preprocessed data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
expected\_character\_string\_format\_of\_date
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
</table>
<br>

<font size="1">[back to start of this
subsubsection](#ind-6-3-1-1--Verify-the-consistency-of-date-format)</font>  
<font size="1">[back to start of this
subsection](#ind-6-3-1--Identify-the-target-subset-of-observations)</font>  
<font size="1">[back to start of this
section](#ind-6-3--Extract-The-Target-Data-Subset)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.3.1.2 Identify the eligible observations

According to the discussion for the two [points of interest for the
Storm Events Dataset](#ind-4-2--Points-Of-Interest) only a subset of
observations will be used for this analysis. This target data subset
includes only the observations which refer to weather phenomena that
simultaneously satisfy the following two criteria:

-   **begun at Jan 2011 and later** due to the implications of [changes
    in the composition of weather event
    types](#ind-4-2-1--Changes-in-the-composition-of-weather-event-types)
    -   the year (that was extracted from the date value of the
        *BGN\_DATE* variable  
        coerced to integer) must be found equal or larger than 2001  
-   **resulted in non-zero harm either to population health (caused
    fatalities or injuries) or to economy (caused property damage or
    crop damage)** due to the implications of the [eligibility criteria
    for inclusion of weather events in the
    dataset](#ind-4-2-2--Eligibility-criteria-for-inclusion-of-weather-events-in-the-dataset)
    -   the value of at least one of the variables, *FATALITIES*,
        *INJURIES*, *PROPDMG* and *CROPDMG* must be positive

<!-- -->

    # Create a validator with the eligibility criteria 
    # for the inclusion of observations at the target data subset. 
    V____criteria_for_target_data_subset_of_observations <- validator(
      "begin_date_from_2001_and_later" = (
        as.integer(
          str_extract(
            string = BGN_DATE,
            pattern = "(?<=^\\d{1,2}/\\d{1,2}/)\\d{4}"
          )
        ) %in%
          c(2001:2011)
      ),
      "non_zero_damage_to_population_health_or_economy" = (
        (as.integer(FATALITIES) > 0) |
          (as.integer(INJURIES) > 0) |
          (as.double(PROPDMG) > 0) |
          (as.double(CROPDMG) > 0)
      )
    )

    # Confront the table with the preprocessed data with the validator 
    # with the eligibility criteria for the inclusion of observations 
    # at the target data subset.
    CF____criteria_for_target_data_subset_of_observations <- confront(
      dat = preprocessed_data,
      V____criteria_for_target_data_subset_of_observations
    )

Out of 902297 observation from the table with preprocessed data, there
were found:

-   488692 observations which refer to weather phenomena that begun at
    2001 or later  
-   254633 observations which refer to weather phenomena that resulted
    in non-zero harm either to population health (caused fatalities or
    injuries) or to economy (caused property damage or crop damage)

<!-- -->

    # Create a kable to present the results of the test 
    # for the inclusion of observations at the target data subset.
    kable( 
      x = summary(CF____criteria_for_target_data_subset_of_observations)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ],
      caption = paste0(
        "Table 6.3.1.2-1: ",
        "The results for the eligibility criteria for inclusion of observations ",
        "from the table with the preprocessed data in the target data subset."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.3.1.2-1: The results for the eligibility criteria for inclusion
of observations from the table with the preprocessed data in the target
data subset.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
begin\_date\_from\_2001\_and\_later
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
488692
</td>
<td style="text-align:right;">
413605
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
non\_zero\_damage\_to\_population\_health\_or\_economy
</td>
<td style="text-align:right;">
902297
</td>
<td style="text-align:right;">
254633
</td>
<td style="text-align:right;">
647664
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
</table>
The observations that satisfied simultaneously the two criteria which
determine which observation would be included in the target data subset
were identified by their key value (denoted by the variable *REFNUM*).

    # Identify the observations eligible to be included in the target data subset 
    # by their key value denoted by the variable REFNUM.
    criterion_by_REFNUM_____eligible_observations_for_the_target_data_subset <- with(
      data = CF____criteria_for_target_data_subset_of_observations[["._value"]],
      expr = preprocessed_data[
        begin_date_from_2001_and_later &
          non_zero_damage_to_population_health_or_economy,
        REFNUM
        ]
    )

Exactly 144826 observations were found eligible to be included in the
table with the target data subset.

    # Create a table that presents the number of observations 
    # that were found eligible to be included in the target data subset.
    kable(
      x = data.table(
        "Number of Eligible Observations for the Target Data Subset" = 
          length(
            criterion_by_REFNUM_____eligible_observations_for_the_target_data_subset
          )
      ),
      caption = paste0(
        "Table 6.3.1.2-2: ",
        "The number of observations that were found eligible ", "\n",
        "to get included in the table with the target data subset."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.3.1.2-2: The number of observations that were found eligible to
get included in the table with the target data subset.
</caption>
<thead>
<tr>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Eligible Observations for the Target Data Subset
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:right;">
144826
</td>
</tr>
</tbody>
</table>
<br>

<font size="1">[back to start of this
subsubsection](#ind-6-3-1-2--Identify-the-eligible-observations)</font>  
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

From the table with the preprocessed data, the table with the target
data subset was created by including only those observation that
simultaneous satisfied two criteria:

-   begun at Jan 2011 and later (due to the implications of [changes in
    the composition of weather event
    types](#ind-4-2-1--Changes-in-the-composition-of-weather-event-types))  
-   resulted in non-zero harm either to population health (caused
    fatalities or injuries) or to economy (caused property damage or
    crop damage) (due to the implications of the [eligibility criteria
    for inclusion of weather events in the
    dataset](#ind-4-2-2--Eligibility-criteria-for-inclusion-of-weather-events-in-the-dataset))

The observations were identified and extracted by their key value
(denoted by the variable *REFNUM*).

    # Create the table with the target data subset 
    # by including only the observations that were found eligible 
    # from those included at the table with the preprocessed data.
    target_data_subset <- preprocessed_data[
      criterion_by_REFNUM_____eligible_observations_for_the_target_data_subset
      ]

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

Post validation was conducted to verify that all observations contained
at the table with the target data subset were eligible.

The same constrains that were used to [identify the eligible
observations from the table with preprocessed
data](#ind-6-3-1-2--Identify-the-eligible-observations) were used to
verify the eligibility of observations at the table with the target data
subset.

    # The table with the target data subset was post validated 
    # to verify that it contained only eligible observations 
    # from the table with the preprocessed data.
    CF____post_validation_of_target_data_subset_table <- confront(
      dat = target_data_subset,
      # The validator that was created and used to identify 
      # the eligible observations for the target data subset 
      # was used to ensure the validity of the table with the target data subset.
      V____criteria_for_target_data_subset_of_observations
    )

All observations contained at the table with the target data subset were
eligible.

    # Create a kable to present the results of post validation 
    # for the table with the target data subset.
    kable(
      x = summary(CF____post_validation_of_target_data_subset_table)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ],
      caption = paste0(
        "Table 6.3.3-1: ",
        "The results of the post validation ", 
        "from the table with the target data subset."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = paste0(
          "The same constrains that were used to identify the eligible observations ", 
          "from the table with the preprocessed data, ", "\n",
          "were used for the post validation of the observations ", 
          "at the table with the target data subset."
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.3.3-1: The results of the post validation from the table with
the target data subset.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
begin\_date\_from\_2001\_and\_later
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
non\_zero\_damage\_to\_population\_health\_or\_economy
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The same constrains that were used to identify the eligible
observations from the table with the preprocessed data, <br>were used
for the post validation of the observations at the table with the target
data subset.
</td>
</tr>
</tfoot>
</table>
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

The table with the target data subset contained 9 variables and 144826
observations.

The variable *REFNUM* was set as the key of the table.

    # Print the structure of the table with target data subset.
    str(target_data_subset) 

    ## Classes 'data.table' and 'data.frame':   144826 obs. of  9 variables:
    ##  $ REFNUM    : int  413607 413608 413609 413610 413611 413612 413613 413614 413615 413616 ...
    ##  $ BGN_DATE  : chr  "1/19/2001 0:00:00" "1/19/2001 0:00:00" "1/19/2001 0:00:00" "1/19/2001 0:00:00" ...
    ##  $ EVTYPE    : chr  "TSTM WIND" "TSTM WIND" "TSTM WIND" "TSTM WIND" ...
    ##  $ FATALITIES: int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ INJURIES  : int  0 0 0 0 0 0 0 4 0 0 ...
    ##  $ PROPDMG   : num  10 8 2 15 5 3 10 450 150 3 ...
    ##  $ PROPDMGEXP: chr  "K" "K" "K" "K" ...
    ##  $ CROPDMG   : num  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ CROPDMGEXP: chr  "" "" "" "" ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

The variables *EVTYPE*, *PROPDMGEXP* and *CROPDMGEXP* contained a
suspiciously large number of distinct values.

    # Create a kable to highlight some facts about the target data subset table.
    kable(
      x = data.table(
        "Variable Name" = names(target_data_subset),
        "Number of Distinct Values" = vapply(
          X = target_data_subset, 
          FUN = function(x) length(unique(x[!is.na(x)])), 
          FUN.VALUE = integer(1))
      ),
      caption = paste0(
        "Table 6.3.4: ",
        "Facts about the variables at the table with the target data subset."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c(
          "striped", "hover", "condensed", "responsive", "bordered"
        ), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = paste0(
          "The table with the target data subset contains 9 variables ", "\n",
          "and 144826 observations without any missing value (coded as NA)."
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.3.4: Facts about the variables at the table with the target data
subset.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Variable Name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Distinct Values
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
REFNUM
</td>
<td style="text-align:right;">
144826
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_DATE
</td>
<td style="text-align:right;">
3746
</td>
</tr>
<tr>
<td style="text-align:left;">
EVTYPE
</td>
<td style="text-align:right;">
97
</td>
</tr>
<tr>
<td style="text-align:left;">
FATALITIES
</td>
<td style="text-align:right;">
31
</td>
</tr>
<tr>
<td style="text-align:left;">
INJURIES
</td>
<td style="text-align:right;">
101
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMG
</td>
<td style="text-align:right;">
1162
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMGEXP
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMG
</td>
<td style="text-align:right;">
269
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMGEXP
</td>
<td style="text-align:right;">
4
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The table with the target data subset contains 9 variables
<br>and 144826 observations without any missing value (coded as NA).
</td>
</tr>
</tfoot>
</table>
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

<font size="3"><u><strong>Summary</strong></u></font>

Through the in-record data validation stage the values of each variable
from the table with the target data subset were examined independently
of the corresponding values at other variables, in order to identify
invalid entries which were then substituted by missing values (coded
properly as NA) to create the table with the in-record validated data.

Finally post validation was conducted and some facts about the table
with the in-record validated data were highlighted.

<font size="3"><u><strong>Steps</strong></u></font>

-   [6.4.1 Introduce information from the Strom Data
    Documentation](#ind-6-4-1--Introduce-information-from-the-Strom-Data-Documentation)
    -   Creates constants with information about the permitted values of
        some variables that will be used to form validity contains.
        -   [6.4.1.1 Valid values for the EVTYPE
            variable](#ind-6-4-1-1--Valid-values-for-the-EVTYPE-variable)
            -   The valid values for EVTYPE variable were introduced.  
        -   [6.4.1.2 Valid values for the PROPDMGEXP
            variable](#ind-6-4-1-2--Valid-values-for-the-PROPDMGEX-variable)
            -   The valid values for PROPDMGEXP variable were
                introduced.  
        -   [6.4.1.3 Valid values for the CROPDMGEXP
            variable](#ind-6-4-1-3--Valid-values-for-the-CROPDMGEXP-variable)
            -   The valid values for PROPDMGEXP variable were
                introduced.  
-   [6.4.2 Conduct in-record data validation for each
    variable](#ind-6-4-2--Conduct-in-record-data-validation-for-each-variable)
    -   Identifies the invalid values for each variable.  
-   [6.4.3 Create the table with the in-record validated
    data](#ind-6-4-3--Create-the-table-with-the-in-record-validated-data)
    -   Creates the table with the in-record validated data by
        substituting all invalid values that were identified as invalid,
        with NAs.  
-   [6.4.4 Conduct post validation for the table with the in-record
    validated
    data](#ind-6-4-4--Conduct-post-validation-for-the-table-with-the-in-record-validated-data)
    -   Ensures that all values of each variable at the table with the
        in-record validated data are valid.  
-   [6.4.5 Overview of the table with the in-record validated
    data](#ind-6-4-5--Overview-of-the-table-with-the-in-record-validated-data)
    -   Presents some basic facts about the table with the in-record
        validated data.

<br>

<font size="1">[back to start of this
section](#ind-6-4--Conduct-In-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.4.1 Introduce information from the Strom Data Documentation

Some constants with the valid values for the variables *EVTYPE*,
*PROPDMGEXP* and *CROPDMGEXP* (as stated at the [Storm Data
Documentation](https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf))
were created and used in order to form their respective constrains.

-   [6.4.1.1 Valid values for the EVTYPE
    variable](#ind-6-4-1-1--Valid-values-for-the-EVTYPE-variable)
    -   The 48 valid values for EVTYPE variable were introduced.  
-   [6.4.1.2 Valid values for the PROPDMGEXP
    variable](#ind-6-4-1-2--Valid-values-for-the-PROPDMGEXP-variable)
    -   The 3 valid values for PROPDMGEXP variable were introduced.  
-   [6.4.1.3 Valid values for the CROPDMGEXP
    variable](#ind-6-4-1-3--Valid-values-for-the-CROPDMGEXP)-variable)
    -   The 3 valid values for CROPDMGEXP variable were introduced.

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

#### 6.4.1.1 Valid values for the EVTYPE variable

The entries of the variable *EVTYPE* according to the [NATIONAL WEATHER
SERVICE INSTRUCTION 10-1605, AUGUST 17,
2007](https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf)
(at chapter 7), must take one of the 48 character values that correspond
to the defined weather event types:

<div class = "row">

<div class = "col-md-4">
1.  ASTRONOMICAL LOW TIDE  
2.  AVALANCHE  
3.  BLIZZARD  
4.  COASTAL FLOOD  
5.  COLD/WIND CHILL  
6.  DEBRIS FLOW  
7.  DENSE FOG  
8.  DENSE SMOKE  
9.  DROUGHT  
10. DUST DEVIL  
11. DUST STORM  
12. EXCESSIVE HEAT  
13. EXTREME COLD/WIND CHILL  
14. FLASH FLOOD  
15. FLOOD  
16. FROST/FREEZE  
    </div>

<div class = "col-md-4">
1.  FUNNEL CLOUD  
2.  FREEZING FOG  
3.  HAIL  
4.  HEAT  
5.  HEAVY RAIN  
6.  HEAVY SNOW  
7.  HIGH SURF  
8.  HIGH WIND  
9.  HURRICANE/TYPHOON  
10. ICE STORM  
11. LAKE-EFFECT SNOW  
12. LAKESHORE FLOOD  
13. LIGHTNING  
14. MARINE HAIL  
15. MARINE HIGH WIND  
16. MARINE STRONG WIND  
    </div>

1.  MARINE THUNDERSTORM WIND  
2.  RIP CURRENT  
3.  SEICHE  
4.  SLEET  
5.  STORM SURGE/TIDE  
6.  STRONG WIND  
7.  THUNDERSTORM WIND  
8.  TORNADO  
9.  TROPICAL DEPRESSION  
10. TROPICAL STORM  
11. TSUNAMI  
12. VOLCANIC ASH  
13. WATERSPOUT  
14. WILDFIRE  
15. WINTER STORM  
16. WINTER WEATHER  
    </div>

    # Create a vector that includes the 48 values of the defined weather event types.
    defined_event_types <- c(
      "ASTRONOMICAL LOW TIDE", 
      "AVALANCHE", 
      "BLIZZARD", 
      "COASTAL FLOOD", 
      "COLD/WIND CHILL", 
      "DEBRIS FLOW", 
      "DENSE FOG", 
      "DENSE SMOKE", 
      "DROUGHT", 
      "DUST DEVIL", 
      "DUST STORM",
      "EXCESSIVE HEAT",
      "EXTREME COLD/WIND CHILL", 
      "FLASH FLOOD", 
      "FLOOD", 
      "FROST/FREEZE", 
      "FUNNEL CLOUD", 
      "FREEZING FOG", 
      "HAIL", 
      "HEAT",
      "HEAVY RAIN", 
      "HEAVY SNOW", 
      "HIGH SURF", 
      "HIGH WIND", 
      "HURRICANE/TYPHOON", 
      "ICE STORM", 
      "LAKE-EFFECT SNOW", 
      "LAKESHORE FLOOD", 
      "LIGHTNING",
      "MARINE HAIL", 
      "MARINE HIGH WIND",
      "MARINE STRONG WIND", 
      "MARINE THUNDERSTORM WIND", 
      "RIP CURRENT", 
      "SEICHE", 
      "SLEET", 
      "STORM SURGE/TIDE",
      "STRONG WIND", 
      "THUNDERSTORM WIND",
      "TORNADO", 
      "TROPICAL DEPRESSION", 
      "TROPICAL STORM", 
      "TSUNAMI", 
      "VOLCANIC ASH", 
      "WATERSPOUT", 
      "WILDFIRE",
      "WINTER STORM", 
      "WINTER WEATHER"
    )

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-4-1-1--Valid-values-for-the-EVTYPE-variable)</font>  
<font size="1">[back to start of this
subsection](#ind-6-4-1--Introduce-information-from-the-Strom-Data-Documentation)</font>  
<font size="1">[back to start of this
section](#ind-6-4--Conduct-In-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.4.1.2 Valid values for the PROPDMGEXP variable

The entries of the variable *PROPDMGEXP* that indicates whether the
magnitude for the economic damage, (denoted by the *PROPDMG* variable),
refers to thousands, millions or billions of dollars, according to the
information provided by [NATIONAL WEATHER SERVICE INSTRUCTION 10-1605,
AUGUST 17,
2007](https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf)
(at chapter 2.7), must take one of the following 3 character values :

1.  **K** which corresponds to thousands of dollars  
2.  **M** which corresponds to millions of dollars  
3.  **B** which corresponds to billions of dollars

<!-- -->

    # Create a vector that includes the defined values for the variable PROPDGMEXP.
    defined_property_damage_exponents <- c("K", "M", "B")

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-4-1-2--Valid-values-for-the-EVTYPE-variable)</font>  
<font size="1">[back to start of this
subsection](#ind-6-4-1--Introduce-information-from-the-Strom-Data-Documentation)</font>  
<font size="1">[back to start of this
section](#ind-6-4--Conduct-In-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.4.1.3 Valid values for the CROPDMGEXP variable

The entries of the variable *CROPDMGEXP* that indicates whether the
magnitude for the economic damage, (denoted by the *CROPDMG* variable),
refers to thousands, millions or billions of dollars, according to the
information provided by [NATIONAL WEATHER SERVICE INSTRUCTION 10-1605,
AUGUST 17,
2007](https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf)
(at chapter 2.7), must take one of the following 3 character values :

1.  **K** which corresponds to thousands of dollars  
2.  **M** which corresponds to millions of dollars  
3.  **B** which corresponds to billions of dollars

<!-- -->

    # Create a vector that includes the defined values for the variable CROPDGMEXP.
    defined_crop_damage_exponents <- c("K", "M", "B")

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-4-1-3--Valid-values-for-the-CROPDMGEXP-variable)</font>  
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

To create the constrains for the in-record validation for each variable
from the table with the target data subset, some ‘common world
knowledge’ combined with information provided by the *Storm Data
Documentation* about the [valid values of the available
variables](#ind-6-4-1--Introduce-information-from-the-Strom-Data-Documentation)
were used.

Specifically:

1.  The *REFNUM* variable’s values must be unique for each
    observations.  
2.  the *BGN\_DATE* variable’s value must contain a year part that is
    from 2001 up to 2011
3.  The *EVTYPE* variable’s values must be one of the [48 defined events
    types](#ind-6-4-1-1--Valid-values-for-the-EVTYPE-variable).  
4.  The *FATALITIES* variable’s values must be non-negative.  
5.  The *INJURIES* variable’s values must be non-negative.
6.  The *PROPDMG* variable’s values must be non-negative.  
7.  The *PROPDMGEXP* variable’s values must be *K*, *M* or *B*.  
8.  The *CROPDMG* variable’s values must be non negative.  
9.  The *CROPDMGEXP* variable’s values must be *K*, *M* or *B*.

Although unnecessary to test the constrains for all variables, that were
included in the table with the target data subset (the uniqueness of the
values in key variable *REFNUM*, the fact the year indicated in the
*BGN\_DATE* variable was from 2001 to 2011 as well as the fact that the
values of the variables *FATALITIES*, *INJURIES*, *CROPDMG*, *PROPDMG*
were non-negative), because some of them had been verified in previous
stages of the data processing procedure, such tests were included in
order to provided a detailed and complete overview of all the in-record
constrains for the entries  
of each variable at the validated data table.

Actually only the variables *EVTYPE*, *PROPDMGEXP* and *CROPDMGEXP*
needed to be validated in this stage, as these were the ones that
haven’t been checked properly yet.

    # Create a validator with constrains for the in-record validation 
    # for the values of each variable.
    V____constrains_for_the_in_record_data_validation <- validator(
      "REFNUM" = ( REFNUM %in% names(table(REFNUM))[table(REFNUM) == 1] ),
      "BGN_DATE" = ( 
        as.integer(
          str_extract(BGN_DATE, "(?<=^\\d{1,2}/\\d{1,2}/)\\d{4}(?= 0:00:00$)")
        ) %in%
          c(2001:2011)
      ),
      "EVTYPE" = ( EVTYPE %in% defined_event_types ),
      "FATALITIES" = ( FATALITIES >= 0 ),
      "INJURIES" = ( INJURIES >= 0 ),
      "PROPDMG" = ( PROPDMG >= 0 ),
      "PROPDMGEXP" = ( PROPDMGEXP %in% defined_property_damage_exponents ),
      "CROPDMG" = ( CROPDMG >= 0 ),
      "CROPDMGEXP" = ( CROPDMGEXP %in% defined_crop_damage_exponents )
    )

    # Confront the table with target data subset with the validator 
    # which contains the constrains for the in-record data validation. 
    CF____constrains_for_the_in_record_data_validation <- confront(
      dat = target_data_subset,
      V____constrains_for_the_in_record_data_validation
    )

According to the results of the in-record data validation, there is a
significant proportion of invalid values found at the variables
*EVTYPE*, *PROPDMGEXP* and *CROPDMGEXP*.

    # Create a kable to present the results of the in-record data validation 
    # with the table with target data subset.
    kable(
      x = summary(CF____constrains_for_the_in_record_data_validation)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ],
      caption = paste0(
        "Table 6.4.2-1: ",
        "The results of the in-record data validation ",
        "for the table with the target data subset."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.4.2-1: The results of the in-record data validation for the
table with the target data subset.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
REFNUM
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_DATE
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
EVTYPE
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
112051
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
FATALITIES
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
INJURIES
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMG
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMGEXP
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
140668
</td>
<td style="text-align:right;">
4158
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMG
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMGEXP
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
89785
</td>
<td style="text-align:right;">
55041
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
</table>
The invalid values for each variable were identified by their key value
(denoted by the variable *REFNUM*).

    # Identify the values that were found invalid for each variable 
    # by the key value. 
    criterion_by_REFNUM_____invalid_values_of_each_variable <- 
      lapply(
        X = CF____constrains_for_the_in_record_data_validation[["._value"]],
        FUN = function(x) {
          target_data_subset[!x, REFNUM]
        }
      )

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

The table with the in-record validated data was obtained, by
substituting with NAs all values that were identified as invalid at the
table with the target data subset.

The invalid values for each variable were identified and substituted by
their key value (denoted by the variable *REFNUM*).

    # Create a dummy table as a copy of the table with the target data subset. 
    in_record_validated_data <- copy(target_data_subset)

    # Create the table with the in-record validated data 
    # by substituted with NAs the invalid values of each variable.
    for ( var_name in names(criterion_by_REFNUM_____invalid_values_of_each_variable) ) {
      set(x = in_record_validated_data,
          i = which(
            in_record_validated_data$REFNUM %in%
              criterion_by_REFNUM_____invalid_values_of_each_variable[[var_name]]
          ),
          j = var_name,
          value = NA
      )
    }

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

Post validation was conducted to verify that the values of variables at
the table with the in-record validated data were valid according to the
same constrains that were used to [identify the invalid values for each
variable](#ind-6-4-2--Conduct-in-record-data-validation-for-each-variable)
at the table with the target data subset.

    # The table with the in-record validated data was post validated to verify 
    # that all values for each of variable it contained were valid.
    CF____post_validation_of_the_table_with_the_in_record_validated_data <- 
      confront(
        dat = in_record_validated_data,
        V____constrains_for_the_in_record_data_validation
    )

All the values for each variable at the table with the in-record
validated data were valid.

    # Create a kable to present the results of the post validation 
    # for the table with the in-record validated data.  
    kable(
      x = summary(CF____post_validation_of_the_table_with_the_in_record_validated_data)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ],
      caption = paste0(
        "Table 6.4.4-1: ",
        "The results of post validation ", 
        "for the table with the in-record validated data."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = paste0(
          "The same constrains that were used to identify the invalid values ", 
          "of each variable at the table with the target data subset, ", "\n",
          "were used for the post validation of the observations ", 
          "at the table with the in-record validated data."
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.4.4-1: The results of post validation for the table with the
in-record validated data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
REFNUM
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_DATE
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
EVTYPE
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
112051
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
FATALITIES
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
INJURIES
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMG
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMGEXP
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
140668
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
4158
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMG
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMGEXP
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
89785
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
55041
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The same constrains that were used to identify the invalid
values of each variable at the table with the target data subset,
<br>were used for the post validation of the observations at the table
with the in-record validated data.
</td>
</tr>
</tfoot>
</table>
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

The table with the in-record validated data contained 9 variables and
144826 observations.

The variable *REFNUM* was set as the key of table.

    # Print the structure of the table with the in-record validated data table .
    str(in_record_validated_data)

    ## Classes 'data.table' and 'data.frame':   144826 obs. of  9 variables:
    ##  $ REFNUM    : int  413607 413608 413609 413610 413611 413612 413613 413614 413615 413616 ...
    ##  $ BGN_DATE  : chr  "1/19/2001 0:00:00" "1/19/2001 0:00:00" "1/19/2001 0:00:00" "1/19/2001 0:00:00" ...
    ##  $ EVTYPE    : chr  NA NA NA NA ...
    ##  $ FATALITIES: int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ INJURIES  : int  0 0 0 0 0 0 0 4 0 0 ...
    ##  $ PROPDMG   : num  10 8 2 15 5 3 10 450 150 3 ...
    ##  $ PROPDMGEXP: chr  "K" "K" "K" "K" ...
    ##  $ CROPDMG   : num  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ CROPDMGEXP: chr  NA NA NA NA ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

There were plenty of missing values, that were introduced as a result of
the in-record validation procedure for the variables *EVTYPE*,
*PROPDMGEXP* and *CROPDMGEXP*, but the number of distinct values didn’t
indicate any more the presence of obvious abnormalities.

    # Create a kable to highlight some facts 
    # about the table with the in-record validated data.
    kable(
      x = data.table(
        "Variable" = names(in_record_validated_data),
        "Number of Distinct Values" = vapply(
          X = in_record_validated_data, 
          FUN = function(x) length(unique(x[!is.na(x)])), 
          FUN.VALUE = integer(1)
        ),
        "Number of NAs" = vapply(
          X = in_record_validated_data, 
          FUN = function(x) sum(is.na(x)), 
          FUN.VALUE = integer(1)),
        "Percentage of NAs" = 
          vapply(
            X = in_record_validated_data, 
            FUN = function(x) mean(is.na(x)), 
            FUN.VALUE =double(1))
      ),
      caption = "Table 6.4.5-1: Facts about the table with in-record validated data."
    ) %>% 
      kable_styling(
        bootstrap_options = c(
          "striped", "hover", "condensed", "responsive", "bordered"
          ), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = paste0(
          "The table with the in-record validated data contained 9 variables ", 
          "and 144826 observations."
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.4.5-1: Facts about the table with in-record validated data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Variable
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Distinct Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of NAs
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Percentage of NAs
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
REFNUM
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_DATE
</td>
<td style="text-align:right;">
3746
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
EVTYPE
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
0.2263061
</td>
</tr>
<tr>
<td style="text-align:left;">
FATALITIES
</td>
<td style="text-align:right;">
31
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
INJURIES
</td>
<td style="text-align:right;">
101
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMG
</td>
<td style="text-align:right;">
1162
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMGEXP
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
4158
</td>
<td style="text-align:right;">
0.0287103
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMG
</td>
<td style="text-align:right;">
269
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMGEXP
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
55041
</td>
<td style="text-align:right;">
0.3800492
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The table with the in-record validated data contained 9
variables and 144826 observations.
</td>
</tr>
</tfoot>
</table>
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

<font size="3"><u><strong>Summary</strong></u></font>

In this stage of data processing procedure, an attempt was made to
maximize the amount of available information for the analysis, by
imputing some of the missing values that exist at the table with the
in-record validated data with plausible values.

There were 3 variables (*EVTYPE*, *PROPDMGEXP* and *CROPDMGEXP*) that
contained NAs, all of which were introduced through the [in-record data
validation stage](#ind-6-4--Conduct-In-Record-Data-Validation).

Via a conservative deterministic approach which aimed to retrieve the
missing values only for the cases that there were almost no doubt about
the values that were imputed, the majority of those entries got
successfully restored.

However it is highlighted that for the variable *EVTYPE*, there is no
guarantee that the values imputed are error-free, due to the fact that
the associations were made based on the invalid values found at the
table with the target data subset, that were substituted by NAs and the
information available in [NATIONAL WEATHER SERVICE INSTRUCTION 10-1605,
AUGUST 17,
2007](https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf)
(at chapter 7)\*  
by the analyst who has **no expertise neither on weather nor in
meteorology**.

On the other hand, the missing values that were imputed for the
variables *PROPDMGEXP* and *CROPDMGEXP* are almost certainly correct
(and even if they are not, it didn’t affect in any significant way the
results of the analysis as they all correspond to observations that
resulted in 0 property and crop damage respectively while the analysis
focused on the observations for the weather events that caused non-zero
harm).

    # Create a dummy table by coping the table with the in-record validated data 
    # at which the missing values for the variable EVTYPE, PROPDMGEXP and CROPDMGEXP 
    # will be imputed to get the table with the imputed data.
    imputed_data <- copy(in_record_validated_data)

<font size="3"><u><strong>Steps</strong></u></font>

-   [6.5.1 Impute missing values at the variable
    EVTYPE](#ind-6-5-1--Impute-missing-values-at-the-variable-EVTYPE)
    -   Imputes the missing values at the variable EVTYPE with plausible
        substitutions based on the invalid values they corresponded:
        -   [6.5.1.1 Examine the invalid values from the variable
            EVTYPE](#ind-6-5-1-1--Examine-the-invalid-values-from-the-variable-EVTYPE)
            -   Examine the invalid values that have been substituted by
                NAs.  
        -   [6.5.1.2 Associate plausible substitutions to the invalid
            values from the variable
            EVTYPE](#ind-6-5-1-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-EVTYPE)
            -   Associated the invalid values with plausible
                substitutions.  
        -   [6.5.1.3 Identify the imputable missing values at the
            variable
            EVTYPE](#ind-6-5-1-3--Identify-the-imputable-missing-values-at-the-variable-EVTYPE)
            -   Identified the imputable missing values according to
                associations by their key value.  
        -   [6.5.1.4 Substitute the imputable missing values at the
            variable
            EVTYPE](#ind-6-5-1-4--Substitute-the-imputable-missing-values-at-the-variable-EVTYPE)
            -   Substituted the imputable missing values with valid
                ones.  
-   [6.5.2 Impute missing values at the variable
    PROPDMGEXP](#ind-6-5-2--Impute-missing-values-at-the-variable-PROPDMGEXP)
    -   Imputes the missing values at the variable PROPDMGEXP with
        plausible substitutions based on the invalid values they
        corresponded:
        -   [6.5.2.1 Examine the invalid values from the variable
            PROPDMGEXP](#ind-6-5-2-1--Examine-the-invalid-values-from-the-variable-PROPDMGEXP)
            -   Examine the invalid values that have been substituted by
                NAs.  
        -   [6.5.2.2 Associate plausible substitutions to the invalid
            values from the variable
            PROPDMGEXP](#ind-6-5-2-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-PROPDMGEXP)
            -   Associated the invalid values with plausible
                substitutions.  
        -   [6.5.2.3 Identify the imputable missing values at the
            variable
            PROPDMGEXP](#ind-6-5-2-3--Identify-the-imputable-missing-values-at-the-variable-PROPDMGEXP)
            -   Identified the imputable missing values according to
                associations by their key value.  
        -   [6.5.2.4 Substitute the imputable missing values at the
            variable
            PROPDMGEXP](#ind-6-5-2-4--Substitute-the-imputable-missing-values-at-the-variable-PROPDMGEXP)
            -   Substituted the imputable missing values with valid
                ones.  
-   [6.5.3 Impute missing values at the variable
    CROPDMGEXP](#ind-6-5-3--Impute-missing-values-at-the-variable-CROPDMGEXP)
    -   Imputes the missing values at the variable CROPDMGEXP with
        plausible substitutions based on the invalid values they
        corresponded:
        -   [6.5.3.1 Examine the invalid values from the variable
            CROPDMGEXP](#ind-6-5-3-1--Examine-the-invalid-values-from-the-variable-CROPDMGEXP)
            -   Examine the invalid values that have been substituted by
                NAs.  
        -   [6.5.3.2 Associate plausible substitutions to the invalid
            values from the variable
            CROPDMGEXP](#ind-6-5-3-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-CROPDMGEXP)
            -   Associated the invalid values with plausible
                substitutions.  
        -   [6.5.3.3 Identify the imputable missing values at the
            variable
            CROPDMGEXP](#ind-6-5-3-3--Identify-the-imputable-missing-values-at-the-variable-CROPDMGEXP)
            -   Identified the imputable missing values according to
                associations by their key value.  
        -   [6.5.3.4 Substitute the imputable missing values at the
            variable
            CROPDMGEXP](#ind-6-5-3-4--Substitute-the-imputable-missing-values-at-the-variable-CROPDMGEXP)
            -   Substituted the imputable missing values with valid
                ones.  
-   [6.5.4 Conduct post validation for the table with the imputed
    data](#ind-6-5-4--Conduct-post-validation-for-the-table-with-the-imputed-data)
    -   Ensures that all values of each variable at the table with the
        imputed data are valid.  
-   [6.5.5 Overview of the table with the imputed
    data](#ind-6-5-5--Overview-of-the-table-with-the-imputed-data)
    -   Presents some basic facts about the table with the imputed data.

<br>

<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.5.1 Impute missing values at the variable EVTYPE

The invalid values for the variable EVTYPE at the table with the target
data subset (before they got substituted by NAs at the [in-record data
validation stage](#ind-6-4--Conduct-In-Record-Data-Validation)) were
examined and associations were made to plausible valid substitutions.
Those observations with missing values that corresponded to successfully
associated plausible substitutions, were identified by their key values
and were imputed.

-   [6.5.1.1 Examine the invalid values from the variable
    EVTYPE](#ind-6-5-1-1--Examine-the-invalid-values-from-the-variable-EVTYPE)
    -   Examine the invalid values that have been substituted by NAs.  
-   [6.5.1.2 Associate plausible substitutions to the invalid values
    from the variable
    EVTYPE](#ind-6-5-1-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-EVTYPE)
    -   Associated the invalid values with plausible substitutions.  
-   [6.5.1.3 Identify the imputable missing values at the variable
    EVTYPE](#ind-6-5-1-3--Identify-the-imputable-missing-values-at-the-variable-EVTYPE)
    -   Identified the imputable missing values according to
        associations by their key value.  
-   [6.5.1.4 Substitute the imputable missing values at the variable
    EVTYPE](#ind-6-5-1-4--Substitute-the-imputable-missing-values-at-the-variable-EVTYPE)
    -   Substituted the imputable missing values with valid ones.

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

#### 6.5.1.1 Examine the invalid values from the variable EVTYPE

For the variable *EVTYPE* at the table with the in-record validated
data, out of the total 144826 observations 32775 (22.63%) were NAs.

    # Create a kable to present information on the missing values 
    # for the variable EVTYPE at the table with the imputed data.
    kable(
      x = data.table(
        "Variable" = "EVTYPE",
        "Total Number of Values" = length(in_record_validated_data$EVTYPE),
        "Number of Missing Values" = sum(is.na(in_record_validated_data$EVTYPE)),
        "Percentage of Missing Values" = mean(is.na(in_record_validated_data$EVTYPE))
      ),
      caption = paste0(
        "Table 6.5.1.1-1: ",
        "Information on the missing values ", 
        "for the variable EVTYPE at the table with the target data subset."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.1.1-1: Information on the missing values for the variable
EVTYPE at the table with the target data subset.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Variable
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Total Number of Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Missing Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Percentage of Missing Values
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
EVTYPE
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
0.2263061
</td>
</tr>
</tbody>
</table>
These 32775 missing values at the table with the in-record validated
data, corresponded to 51 distinct invalid entries at the table with the
target data subset before they got substituted by NAs at the [in-record
data validation stage](#ind-6-4--Conduct-In-Record-Data-Validation).

    # Create a kable to presents information on the distinct invalid values 
    # for the variable EVTYPE at the table with the target data subset 
    # that were substituted by NAs at the in-record validation stage.
    kable(
      x = target_data_subset[
        is.na(in_record_validated_data$EVTYPE), .N, by = EVTYPE][
          order(N,decreasing = TRUE)],
      col.names = c("Invalid Values", "Number of Occurrences"),
      caption = paste0(
        "Table 6.5.1.1-2: ",
        "Information on the distinct invalid values ", 
        "for the variable EVTYPE at the table with the target data subset ",
        "which got substituted by NAs at the in-record validation stage."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.1.1-2: Information on the distinct invalid values for the
variable EVTYPE at the table with the target data subset which got
substituted by NAs at the in-record validation stage.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Invalid Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Occurrences
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
TSTM WIND
</td>
<td style="text-align:right;">
31453
</td>
</tr>
<tr>
<td style="text-align:left;">
LANDSLIDE
</td>
<td style="text-align:right;">
189
</td>
</tr>
<tr>
<td style="text-align:left;">
WINTER WEATHER/MIX
</td>
<td style="text-align:right;">
139
</td>
</tr>
<tr>
<td style="text-align:left;">
WILD/FOREST FIRE
</td>
<td style="text-align:right;">
132
</td>
</tr>
<tr>
<td style="text-align:left;">
RIP CURRENTS
</td>
<td style="text-align:right;">
115
</td>
</tr>
<tr>
<td style="text-align:left;">
URBAN/SML STREAM FLD
</td>
<td style="text-align:right;">
115
</td>
</tr>
<tr>
<td style="text-align:left;">
MARINE TSTM WIND
</td>
<td style="text-align:right;">
109
</td>
</tr>
<tr>
<td style="text-align:left;">
TSTM WIND/HAIL
</td>
<td style="text-align:right;">
108
</td>
</tr>
<tr>
<td style="text-align:left;">
STORM SURGE
</td>
<td style="text-align:right;">
86
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAVY SURF/HIGH SURF
</td>
<td style="text-align:right;">
50
</td>
</tr>
<tr>
<td style="text-align:left;">
HURRICANE
</td>
<td style="text-align:right;">
38
</td>
</tr>
<tr>
<td style="text-align:left;">
LIGHT SNOW
</td>
<td style="text-align:right;">
38
</td>
</tr>
<tr>
<td style="text-align:left;">
FOG
</td>
<td style="text-align:right;">
32
</td>
</tr>
<tr>
<td style="text-align:left;">
WIND
</td>
<td style="text-align:right;">
26
</td>
</tr>
<tr>
<td style="text-align:left;">
EXTREME COLD
</td>
<td style="text-align:right;">
24
</td>
</tr>
<tr>
<td style="text-align:left;">
DRY MICROBURST
</td>
<td style="text-align:right;">
17
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAVY SURF
</td>
<td style="text-align:right;">
12
</td>
</tr>
<tr>
<td style="text-align:left;">
MIXED PRECIPITATION
</td>
<td style="text-align:right;">
12
</td>
</tr>
<tr>
<td style="text-align:left;">
COASTAL FLOODING
</td>
<td style="text-align:right;">
11
</td>
</tr>
<tr>
<td style="text-align:left;">
ASTRONOMICAL HIGH TIDE
</td>
<td style="text-align:right;">
8
</td>
</tr>
<tr>
<td style="text-align:left;">
STRONG WINDS
</td>
<td style="text-align:right;">
6
</td>
</tr>
<tr>
<td style="text-align:left;">
SNOW
</td>
<td style="text-align:right;">
5
</td>
</tr>
<tr>
<td style="text-align:left;">
FREEZE
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
SMALL HAIL
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
GUSTY WINDS
</td>
<td style="text-align:right;">
4
</td>
</tr>
<tr>
<td style="text-align:left;">
MUDSLIDE
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
HIGH SEAS
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
SNOW SQUALLS
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
EXTREME WINDCHILL
</td>
<td style="text-align:right;">
3
</td>
</tr>
<tr>
<td style="text-align:left;">
WINTER WEATHER MIX
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
FALLING SNOW/ICE
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
ROUGH SEAS
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
LIGHT FREEZING RAIN
</td>
<td style="text-align:right;">
2
</td>
</tr>
<tr>
<td style="text-align:left;">
LATE SEASON SNOW
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
THUNDERSTORM
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
ROGUE WAVE
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
NON-TSTM WIND
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
NON TSTM WIND
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
OTHER
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
LAKE EFFECT SNOW
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
MUD SLIDE
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
BRUSH FIRE
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
BLOWING DUST
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
GUSTY WIND
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
HIGH WATER
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
HIGH SURF ADVISORY
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
HAZARDOUS SURF
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
COLD WEATHER
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
WHIRLWIND
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
ICE ON ROAD
</td>
<td style="text-align:right;">
1
</td>
</tr>
<tr>
<td style="text-align:left;">
DROWNING
</td>
<td style="text-align:right;">
1
</td>
</tr>
</tbody>
</table>
<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-1-1--Examine-the-invalid-values-from-the-variable-EVTYPE)</font>  
<font size="1">[back to start of this
subsection](#ind-6-5-1--Impute-missing-values-at-the-variable-EVTYPE)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.5.1.2 Associate plausible substitutions to the invalid values from the variable EVTYPE

To impute the corresponding NAs associations were made from the invalid
entries to defined weather event types.

-   Some of the associations were based solely on the invalid values,
    which directly corresponded to defined event types as they seem to
    be either typos (e.g. “RIP CURRENTS” instead of “RIP CURRENT”) or
    acronyms of the expected values (e.g. “TSTM WIND” instead of
    “THUNDERSTORM WIND”).  
-   While for others the description for each one of the 48 event types
    that was available in [NATIONAL WEATHER SERVICE INSTRUCTION 10-1605,
    AUGUST 17,
    2007](https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf)
    *(at chapter 7)* was taken into account for cases where a variation
    of the defined value had been supplied (e.g. “URBAN/SML STREAM FLD”
    instead of “HEAVY RAIN”).

**Nevertheless it is stressed that the associations mainly depend on
‘common sense’ judgment (instead of solid professional expertise) and in
no way they are guaranteed to be error-free, despite the best efforts
made to impute only the most obvious cases.**

In total, 28 distinct invalid values were associated to some of the 48
defined weather event types:

<div class = "row">

<div class = "col-md-6">
1.  ‘COASTAL FLOODING’ –&gt; **COASTAL FLOOD**  
2.  ‘COLD WEATHER’ –&gt; **COLD/WIND CHILL**  
3.  ‘LANDSLIDE’ –&gt; **DEBRIS FLOW**  
4.  ‘MUDSLIDE’ –&gt; **DEBRIS FLOW**  
5.  ‘MUD SLIDE’ –&gt; **DEBRIS FLOW**  
6.  ‘DROWNING’ –&gt; **DROUGHT**  
7.  ‘EXTREME COLD’ –&gt; **EXTREME COLD/WIND CHILL**  
8.  ‘EXTREME WINDCHILL’ –&gt; **EXTREME COLD/WIND CHILL**  
9.  ‘FREEZE’ –&gt; **FROST/FREEZE**  
10. ‘SMALL HAIL’ –&gt; **HAIL**  
11. ‘URBAN/SML STREAM FLD’ –&gt; **HEAVY RAIN**  
12. ‘HEAVY SURF/HIGH SURF’ –&gt; **HIGH SURF**  
13. ‘HEAVY SURF’ –&gt; **HIGH SURF**  
14. ‘HAZARDOUS SURF’ –&gt; **HIGH SURF**  
    </div>

1.  ’ HIGH SURF ADVISORY’ –&gt; **HIGH SURF**  
2.  ‘HURRICANE’ –&gt; **HURRICANE/TYPHOON**  
3.  ‘LAKE EFFECT SNOW’ –&gt; **LAKE-EFFECT SNOW**  
4.  ‘MARINE TSTM WIND’ –&gt; **MARINE THUNDERSTORM WIND**  
5.  ‘RIP CURRENTS’ –&gt; **RIP CURRENT**  
6.  ‘STORM SURGE’ –&gt; **STORM SURGE/TIDE**  
7.  ‘STRONG WINDS’ –&gt; **STRONG WIND**  
8.  ‘TSTM WIND’ –&gt; **THUNDERSTORM WIND**  
9.  ‘DRY MICROBURST’ –&gt; **THUNDERSTORM WIND**  
10. ‘THUNDERSTORM’ –&gt; **THUNDERSTORM WIND**  
11. ‘WILD/FOREST FIRE’ –&gt; **WILDFIRE**  
12. ‘BRUSH FIRE’ –&gt; **WILDFIRE**  
13. ‘WINTER WEATHER/MIX’ –&gt; **WINTER WEATHER**  
14. ‘WINTER WEATHER MIX’ –&gt; **WINTER WEATHER**  
    </div>

*( The 15th invalid value contained **3 spaces** before the ‘HIGH SURF
ADVISORY’, but for some unknown reason after rendering it seems to be
only 1 space.)*

    # Create a list the associations made from the invalid entries 
    # for the variable EVTYPE at the table with the target data subset 
    # to defined weather event types.
    associations_on_defined_event_types <- list(
      "COASTAL FLOOD" = c("COASTAL FLOODING"),
      "COLD/WIND CHILL" = c("COLD WEATHER"),
      "DEBRIS FLOW" = c("LANDSLIDE", "MUDSLIDE", "MUD SLIDE"),
      "DROUGHT" = c("DROWNING"),
      "EXTREME COLD/WIND CHILL" = c("EXTREME COLD", "EXTREME WINDCHILL"),
      "FROST/FREEZE" = c("FREEZE"),
      "HAIL" = c("SMALL HAIL"),
      "HEAVY RAIN" = c("URBAN/SML STREAM FLD"),
      "HIGH SURF" = c(
        "HEAVY SURF/HIGH SURF", "HEAVY SURF", "HAZARDOUS SURF",
        "   HIGH SURF ADVISORY"),
      "HURRICANE/TYPHOON" = c("HURRICANE"),
      "LAKE-EFFECT SNOW" = c("LAKE EFFECT SNOW"),
      "MARINE THUNDERSTORM WIND" = c("MARINE TSTM WIND"),
      "RIP CURRENT" = c("RIP CURRENTS"),
      "STORM SURGE/TIDE" = c("STORM SURGE"),
      "STRONG WIND" = c("STRONG WINDS"),
      "THUNDERSTORM WIND" = c("TSTM WIND", "DRY MICROBURST", "THUNDERSTORM"),
      "WILDFIRE" = c("WILD/FOREST FIRE", "BRUSH FIRE"),
      "WINTER WEATHER" = c("WINTER WEATHER/MIX", "WINTER WEATHER MIX")
    )

On the other hand there were 23 distinct invalid values were not
possible to get associated (with relatively high confidence) with any of
the 48 defined event types:

<div class = "row">

<div class = "col-md-6">
1.  ‘FOG’  
2.  ‘LIGHT SNOW’  
3.  ‘WIND’  
4.  ‘LIGHT FREEZING RAIN’  
5.  ‘MIXED PRECIPITATION’  
6.  ‘ASTRONOMICAL HIGH TIDE’  
7.  ‘GUSTY WINDS’  
8.  ‘SNOW’  
9.  ‘HIGH SEAS’  
10. ‘ROUGH SEAS’  
11. ‘SNOW SQUALLS’  
12. ‘FALLING SNOW/ICE’  
    </div>

1.  ‘GUSTY WIND’  
2.  ‘HIGH WATER’  
3.  ‘OTHER’  
4.  ‘BLOWING DUST’  
5.  ‘ICE ON ROAD’  
6.  ‘LATE SEASON SNOW’  
7.  ‘NON TSTM WIND’  
8.  ‘NON-TSTM WIND’  
9.  ‘ROGUE WAVE’  
10. ‘WHIRLWIND’  
11. ‘TSTM WIND/HAIL’  
    </div>

    # Create a list with the distinct invalid values of the variable EVTYPE 
    # at the table with target data subset that couldn't be safely associated 
    # with any of defined weather event types.
    ambiguous_entries_on_EVTYPE <- list(
      "FOG", 
      "LIGHT SNOW", 
      "WIND", 
      "LIGHT FREEZING RAIN",
      "MIXED PRECIPITATION", 
      "ASTRONOMICAL HIGH TIDE", 
      "GUSTY WINDS", 
      "SNOW",
      "HIGH SEAS", 
      "ROUGH SEAS", 
      "SNOW SQUALLS",
      "FALLING SNOW/ICE", 
      "GUSTY WIND", 
      "HIGH WATER", 
      "OTHER", 
      "BLOWING DUST",
      "ICE ON ROAD", 
      "LATE SEASON SNOW",
      "NON TSTM WIND", 
      "NON-TSTM WIND", 
      "ROGUE WAVE",
      "WHIRLWIND", 
      "TSTM WIND/HAIL"
    )

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-1-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-EVTYPE)</font>  
<font size="1">[back to start of this
subsection](#ind-6-5-1--Impute-missing-values-at-the-variable-EVTYPE)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.5.1.3 Identify the imputable missing values at the variable EVTYPE

After having established the [associations for the invalid entries of
the variable
*EVTYPE*](#ind-6-5-1-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-EVTYPE)
the observations that contained values that could be retrieved were
identified.

    # Create a validator to identify which observations for the variable EVTYPE 
    # contain a missing value that correspond to one of the invalid values 
    # at the table with target data subset that can be retrieved 
    # according to the list with the association. 
    V_________identification_test_of_imputable_missing_values_for_EVTYPE <- validator(
      "COASTAL FLOOD" = EVTYPE %in% associations_on_defined_event_types[["COASTAL FLOOD"]],
      "COLD WIND CHILL" = EVTYPE %in% associations_on_defined_event_types[["COLD/WIND CHILL"]],
      "DEBRIS FLOW" = EVTYPE %in% associations_on_defined_event_types[["DEBRIS FLOW"]],
      "DROUGHT" = EVTYPE %in% associations_on_defined_event_types[["DROUGHT"]],
      "EXTREME COLD/WIND CHILL" = EVTYPE %in% associations_on_defined_event_types[["EXTREME COLD/WIND CHILL"]],
      "FROST/FREEZE" = EVTYPE %in% associations_on_defined_event_types[["FROST/FREEZE"]],
      "HAIL" = EVTYPE %in% associations_on_defined_event_types[["HAIL"]],
      "HEAVY RAIN" = EVTYPE %in% associations_on_defined_event_types[["HEAVY RAIN"]],
      "HIGH SURF" = EVTYPE %in% associations_on_defined_event_types[["HIGH SURF"]],
      "HURRICANE/TYPHOON" = EVTYPE %in% associations_on_defined_event_types[["HURRICANE/TYPHOON"]],
      "LAKE-EFFECT SNOW" = EVTYPE %in% associations_on_defined_event_types[["LAKE-EFFECT SNOW"]],
      "MARINE THUNDERSTORM WIND" = EVTYPE %in% associations_on_defined_event_types[["MARINE THUNDERSTORM WIND"]],
      "RIP CURRENT" = EVTYPE %in% associations_on_defined_event_types[["RIP CURRENT"]],
      "STORM SURGE/TIDE" = EVTYPE %in% associations_on_defined_event_types[["STORM SURGE/TIDE"]],
      "STRONG WIND" = EVTYPE %in% associations_on_defined_event_types[["STRONG WIND"]],
      "THUNDERSTORM WIND" = EVTYPE %in% associations_on_defined_event_types[["THUNDERSTORM WIND"]],
      "WILDFIRE" = EVTYPE %in% associations_on_defined_event_types[["WILDFIRE"]],
      "WINTER WEATHER" = EVTYPE %in% associations_on_defined_event_types[["WINTER WEATHER"]]
    )

    # Confront the table with the target data subset with the validator with 
    # the criteria for the association of invalid entries for the variable EVTYPE.
    CF_________identification_test_of_imputable_missing_values_for_EVTYPE <- confront(
      dat = target_data_subset[is.na(in_record_validated_data[["EVTYPE"]])],
      V_________identification_test_of_imputable_missing_values_for_EVTYPE
    )

Out of the total 32775 missing values for the variable *EVTYPE* at the
in-record validation data table, 32520 (99.22%) could be imputed while
for only 255 (0.78%) values it wasn’t possible to safely associate them
with some of the 48 defined event types.

    # Create a kable to presents information 
    # on the imputable and not imputable missing values at the variable EVTYPE.
    kable(
      x = data.table(
        "variable" = "EVTYPE",
        "n_missing" = sum(is.na(in_record_validated_data$EVTYPE)),
        "n_imputable" = sum(
          vapply(
            X = CF_________identification_test_of_imputable_missing_values_for_EVTYPE[["._value"]],
            FUN = sum,
            FUN.VALUE = integer(1)
          )
        )
      )[,"n_not_imputable" := n_missing - n_imputable][
          , "perc_imputable" := n_imputable/n_missing][
            ,"perc_not_imputable" := n_not_imputable/n_missing], 
      col.names = c(
        "Variable",
        "Number of Missing Values",
        "Number of Imputable Missing Values",
        "Number of Not Imputable Missing Values",
        "Percentage of Imputable Missing Values",
        "Percentage of Not Imputable Missing Values"
      ),
      caption = paste0(
        "Table 6.5.1.3-1: ",
        "Information on the imputable and not imputable missing values ", 
        "at the variable EVTYPE."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.1.3-1: Information on the imputable and not imputable missing
values at the variable EVTYPE.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Variable
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Missing Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Imputable Missing Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Not Imputable Missing Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Percentage of Imputable Missing Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Percentage of Not Imputable Missing Values
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
EVTYPE
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
32520
</td>
<td style="text-align:right;">
255
</td>
<td style="text-align:right;">
0.9922197
</td>
<td style="text-align:right;">
0.0077803
</td>
</tr>
</tbody>
</table>
The imputed missing values were distributed according to the
associations at 18 defined event types.

    # Create a kable to presents the results from the identification 
    # of the imputable missing values 
    # by each of the associated defined weather event types. 
    kable(
      x = summary(CF_________identification_test_of_imputable_missing_values_for_EVTYPE)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ],
      caption = paste0(
        "Table 6.5.1.3-2: ",
        "Information on the number of invalid values ",
        "that can be imputed by one the 48 defined weather event types ",
        "for the variable EVTYPE at the table with the imputed data."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = paste0(
          "The subset of the 32775 observations with missing values ", "\n",
          "was used for the identification of imputable invalid values."
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.1.3-2: Information on the number of invalid values that can be
imputed by one the 48 defined weather event types for the variable
EVTYPE at the table with the imputed data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
COASTAL.FLOOD
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
11
</td>
<td style="text-align:right;">
32764
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
COLD.WIND.CHILL
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
32774
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
DEBRIS.FLOW
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
193
</td>
<td style="text-align:right;">
32582
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
DROUGHT
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
32774
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
EXTREME.COLD.WIND.CHILL
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
27
</td>
<td style="text-align:right;">
32748
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
FROST.FREEZE
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
32771
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
HAIL
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
32771
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAVY.RAIN
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
115
</td>
<td style="text-align:right;">
32660
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
HIGH.SURF
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
64
</td>
<td style="text-align:right;">
32711
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
HURRICANE.TYPHOON
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:right;">
32737
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
LAKE.EFFECT.SNOW
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
32774
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
MARINE.THUNDERSTORM.WIND
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
109
</td>
<td style="text-align:right;">
32666
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
RIP.CURRENT
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
115
</td>
<td style="text-align:right;">
32660
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
STORM.SURGE.TIDE
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
86
</td>
<td style="text-align:right;">
32689
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
STRONG.WIND
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
6
</td>
<td style="text-align:right;">
32769
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
THUNDERSTORM.WIND
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
31471
</td>
<td style="text-align:right;">
1304
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
WILDFIRE
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
133
</td>
<td style="text-align:right;">
32642
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
WINTER.WEATHER
</td>
<td style="text-align:right;">
32775
</td>
<td style="text-align:right;">
141
</td>
<td style="text-align:right;">
32634
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The subset of the 32775 observations with missing values
<br>was used for the identification of imputable invalid values.
</td>
</tr>
</tfoot>
</table>
The key value (denoted by the *REFNUM* variable) for the observations
that successfully got associated with a defined weather event type was
identified.

    # Identify the missing values that can be imputed 
    # with one of the defined event type values 
    # by their key value (denoted by the variable REFNUM)
    criterion_by_REFNUM_____imputable_entries_for_EVTYPE <- lapply(
      X = CF_________identification_test_of_imputable_missing_values_for_EVTYPE[["._value"]],
      FUN = function(x) in_record_validated_data[is.na(EVTYPE), REFNUM][x]
    ) 

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-1-3--Identify-the-imputable-missing-values-at-the-variable-EVTYPE)</font>  
<font size="1">[back to start of this
subsection](#ind-6-5-1--Impute-missing-values-at-the-variable-EVTYPE)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.5.1.4 Substitute the imputable missing values at the variable EVTYPE

The associated value for each of the 28 distinct invalid values at the
variable *EVTYPE* was imputed at the corresponding observations which
were identified by their key value.

    # Impute the retrievable missing values at the EVTYPE variable 
    # with the defined values
    for (i in seq_along(criterion_by_REFNUM_____imputable_entries_for_EVTYPE)) {
      set(
        x = imputed_data,
        i = which(
          imputed_data$REFNUM %in%
            criterion_by_REFNUM_____imputable_entries_for_EVTYPE[[i]],
        ),
        j = "EVTYPE",
        value = names(associations_on_defined_event_types)[i]
      )
    }

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-1-4--Substitute-the-imputable-missing-values-at-the-variable-EVTYPE)</font>  
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

The invalid values for the variable PROPDMGEXP at the table with the
target data subset (before they got substituted by NAs at the [in-record
data validation stage](#ind-6-4--Conduct-In-Record-Data-Validation))
were examined and associations were made to plausible valid
substitutions. Those observations with missing values that corresponded
to successfully associated plausible substitutions, were identified by
their key values and were imputed.

-   [6.5.2.1 Examine the invalid values from the variable
    PROPDMGEXP](#ind-6-5-2-1--Examine-the-invalid-values-from-the-variable-PROPDMGEXP)
    -   Examine the invalid values that have been substituted by NAs.  
-   [6.5.2.2 Associate plausible substitutions to the invalid values
    from the variable
    PROPDMGEXP](#ind-6-5-2-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-PROPDMGEXP)
    -   Associated the invalid values with plausible substitutions.  
-   [6.5.2.3 Identify the imputable missing values at the variable
    PROPDMGEXP](#ind-6-5-2-3--Identify-the-imputable-missing-values-at-the-variable-PROPDMGEXP)
    -   Identified the imputable missing values according to
        associations by their key value.  
-   [6.5.2.4 Substitute the imputable missing values at the variable
    PROPDMGEXP](#ind-6-5-2-4--Substitute-the-imputable-missing-values-at-the-variable-PROPDMGEXP)
    -   Substituted the imputable missing values with valid ones.

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

#### 6.5.2.1 Examine the invalid values from the variable PROPDMGEXP

For the variable *PROPDMGEXP*, at the table with the in-record validated
data, out of the total 144826 observations, 4158 (2.87%) were NAs.

    # Create a kable to present information on the missing values 
    # for the variable PROPDMGEXP at the table with the in-record validated data.
    kable(
      x = data.table(
        "Variable" = "PROPDMGEXP",
        "Total Number of Values" = length(in_record_validated_data$PROPDMGEXP),
        "Number of Missing Values" = sum(is.na(in_record_validated_data$PROPDMGEXP)),
        "Percentage of Missing Values" = mean(is.na(in_record_validated_data$PROPDMGEXP))
      ),
      caption = paste0(
        "Table 6.5.2.1-1: ",
        "Information on missing values for the variable PROPDMGEXP ", 
        "at the table with the in-record validated data."
        )
      
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.2.1-1: Information on missing values for the variable
PROPDMGEXP at the table with the in-record validated data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Variable
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Total Number of Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Missing Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Percentage of Missing Values
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
PROPDMGEXP
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
4158
</td>
<td style="text-align:right;">
0.0287103
</td>
</tr>
</tbody>
</table>
Those 4158 missing values at the table with the in-record validated
data, corresponded to empty values at the table with the target data
subset before they got substituted by NAs at the [in-record data
validation stage](#ind-6-4--Conduct-In-Record-Data-Validation).

    # Create a kable to presents the distinct invalid values 
    # of the variable PROPDMGEXP at the table with the target data subset 
    # that were substituted by NAs at the in-record data validation stage.
    kable(
      x = target_data_subset[
        REFNUM %in% in_record_validated_data[
          is.na(PROPDMGEXP), REFNUM
          ],
        list(
          "distinct_values" = PROPDMGEXP
        )
        ][
          ,
          .N,
          distinct_values
          ],
      col.names = c(
        "Distinct Values", 
        "Number of Observations"
      ),
      caption = paste0(
        "Table 6.5.2.1-2: ",
        "The distinct invalid values for the variable 'PROPDMGEXP' ", 
        "that were substituted by NAs at the in-record data validation stage."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.2.1-2: The distinct invalid values for the variable
‘PROPDMGEXP’ that were substituted by NAs at the in-record data
validation stage.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Distinct Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Observations
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
4158
</td>
</tr>
</tbody>
</table>
<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-2-1--Examine-the-invalid-values-from-the-variable-PROPDMGEXP)</font>  
<font size="1">[back to start of this
subsection](#ind-6-5-2--Impute-missing-values-at-the-variable-PROPDMGEXP)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.5.2.2 Associate plausible substitutions to the invalid values from the variable PROPDMGEXP

A single association (which works perfectly as shown in the [next
subsubsection](#ind-6-5-2-3--Identify-the-imputable-missing-values-at-the-variable-PROPDMGEXP)
was made for the missing values that corresponded to empty values:

-   The entries that correspond to property damage with zero magnitude,
    (denoted by the value 0 at the variable *PROPDMG*) could be
    associated with any of the valid values (“K”, “M”, “B”).

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-2-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-PROPDMGEXP)</font>  
<font size="1">[back to start of this
subsection](#ind-6-5-2--Impute-missing-values-at-the-variable-PROPDMGEXP)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.5.2.3 Identify the imputable missing values at the variable PROPDMGEXP

The observations that satisfied the criterion imposed by the
[association made for the invalid values from the variable
*PROPDMGEXP*](#ind-6-5-2-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-PROPDMGEXP)
were identified.

    # Create a validator with the criterion to identify 
    # the imputable missing values for the variable PROPDMGEXP.
    V_____imputable_missing_values_at_the_variable_PROPDMGEXP <- validator(
      "imputable_missing_values_at_PROPDMGEXP" = ( 
        (PROPDMG == 0) & is.na(PROPDMGEXP) 
      )
    )

    # Confront the subset of observations with missing values 
    # in the variable PROPDMGEXP at the in-record validated data 
    # with the validator with the criterion to identify 
    # the imputable missing values at the variable PROPDMGEXP. 
    CF_____imputable_missing_values_at_the_variable_PROPDMGEXP <- 
      confront(
        dat = in_record_validated_data[is.na(PROPDMGEXP)],
        V_____imputable_missing_values_at_the_variable_PROPDMGEXP
      )

All missing values at the variable *PROPDMGEXP* (4158 in total),
corresponded to observations for which the magnitude of property damage
(denoted by the variable *PROPDMG*) was zero.

    # Create a kable to present the number of imputable missing values for the 
    # variable PROPDMGEXP at the table with the in-record validated data subset.
    kable(
      x = summary(CF_____imputable_missing_values_at_the_variable_PROPDMGEXP)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ],
      caption = paste0(
        "Table 6.5.2.3-1: ",
        "Results from identification of imputable missing values ", 
        "at the variable PROPDMGEXP."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = paste0(
          "The subset of the 4158 observations with missing values ", 
          "was used for the identification of imputable invalid values"
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.2.3-1: Results from identification of imputable missing values
at the variable PROPDMGEXP.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
imputable\_missing\_values\_at\_PROPDMGEXP
</td>
<td style="text-align:right;">
4158
</td>
<td style="text-align:right;">
4158
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The subset of the 4158 observations with missing values was
used for the identification of imputable invalid values
</td>
</tr>
</tfoot>
</table>
The key values (denoted by the variable *REFNUM*) of the observations
for which the missing values at the variable *PROPDMGEXP* could be
retrieved were identified.

    # Identify the observations for which the missing value 
    # at the variable PROPDMGEXP can be safely imputed, 
    # by their key value denoted by the variable REFNUM.
    criterion_by_REFNUM_____imputable_missing_values_at_the_variable_PROPDMGEXP <- 
      with(
        data = CF_____imputable_missing_values_at_the_variable_PROPDMGEXP[["._value"]],
        expr = in_record_validated_data[is.na(PROPDMGEXP), REFNUM]
      )

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-2-3--Identify-the-imputable-missing-values-at-the-variable-PROPDMGEXP)</font>  
<font size="1">[back to start of this
subsection](#ind-6-5-2--Impute-missing-values-at-the-variable-PROPDMGEXP)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.5.2.4 Substitute the imputable missing values at the variable PROPDMGEXP

The value *“K”* was imputed to all observations with imputable missing
values at the variable *PROPDMGEXP* (which were identified by their key
value).

    # Set the imputable missing values at the variable PROPDMGEXP 
    # with the value "K".
    set(
      x = imputed_data,
      i = which(
        imputed_data$REFNUM %in% 
          criterion_by_REFNUM_____imputable_missing_values_at_the_variable_PROPDMGEXP
      ),
      j = "PROPDMGEXP",
      value = "K"
    )

*(They could have been substituted by any of the valid values (“K”, “M”
or “B”) for the variable PROPDMGEXP without changing the fact that they
refer to 0$ property damage.)*

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-2-4--Substitute-the-imputable-missing-values-at-the-variable-PROPDMGEXP)</font>  
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

The invalid values for the variable PROPDMGEXP at the table with the
target data subset (before they got substituted by NAs at the [in-record
data validation stage](#ind-6-4--Conduct-In-Record-Data-Validation))
were examined and associations were made to plausible valid
substitutions. Those observations with missing values that corresponded
to successfully associated plausible substitutions, were identified by
their key values and were imputed.

-   [6.5.3.1 Examine the invalid values from the variable
    CROPDMGEXP](#ind-6-5-3-1--Examine-the-invalid-values-from-the-variable-CROPDMGEXP)
    -   Examine the invalid values that have been substituted by NAs.  
-   [6.5.3.2 Associate plausible substitutions to the invalid values
    from the variable
    CROPDMGEXP](#ind-6-5-3-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-CROPDMGEXP)
    -   Associated the invalid values with plausible substitutions.  
-   [6.5.3.3 Identify the imputable missing values at the variable
    CROPDMGEXP](#ind-6-5-3-3--Identify-the-imputable-missing-values-at-the-variable-CROPDMGEXP)
    -   Identified the imputable missing values according to
        associations by their key value.  
-   [6.5.3.4 Substitute the imputable missing values at the variable
    CROPDMGEXP](#ind-6-5-3-4--Substitute-the-imputable-missing-values-at-the-variable-CROPDMGEXP)
    -   Substituted the imputable missing values with valid ones.

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

#### 6.5.3.1 Examine the invalid values from the variable CROPDMGEXP

For the variable *CROPDMGEXP* at the table with the in-record validated
data, out of the total 144826 observations 55041 (38.00%) were NAs.

    # Create a kable to present information on the missing values 
    # for the variable CROPDMGEXP at the table with the in-record validated data.
    kable(
      x = data.table(
        "Variable" = "CROPDMGEXP",
        "Total Number of Values" = length(in_record_validated_data$CROPDMGEXP),
        "Number of Missing Values" = sum(is.na(in_record_validated_data$CROPDMGEXP)),
        "Percentage of Missing Values" = mean(is.na(in_record_validated_data$CROPDMGEXP))
      ),
      caption = paste0(
        "Table 6.5.3.1-1: ",
        "Information on missing values for the variable CROPDMGEXP ", 
        "at the table with the in-record validated data."
        )
      
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.3.1-1: Information on missing values for the variable
CROPDMGEXP at the table with the in-record validated data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Variable
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Total Number of Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Missing Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Percentage of Missing Values
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
CROPDMGEXP
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
55041
</td>
<td style="text-align:right;">
0.3800492
</td>
</tr>
</tbody>
</table>
Those 55041 missing values at the table with the in-record validated
data, corresponded to empty values at the table with the target data
subset before they got substituted by NAs at the [in-record data
validation stage](#ind-6-4--Conduct-In-Record-Data-Validation).

    # Create a kable to presents the distinct invalid values 
    # of the variable CROPDMGEXP at the table with the target data subset 
    # that were substituted by NAs at the in-record data validation stage.
    kable(
      x = target_data_subset[
        REFNUM %in% in_record_validated_data[
          is.na(CROPDMGEXP), REFNUM
          ],
        list(
          "distinct_values" = CROPDMGEXP
        )
        ][
          ,
          .N,
          distinct_values
          ],
      col.names = c(
        "Distinct Values", 
        "Number of Observations"
      ),
      caption = paste0(
        "Table 6.5.3.1-2: ",
        "The distinct invalid values for the variable 'CROPDMGEXP' ", 
        "that were substituted by NAs at the in-record data validation stage."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.3.1-2: The distinct invalid values for the variable
‘CROPDMGEXP’ that were substituted by NAs at the in-record data
validation stage.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Distinct Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Observations
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
</td>
<td style="text-align:right;">
55041
</td>
</tr>
</tbody>
</table>
<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-3-1--Examine-the-invalid-values-from-the-variable-CROPDMGEXP)</font>  
<font size="1">[back to start of this
subsection](#ind-6-5-3--Impute-missing-values-at-the-variable-CROPDMGEXP)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.5.3.2 Associate plausible substitutions to the invalid values from the variable CROPDMGEXP

A single association (which works perfectly as shown in the [next
subsubsection](#ind-6-5-3-3--Identify-the-imputable-missing-values-at-the-variable-CROPDMGEXP)
was made for the missing values that corresponded to empty values:

-   The entries that correspond to crop damage with zero magnitude,
    (denoted by the value 0 at the variable *CROPDMG*) could be
    associated with any of the valid values (“K”, “M”, “B”).

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-3-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-CROPDMGEXP)</font>  
<font size="1">[back to start of this
subsection](#ind-6-5-3--Impute-missing-values-at-the-variable-CROPDMGEXP)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.5.3.3 Identify the imputable missing values at the variable CROPDMGEXP

The observations that satisfied the criterion imposed by the
[association made for the invalid values from the variable
*CROPDMGEXP*](#ind-6-5-3-2--Associate-plausible-substitutions-to-the-invalid-values-from-the-variable-CROPDMGEXP)
were identified.

    # Create a validator with the criterion to identify 
    # the imputable missing values for the variable CROPDMGEXP.
    V_____imputable_missing_values_at_the_variable_CROPDMGEXP <- validator(
      "imputable_missing_values_at_CROPDMGEXP" = ( 
        (CROPDMG == 0) & is.na(CROPDMGEXP) 
      )
    )

    # Confront the subset of observations with missing values 
    # in the variable PROPDMGEXP at the in-record validated data 
    # with the validator with the criterion to identify 
    # the imputable missing values at the variable CROPDMGEXP. 
    CF_____imputable_missing_values_at_the_variable_CROPDMGEXP <- 
      confront(
        dat = in_record_validated_data[is.na(CROPDMGEXP)],
        V_____imputable_missing_values_at_the_variable_CROPDMGEXP
      )

The key values (denoted by the variable *REFNUM*) of the observations
for which the missing values at the variable *CROPDMGEXP* could be
retrieved were identified.

    # Create a kable to present the number of imputable missing values for the 
    # variable CROPDMGEXP at the table with the in-record validated data subset.
    kable(
      x = summary(CF_____imputable_missing_values_at_the_variable_CROPDMGEXP)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ],
      caption = paste0(
        "Table 6.5.3.3-1: ",
        "Results from identification of imputable missing values ", 
        "at the variable CROPDMGEXP."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = paste0(
          "The subset of the 55041 observations with missing values ",
          "was used for the identification of imputable invalid values."
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.3.3-1: Results from identification of imputable missing values
at the variable CROPDMGEXP.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
imputable\_missing\_values\_at\_CROPDMGEXP
</td>
<td style="text-align:right;">
55041
</td>
<td style="text-align:right;">
55041
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The subset of the 55041 observations with missing values was
used for the identification of imputable invalid values.
</td>
</tr>
</tfoot>
</table>
The key values (denoted by the variable *REFNUM*) of the observations
for which the missing values at the variable *CROPDMGEXP* could be
retrieved were identified.

    # Identify the observations for which the missing value 
    # at the variable CROPDMGEXP can be safely imputed, 
    # by their key value denoted by the variable REFNUM.
    criterion_by_REFNUM_____imputable_missing_values_at_the_variable_CROPDMGEXP <- 
      with(
        data = CF_____imputable_missing_values_at_the_variable_CROPDMGEXP[["._value"]],
        expr = in_record_validated_data[is.na(CROPDMGEXP), REFNUM]
      )

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-3-3--Identify-the-imputable-missing-values-at-the-variable-CROPDMGEXP)</font>  
<font size="1">[back to start of this
subsection](#ind-6-5-3--Impute-missing-values-at-the-variable-CROPDMGEXP)</font>  
<font size="1">[back to start of this
section](#ind-6-5--Impute-Missing-Values)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

#### 6.5.3.4 Substitute the imputable missing values at the variable CROPDMGEXP

The value *“K”* was imputed to all observations with imputable missing
values at the variable *CROPDMGEXP* (which were identified by their key
value).

    # Set the imputable missing values at the variable CROPDMGEXP 
    # with the value "K".
    set(
      x = imputed_data,
      i = which(
        imputed_data$REFNUM %in% 
          criterion_by_REFNUM_____imputable_missing_values_at_the_variable_CROPDMGEXP
      ),
      j = "CROPDMGEXP",
      value = "K"
    )

*(They could have been substituted by any of the valid values (“K”, “M”
or “B”) for the variable PROPDMGEXP without changing the fact that they
refer to 0$ property damage.)*

<br>

<br>

<font size="1">[back to start of this
subsubsection](#ind-6-5-3-4--Substitute-the-imputable-missing-values-at-the-variable-CROPDMGEXP)</font>  
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

Post validation was conducted to verify that the values of variables at
the table with imputed data were valid according to the same constrains
that were used to [identify the invalid values for each
variable](#ind-6-4-2--Conduct-in-record-data-validation-for-each-variable)
at the table with the target data subset.

    # The table with the imputed data was post validated to verify 
    # that all values for each of the variables it contained were valid.
    CF____post_validation_of_the_table_with_the_imputed_data <- confront(
      dat = imputed_data,
      V____constrains_for_the_in_record_data_validation
    )

All values for each variable at the table with the imputed data were
valid.

    # Present the results of the post validation for the table with imputed data
    kable(
      x = summary(CF____post_validation_of_the_table_with_the_imputed_data)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ],
      caption = paste0(
        "Table 6.5.4-1: ", 
        "The results of post validation for the table with the imputed data."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
         general = paste0(
          "The same constrains that were used to identify the invalid values ", 
          "of each variable at the table with the target data subset, ", "\n",
          "were used for the post validation of the observations ", 
          "at the table with the imputed data."
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.4-1: The results of post validation for the table with the
imputed data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
REFNUM
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_DATE
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
EVTYPE
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144571
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
255
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
FATALITIES
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
INJURIES
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMG
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMGEXP
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMG
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMGEXP
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The same constrains that were used to identify the invalid
values of each variable at the table with the target data subset,
<br>were used for the post validation of the observations at the table
with the imputed data.
</td>
</tr>
</tfoot>
</table>
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

The table with the imputed data contained 9 variables and 144826
observations.

The variable *REFNUM* was set as the key of the this table.

    # Print the structure of the table with the imputed data.
    str(imputed_data)

    ## Classes 'data.table' and 'data.frame':   144826 obs. of  9 variables:
    ##  $ REFNUM    : int  413607 413608 413609 413610 413611 413612 413613 413614 413615 413616 ...
    ##  $ BGN_DATE  : chr  "1/19/2001 0:00:00" "1/19/2001 0:00:00" "1/19/2001 0:00:00" "1/19/2001 0:00:00" ...
    ##  $ EVTYPE    : chr  "THUNDERSTORM WIND" "THUNDERSTORM WIND" "THUNDERSTORM WIND" "THUNDERSTORM WIND" ...
    ##  $ FATALITIES: int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ INJURIES  : int  0 0 0 0 0 0 0 4 0 0 ...
    ##  $ PROPDMG   : num  10 8 2 15 5 3 10 450 150 3 ...
    ##  $ PROPDMGEXP: chr  "K" "K" "K" "K" ...
    ##  $ CROPDMG   : num  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ CROPDMGEXP: chr  "K" "K" "K" "K" ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

There were 255 missing values left only at the variable *EVTYTE* (which
were those that couldn’t be safely imputed). The number of distinct
values at any of the variables didn’t indicate the presence of obvious
abnormalities.

    # Create a kable to highlight some facts about the table with the imputed data.
    kable(
      x = data.table(
        "Variable" = names(imputed_data),
        "Number of Distinct Values" = vapply(imputed_data, function(x) length(unique(x[!is.na(x)])), integer(1)),
        "Number of Missing Values" = vapply(
          X = imputed_data, 
          FUN = function(x) sum(is.na(x)), 
          FUN.VALUE = integer(1)),
        "Percentage of Missing Values" = vapply(
          X = imputed_data, 
          FUN = function(x) mean(is.na(x)),
          FUN.VALUE = double(1))
      ),
      caption = paste0(
        "Table 6.5.5-1: Facts about the table with the imputed data."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = paste0(
          "The table with the imputed data contained 9 variables ", 
          "and 144826 observations."
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.5.5-1: Facts about the table with the imputed data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Variable
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Distinct Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Missing Values
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Percentage of Missing Values
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
REFNUM
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
BGN\_DATE
</td>
<td style="text-align:right;">
3746
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
EVTYPE
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
255
</td>
<td style="text-align:right;">
0.0017607
</td>
</tr>
<tr>
<td style="text-align:left;">
FATALITIES
</td>
<td style="text-align:right;">
31
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
INJURIES
</td>
<td style="text-align:right;">
101
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMG
</td>
<td style="text-align:right;">
1162
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPDMGEXP
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMG
</td>
<td style="text-align:right;">
269
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
<tr>
<td style="text-align:left;">
CROPDMGEXP
</td>
<td style="text-align:right;">
3
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0.0000000
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The table with the imputed data contained 9 variables and
144826 observations.
</td>
</tr>
</tfoot>
</table>
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

<font size="3"><u><strong>Summary</strong></u></font>

Each observation at the table with imputed data was checked to verify if
it contains entries which were valid across all variables simultaneous.
Those observations that were valid were used to create the table with
the cross-record validated data.

<font size="3"><u><strong>Steps</strong></u></font>

-   [6.6.1 Identify all valid
    observations](#ind-6-6-1--Identify-all-valid-observations)
    -   Identifies the valid observations according to a criterion that
        spans across all variables.  
-   [6.6.2 Create the table with the cross-record validated
    data](#ind-6-6-2--Create-the-table-with-the-cross-record-validated-data)
    -   Creates the table with the cross-record validated data
        extracting only the valid observations.  
-   [6.6.3 Conduct post validation for table with the cross-record
    validated
    data](#ind-6-6-3--Conduct-post-validation-for-table-with-the-cross-record-validated-data)
    -   Ensures that all observations at the table with the cross-record
        validated data are valid.  
-   [6.6.4 Overview of the table with the cross-record validated
    data](#ind-6-6-4--Overview-of-the-table-with-the-cross-record-validated-data)
    -   Presents some basic facts about the table with the
        cross-validated data.

<br>

<font size="1">[back to start of this
section](#ind-6-6--Conduct-Cross-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.6.1 Identify all valid observations

A single constrain that spanned across all available variables at the
table with the imputed data was created and used to identify the valid
observations.

Specifically, each observation must simultaneous satisfy the 4 criteria
below in order to be considered valid:

1.  The id must be unique (and non-missing).  
2.  The weather event type value must be one of the defined weather
    events (and non-missing).  
3.  The year must be in the period from 2001 to 2011 (and
    non-missing).  
4.  There must be non-zero harm either to population health or to
    economy, so:
    -   either fatalities must be positive (and non-missing),
    -   or injuries must be positive (and non-missing),
    -   or property damage (in dollars) must be retrievable and positive
        (and non-missing),
    -   or crop damage (in dollars) must be retrievable and positive
        (and non-missing).

<!-- -->

    # A validator was created that contains a constrain 
    # for the validity of each observation 
    # that spans across all variables .  
    V_____cross_record_constrains <- validator(
      "valid_observations" = (
        ( REFNUM %in% names(table(REFNUM)[table(REFNUM) == 1]) ) &
          ( !is.na(EVTYPE) ) & 
          ( as.integer(str_extract(BGN_DATE, "(?<=^\\d{1,2}/\\d{1,2}/)\\d{4}(?= 0:00:00$)")) %in%
              c(2001:2011) ) &
          (
            ( FATALITIES > 0 ) |
              ( INJURIES > 0 ) |
              ( PROPDMG > 0 & !is.na(PROPDMGEXP) ) |
              ( CROPDMG > 0 & !is.na(CROPDMGEXP) )
          )
      )
    )

    # The imputed data table was confronted 
    # with the validator that identifies 
    # the observations that contain valid values across all variables. 
    CF_____cross_record_constrains <- confront(
      dat = imputed_data,
      V_____cross_record_constrains
    )

Out of the total of 144826 observation at the table with the imputed
data 144571 were valid across all variables while only 255 were found to
be invalid.

    # Present the result of cross-record validation 
    # for the observations contained at the table with imputed data.  
    kable(
      x = summary(CF_____cross_record_constrains)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ],
      caption = paste0(
        "Table 6.6.1-1: ",
        "The table contains the results of the cross-record data validation ",
        "for the observation contained at the imputed data table."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.6.1-1: The table contains the results of the cross-record data
validation for the observation contained at the imputed data table.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
valid\_observations
</td>
<td style="text-align:right;">
144826
</td>
<td style="text-align:right;">
144571
</td>
<td style="text-align:right;">
255
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
</table>
The value of the key (denoted by the variable *REFNUM*) was used to
identify the observations that were valid.

    # Identify the valid observations found through the cross-record validation 
    # by the their key value.  
    criterion_by_REFNUM_____cross_validated_observations <- imputed_data[
      CF_____cross_record_constrains[["._value"]][["valid_observations"]],
      REFNUM
      ]

<br>

<font size="1">[back to start of this
subsection](#ind-6-6-1--Identify-all-valid-observations)</font>  
<font size="1">[back to start of this
section](#ind-6-6--Conduct-Cross-Record-Data-Validation)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>  
<br>

### 6.6.2 Create the table with the cross-record validated data

From the table with the imputed data, the table with the cross-record
validated data was created, by including only the observations that
contained valid (and non-missing) values across all variables.

    # Create the table with cross-record data validation 
    # by using only the valid observations.
    cross_validated_data <- imputed_data[
      REFNUM %in% criterion_by_REFNUM_____cross_validated_observations
      ]

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

Post validation was conducted to verify that all observations at the
table with the cross-validated data were valid according to the same
constrains that were used to [identify the valid
observation](#ind-6-6-1--Identify-all-valid-observations) at the table
with the imputed data.

    # The table with the cross-record validated data was post validated to verify 
    # that all observations were valid.
    CF_________post_validation_of_cross_validated_data <- confront(
      dat = cross_validated_data,
      V_____cross_record_constrains
    )

All the observations at the table with the cross-record validated data
were valid.

    # Create a kable to present the results of the post validation 
    # for the table with the cross-record validated data.
    kable(
      x = summary(CF_________post_validation_of_cross_validated_data)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning")
        ],
      caption = paste0(
        "Table 6.6.3-1: ",
        "Presents the result of the post validation ", 
        "for the table with cross validated data."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.6.3-1: Presents the result of the post validation for the table
with cross validated data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
valid\_observations
</td>
<td style="text-align:right;">
144571
</td>
<td style="text-align:right;">
144571
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
</table>
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

The table with the cross-validated data contained 9 variables and 144571
observations.

The variable *REFNUM* was set as the key of this table.

    # Print the structure of the table with the cross-record validated data.
    str(cross_validated_data)

    ## Classes 'data.table' and 'data.frame':   144571 obs. of  9 variables:
    ##  $ REFNUM    : int  413607 413608 413609 413610 413611 413612 413613 413614 413615 413616 ...
    ##  $ BGN_DATE  : chr  "1/19/2001 0:00:00" "1/19/2001 0:00:00" "1/19/2001 0:00:00" "1/19/2001 0:00:00" ...
    ##  $ EVTYPE    : chr  "THUNDERSTORM WIND" "THUNDERSTORM WIND" "THUNDERSTORM WIND" "THUNDERSTORM WIND" ...
    ##  $ FATALITIES: int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ INJURIES  : int  0 0 0 0 0 0 0 4 0 0 ...
    ##  $ PROPDMG   : num  10 8 2 15 5 3 10 450 150 3 ...
    ##  $ PROPDMGEXP: chr  "K" "K" "K" "K" ...
    ##  $ CROPDMG   : num  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ CROPDMGEXP: chr  "K" "K" "K" "K" ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

All the observation at the table with the cross-validated data are
complete as indicated by the results of [post validation for the table
with cross-validated
data](#ind-6-6-3--Conduct-post-validation-for-table-with-the-cross-record-validated-data).

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

<font size="3"><u><strong>Summary</strong></u></font>

Having identified, validated and imputed the target data for the period
of interest, by transforming the variables from the table with
cross-record validated data, the processed data table was constructed
that contained all information that was necessary in order to proceed
with this analysis and address the two questions of interest.

<font size="3"><u><strong>Steps</strong></u></font>

-   [6.7.1 Create the table with the processed
    data](#ind-6-7-1--Create-the-table-with-the-processed-data)
    -   Transforms the variables from the table with cross-validated
        data to created the table with the processed data.
-   [6.7.2 Conduct post validation for the table with the processed
    data](#ind-6-7-2--Conduct-post-validation-for-the-table-with-the-processed-data)
    -   Ensures that all observations at the table with the processed
        data are valid.

<br>

<font size="1">[back to start of this
section](#ind-6-7--Produce-The-Processed-Data)</font>  
<font size="1">[back to start of this
chapter](#ind-6--DATA-PROCESSING)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 6.7.1 Create the table with the processed data

The following transformations were applied at the variables from the
table with the cross-record validated data, in order to construct the
table with the processed data:

1.  the variable **REFNUM** was transfered unchanged  
2.  the variable *BGN\_DATE* was omitted  
3.  the variable *EVTYPE* was transfered and renamed to
    **EVENT\_TYPE**  
4.  the variable **FATALITIES** was transfered unchanged  
5.  the variable **INJURIES** was transfered unchanged  
6.  the variables *FATALITIES* and *INJURIES* were added  
    in order to create the variable **CASUALTIES**  
7.  the variables *PROPDMG* (that denoted the magnitude of property
    damage) and *PROPDMGEXP* (that indicated if the value of *PROPDMG*
    referred to thousands, millions or billions) were combined
    appropriately to retrieve the property damage in dollars in order to
    create the variable **PROPERTY\_DAMAGE**  
8.  the variables *CROPDMG* (that denoted the magnitude of crop damage)
    and *CROPDMGEXP* (that indicated if the value of *CROPDMG* referred
    to thousands, millions or billions) were combined appropriately to
    retrieve the crop damage in dollars in order to create the variable
    **CROP\_DAMAGE**  
9.  the variables *PROPERTY\_DAMAGE* and *CROP\_DAMAGE* were added in
    order to create the variable **ECONOMIC\_DAMAGE**

<!-- -->

    # Create the table with the processed data 
    # from the information contained 
    # at the table with cross-record validated data.
    processed_data <- cross_validated_data[
      ,
      list(
        # REFNUM variable doesn't need to change
        "REFNUM" = REFNUM,
        # EVTYPE variable should be renamed to EVENT_TYPE
        "EVENT_TYPE" = EVTYPE,
        # FATALITIES variable doesn't need to change
        "FATALITIES" = FATALITIES,
        # INJURIES variable doesn't need to change
        "INJURIES" = INJURIES,
        # PROPERTY_DAMAGE is created by combining the information
        # from the PROPDMG variable which denotes the magnitude of property damage
        # and the PROPDMGEXP variable that indicates if the magnitude
        # refers to thousands (K), millions (M) or billions (B) of dollars
        "PROPERTY_DAMAGE" = (function(magnitude, coded_exponent, code_dictionary) {
          recoded_exponent <- str_replace_all(
            string = coded_exponent,
            code_dictionary
          ) %>%
            as.integer()
          ## the magnitude is multiplied by a coefficient
          ## with base 10 raised to the appropriate power
          ## (3 for thousands, 6 for millions or 9 for billions)
          ## to retrieve the value of property damage 
          reconstructed_number <- magnitude * 10^recoded_exponent
        })(PROPDMG, PROPDMGEXP, c("K" = "3", "M" = "6", "B" = "9")),
        # CROP_DAMAGE is created by combining the information
        # from the CROPDMG variable which denotes the magnitude of crop damage
        # and the CROPDMGEXP variable that indicates if the magnitude
        # refers to thousands (K), millions (M) or billions (B) of dollars
        "CROP_DAMAGE" = (function(magnitude, coded_exponent, code_dictionary) {
          recoded_exponent <- str_replace_all(
            string = coded_exponent,
            code_dictionary
          ) %>%
            as.integer()
          ## the magnitude is multiplied by a coefficient
          ## with base 10 raised to the appropriate power
          ## (3 for thousands, 6 for millions or 9 for billions)
          ## to retrieve the value of crop damage 
          reconstructed_number <- magnitude * 10^recoded_exponent
        })(CROPDMG, CROPDMGEXP, c("K" = "3", "M" = "6", "B" = "9"))
      )
      ][
        ,
        # Create a variable with the number of casualties
        # caused by each weather event type 
        # by adding the fatalities and injuries
        CASUALTIES := FATALITIES + INJURIES][
          ,
          # Create a variable with the economic damage
          # caused by each weather event type 
          # by adding the property damage and crop damage
          ECONOMIC_DAMAGE := PROPERTY_DAMAGE + CROP_DAMAGE
          ][
            ,
            # Re-arrange the order of the variables 
            list(
              REFNUM, EVENT_TYPE, 
              FATALITIES, INJURIES, CASUALTIES,
              PROPERTY_DAMAGE, CROP_DAMAGE, ECONOMIC_DAMAGE
            )
            ]

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

Post validation was conducted to verify that all observations contained
at the table with the processed data were valid across all variables it
contained.

One constrain was created and used, which consists of three parts that
must hold simultaneous for each observation:

-   The key for each observation denoted by the variable *REFNUM* must
    be unique.
    -   The event type for each observation denoted by the variable
        *EVENT\_TYPE* must be one of 48 defined weather event types
        according to the *NATIONAL WEATHER SERVICE INSTRUCTION 10-1605,
        AUGUST 17, 2007 (at chapter 7)*  
    -   At least one of the six variables that indicate the harm (either
        to population health or to economy), denoted by the variables
        *FATALITIES*, *INJURIES*, *CASUALTIES*, *PROPERTY\_DAMAGE*,
        *CROP\_DAMAGE* or *EC0NOMIC\_DAMAGE* must be positive.

<!-- -->

    # Create a validator that contains a constrain 
    # that spans across all variables contained 
    # at the table with the processed data 
    # for each observation it includes.
    V_____post_validation_of_table_with_the_processed_data <- validator(
      "valid_observation" = (
        ( REFNUM %in% table(REFNUM)[names(table(REFNUM)[table(REFNUM) == 1])] ) &
          ( EVENT_TYPE %in% defined_event_types ) &
          ( FATALITIES > 0 ) |
          ( INJURIES > 0 ) |
          ( CASUALTIES > 0) |
          ( PROPERTY_DAMAGE > 0 ) |
          ( CROP_DAMAGE > 0) |
          ( ECONOMIC_DAMAGE > 0 )
      )
    )

    # Confront the table with the processed data with 
    # validator that verifies the validity of each observation it contains 
    # across all variables.
    CF_____post_validation_of_table_with_the_processed_data <- confront(
      dat = processed_data,
      V_____post_validation_of_table_with_the_processed_data
    )

All the 144571 observations included in the processed data table were
found to satisfy the condition.

    # Create a kable to resents the results of post validation 
    # for the table with the processed data.
    kable(
      x = summary(CF_____post_validation_of_table_with_the_processed_data)[
        , c("name", "items", "passes", "fails", "nNA", "error", "warning", "error", "warning")
        ],
      caption = paste0(
        "Table 6.7.2-1: ",
        "The results of post validation for the table with the processed data."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 6.7.2-1: The results of post validation for the table with the
processed data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
name
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
items
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
passes
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
fails
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
nNA
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
error.1
</th>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
warning.1
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
valid\_observation
</td>
<td style="text-align:right;">
144571
</td>
<td style="text-align:right;">
144571
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:right;">
0
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
<td style="text-align:left;">
FALSE
</td>
</tr>
</tbody>
</table>
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

The table with the processed data (which was the result of the [data
processing pipeline](#ind-6--DATA-PROCESSING)) contains all the
information that was used in the chapters:

-   [8 HARM ON POPULATION HEALTH](#ind-8--HARM-ON-POPULATION-HEALTH)  
-   [9 HARM ON ECONOMY](#ind-9--HARM-ON-ECONOMY)

in order to address the two questions of interest for this analysis.

[Details about the
variables](#ind-7-1--Information-For-The-Table-With-The-Processed-Data)
it contains and [a short
overview](#ind-7-2--Overview-Of-The-Table-With-The-Processed-Data) are
presented in this chapter.

Finally in order to assist any attempt to reproduce the analysis [a file
with the processed data was
exported](#ind-7-3--Export-The-Table-With-The-Processed-Data) to serve
as *checkpoint*.

<br>

<font size="1">[back to start of this
chapter](#ind-7--PROCESSED-DATA)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

7.1 Information For The Table With The Processed Data
-----------------------------------------------------

There are 8 variable at the table with the processed data:

1.  **REFNUM** (int) : a value that uniquely identifies each observation
    and was used as the key of the table  
2.  **EVENT\_TYPE** (chr) : the type of each weather event type  
3.  **FATALITIES** (int) : the number of fatalities  
4.  **INJURIES** (int) : the number of injuries  
5.  **CASUALTIES** (int) : the number of casualties (injuries and
    fatalities)  
6.  **PROPERTY\_DAMAGE** (num) : the property damage in dollars  
7.  **CROP\_DAMAGE** (num) : the crop damage in dollars  
8.  **ECONOMIC\_DAMAGE** (num): the economic damage in dollars (property
    damage and crop damage)

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

The processed data consists of 8 variables and 144571 observations.

The variable REFNUM was set as the key of this table.

    # Print the structure of the table with the processed data.
    str(processed_data)

    ## Classes 'data.table' and 'data.frame':   144571 obs. of  8 variables:
    ##  $ REFNUM         : int  413607 413608 413609 413610 413611 413612 413613 413614 413615 413616 ...
    ##  $ EVENT_TYPE     : chr  "THUNDERSTORM WIND" "THUNDERSTORM WIND" "THUNDERSTORM WIND" "THUNDERSTORM WIND" ...
    ##  $ FATALITIES     : int  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ INJURIES       : int  0 0 0 0 0 0 0 4 0 0 ...
    ##  $ CASUALTIES     : int  0 0 0 0 0 0 0 4 0 0 ...
    ##  $ PROPERTY_DAMAGE: num  10000 8000 2000 15000 5000 3000 10000 450000 150000 3000 ...
    ##  $ CROP_DAMAGE    : num  0 0 0 0 0 0 0 0 0 0 ...
    ##  $ ECONOMIC_DAMAGE: num  10000 8000 2000 15000 5000 3000 10000 450000 150000 3000 ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

All the observations included in the processed data table are complete.

    # Create a kable to present the number of complete cases 
    # at the table with the processed data.
    kable(
        x = data.table(
            "Percentage Of Complete Observations" = 
                paste0(mean(complete.cases(processed_data))*100, "%")
        ),
        caption = paste0(
            "Table 7.2-1: ",
            "The percentage of complete observations ",
            "at the table with the processed data."
        )
    ) %>% 
        kable_styling(
            bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
            full_width = FALSE,
            fixed_thead = TRUE
        )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 7.2-1: The percentage of complete observations at the table with
the processed data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Percentage Of Complete Observations
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
100%
</td>
</tr>
</tbody>
</table>
The number of distinct values comply with what was expected from each
variable.

    # Create a kable to present the number of distinct values 
    # for each variable at the table with the processed data.
    kable(
        x = data.table(
            "Variable" = names(processed_data),
            "Number of Distinct Values" = 
                vapply(
                    X = processed_data, 
                    FUN = function(x) length(unique(x[!is.na(x)])), 
                    FUN.VALUE = integer(1)
                )
        ),
        caption = paste0(
            "Table 7.2-2: ",
            "The number of distinct values ",
            "for each variable at the table with the processed data."
        )
    ) %>% 
        kable_styling(
            bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
            full_width = FALSE,
            fixed_thead = TRUE
        ) %>% 
      footnote(
        general = paste0(
          "The table with the processed data consists of 8 variables ", "\n",
          "and 144571 observations."
        )
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 7.2-2: The number of distinct values for each variable at the
table with the processed data.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
Variable
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
Number of Distinct Values
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
REFNUM
</td>
<td style="text-align:right;">
144571
</td>
</tr>
<tr>
<td style="text-align:left;">
EVENT\_TYPE
</td>
<td style="text-align:right;">
47
</td>
</tr>
<tr>
<td style="text-align:left;">
FATALITIES
</td>
<td style="text-align:right;">
31
</td>
</tr>
<tr>
<td style="text-align:left;">
INJURIES
</td>
<td style="text-align:right;">
101
</td>
</tr>
<tr>
<td style="text-align:left;">
CASUALTIES
</td>
<td style="text-align:right;">
113
</td>
</tr>
<tr>
<td style="text-align:left;">
PROPERTY\_DAMAGE
</td>
<td style="text-align:right;">
1369
</td>
</tr>
<tr>
<td style="text-align:left;">
CROP\_DAMAGE
</td>
<td style="text-align:right;">
331
</td>
</tr>
<tr>
<td style="text-align:left;">
ECONOMIC\_DAMAGE
</td>
<td style="text-align:right;">
1647
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The table with the processed data consists of 8 variables
<br>and 144571 observations.
</td>
</tr>
</tfoot>
</table>
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

The table with the processed data was exported (as an R file), in the
sub-directory of the working directory:

-   *outputs –&gt; processed\_data*

with filename:

-   *table\_with\_the\_precessed\_data.R*

<!-- -->

    # Supply the filepath at which the table with the summary
    # for the harm on population health will be exported.
    filepath_____processed_data <-
        file.path(
            directory_tree_____outputs[[
                "filepath_____outputs_____processed_data"
                ]],
            "table_with_the_processed_data.R"
        )

    # Export the table with the summary for the harm on population health
    # with respect to fatalities.
    saveRDS(
        object = processed_data,
        file = filepath_____processed_data
    )

*The main reason for exporting the a file with the processed data was to
supply a checkpoint for any attempts to reproduce the analysis.*

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

In this chapter an attempt was made to quantify the harm on population
health based on the information from the [table with the processed
data](#ind-7--PROCESSED-DATA).

The harm on population health was examined over three perspectives:

1.  [The harm on population health with respect to fatalities caused by
    each weather event type based on the observations for weather events
    that resulted in non-zero fatalities at United States in the period
    from 2001
    to 2011.](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)  
2.  [The harm on population health with respect to injuries caused by
    each weather event type based on the observations for weather events
    that resulted in non-zero injuries at United States in the period
    from 2001
    to 2011.](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)  
3.  [The harm on population health with respect to casualties (sum of
    fatalities and injuries) caused by each weather event type based on
    the observations for weather events that resulted in non-zero
    casualties at United States in the period from 2001
    to 2011.](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)

The weather event types for which less than 10 observations that
resulted in non-zero harm were available with respect to a perspective
of interest were ommitted (from the analysis of that particular
perspective), to avoid highly misleading statistics. Consequently the
subset of weather event types that were included for each of the three
perspectives is different.

Due to the fact that for all perspectives the values of interest for the
observations of most weather event types were highly positively skewed,
it was consider important in order to obtain an insightful picture of
their consequences to examine them over three different aspects:

1.  The **overall** harm on population health caused by each weather
    event type.  
2.  The harm on population health caused by **the 90% of cases with the
    lowest impact** of each weather event type.  
3.  The harm on population health caused by **the 10% of cases with the
    highest impact** of each weather event type.

For every aspect the sample size, the skewness and the mean of the
values that encapsulated the harm with respect to each perspective were
summarized by each weather event type and reported.

The results obtained for the harm on population health by each weather
event type were presented at the section [10.1 Question 1: Across the
United States, which types of events (as indicated in the EVTYPE
variable) are most harmful with respect to population
health?](#ind-10-1--results-harm-on-population-health) of the chapter
[10 RESULTS](#ind-10--RESULTS)).

For each of the three perspectives that were examined for the harm on
population health by each weather event type a multiplot was created to
visualize the respective results. Those multiplots constitute the three
parts of the *Figure 1*, which was composed and presented at the
subsection [10.1.1 Overview of results for the harm on population
health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)
of the chapter [10 RESULTS](#ind-10--RESULTS)).

(*In compliance with the restrictions of the assignment, according to
which at least 1 but no more than 3 figures should be included in the
report, the Multiplot as well as the elementary plots that contain were
NOT displayed separately and can ONLY be examined as PARTs of the Figure
1at the subsection [10.1.1 Overview of results for the harm on
population
health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)
of the chapter [10 RESULTS](#ind-10--RESULTS).)*

<br>

<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

8.1 Harm On Population Health With Respect To Fatalities By Each Weather Event Type
-----------------------------------------------------------------------------------

<font size="3"><u><strong>Summary</strong></u></font>

The required variables and the target data subset of observations for
the harm on population health with respect to fatalities were extracted
from the table with the processed data, and processed to create a new
variable that divided the observations for each of the included weather
event types to two supplementary groups:

-   the 90% of observations with the lowest impact  
-   the 10% of observations with the highest impact

before the information for the harm on population health with respect to
fatalities was summarized by each weather event type.

Three aspects were examined:

1.  The overall average number of fatalities by each weather event
    type.  
2.  The average number of fatalities by each weather event type for the
    90% of cases with the lowest impact.  
3.  The average number of fatalities by each weather event type for the
    10% of cases with the highest impact.

For each aspect, the average number of fatalities by each weather event
type, the number of its available observations (based on which the
average was computed) and their skewness were examined.

The overall average number of fatalities was used as the main criterion
to determine which weather events caused the most harm on population
health with respect to fatalities but it is important to take into
account the other two aspect that were presented in order to obtain a
more insightful and complete ‘picture’ of their consequences,
(especially given the fact that for most of the weather event types, the
fatalities were highly positively skewed).

The table with results for the harm on population health with respect to
fatalities by each weather event type were presented at the subsection
[10.1.2 Most harmful event types with respect to
fatalities](#ind-10-1-2--Most-harmful-weather-event-types-with-respect-to-fatalities)
of the chapter [10 RESULTS](#ind-10--RESULTS).

Finally the *Multiplot 1.1* was created to visualize the results for the
harm on population health with respect to fatalities by each weather
event type.

*(Note that neither the Multiplot 1.1 nor the elementary plots that it
contains were presented in this section due to the restrictions imposed
by the assignment to include in the report at least 1 but no more than 3
figures. It can be examined at the subsection [10.1.1 Overview of
results for the harm on population
health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)
at the chapter [10 RESULTS](#ind-10--RESULTS), where the Figure 1 was
presented, of which the Multiplot 1.1 constitutes the PART 1.)*

<font size="3"><u><strong>Steps</strong></u></font>

-   [8.1.1 Extract the target data for harm on population health with
    respect to
    fatalities](#ind-8-1-1--Extract-the-target-data-for-harm-on-population-health-with-respect-to-fatalities)
    -   The target data subset of observations needed to evaluate the
        harm on population health with respect to fatalities by each
        weather event type was extracted from the table with the
        processed data.
-   [8.1.2 Process the target data for harm on population health with
    respect to
    fatalities](#ind-8-1-2--Process-the-target-data-for-harm-on-population-health-with-respect-to-fatalities)
    -   The table with target data subset for the harm on population
        with respect to fatalities was processed to create the table
        with processed data for the harm on population health with
        respect to fatalities.  
-   [8.1.3 Summarize the processed data for harm on population health
    with respect to fatalities by each weather event
    type](#ind-8-1-3--Summarize-the-processed-data-for-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)
    -   The harm on population health with respect to fatalities by each
        weather event type was evaluated over various aspects.  
-   [8.1.4 Visualize the results of the summary for the harm on
    population health with respect to fatalities by each weather event
    type](#ind-8-1-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-fatalities-by-each-weather-event-type)
    -   The Multiplot 1.1 that presents the results of the summary for
        the harm on population health with respect to fatalities by each
        weather event type was created.
        -   [8.1.4.1 Create the components of Multiplot
            1.1](#ind-8-1-4-1--Create-the-components-of-Multiplot-1-1)
            -   Creates the four elementary plot that constitute the
                Multiplot 1.1:
                -   [8.1.4.1.1 Create The Plot
                    1.1.1](#ind-8-1-4-1-1--Create-The-Plot-1-1-1)
                    -   Displays the overall average number of
                        fatalities caused by each weather event type
                        based on all the cases of weather events that
                        resulted in non-zero fatalities.  
                -   [8.1.4.1.2 Create The Plot
                    1.1.2](#ind-8-1-4-1-2--Create-The-Plot-1-1-2)
                    -   Displays the average number of fatalities caused
                        by each weather event type based on 90% of
                        weather events with the lowest impact (for each
                        weather event type) that resulted in non-zero
                        fatalities.  
                -   [8.1.4.1.3 Create The Plot
                    1.1.3](#ind-8-1-4-1-3--Create-The-Plot-1-1-3)
                    -   Displays the average number of fatalities caused
                        by each weather event type based on 10% of
                        weather events with the highest impact (for each
                        weather event type) Displays the average number
                        of fatalities that resulted in non-zero
                        fatalities.  
                -   [8.1.4.1.4 Create The Plot
                    1.1.4](#ind-8-1-4-1-4--Create-The-Plot-1-1-4)
                    -   Displays a comparison for each weather event
                        type, of the average number of fatalities for
                        the 90% of its observations with the lowest
                        impact versus the average number of fatalities
                        for the 10% of its observations with the highest
                        impact based only on the weather events that
                        resulted in non-zero fatalities.  
        -   [8.1.4.2 Compose the Multiplot
            1.1](#ind-8-1-4-2--Compose-the-Multiplot-1-1)
            -   Combines the four elementary plots to create the
                Multiplot 1.1.

<br>

<font size="1">[back to start of this
section](#ind-8-1--Harm-On-Population-Health-With-Respect-To-Fatalities-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 8.1.1 Extract the target data for harm on population health with respect to fatalities

In order to examine the harm on population health with respect to
fatalities caused by each weather event type, the variables *REFNUM*,
*EVENT\_TYPE* and *FATALITIES* were selected from the table with the
processed data and **only the observations that refer to weather events
that resulted in non-zero fatalities** were extracted.

Furthermore, in an attempt to avoid highly misleading statistics due to
the small number of observations for some of the weather event types, a
lowest bound of 10 weather events that caused non zero fatalities (for
each of the included weather event types) was selected (subjectively by
the analyst) and applied.

This lowest bound, although it may seem (and generally it is) not enough
to get trustworthy statistics, it was considered to be *“good enough”*
taking into account that :

1.  the analysis focuses in describing historical data without trying to
    make inferences that would demand substantially bigger samples,
    although any statistic based on less than 10 observations could not
    be taken seriously especially in cases (such as in this analysis)
    where the distribution of fatalities for each weather event type was
    skewed.
2.  a period of 10 years (from 2001 to 2011) in which the observations
    that were used in the analysis occurred, is relatively small time to
    produce big samples of weather events that caused non zero
    fatalities for some the weather event types. Thus, if a highest
    bound was selected to get more robust statistics such as samples of
    100 or 300, the majority of weather event types would have been
    excluded, making the results of the analysis trivial.

<!-- -->

    # Extract the required variables and the target data subset of observations 
    # for the harm on population health with respect to fatalities.
    target_data_____harm_on_population_health_____fatalities <- processed_data[
      ## Extract only the observations that have resulted in non-zero fatalities.
      FATALITIES > 0,
      ## Select only the relevant variables. 
      list(REFNUM, EVENT_TYPE, FATALITIES)
      ][
        ### Keep only the observations that correspond to the weather event types 
        ### for which there are at least 10 weather events available.
        EVENT_TYPE %in% 
          names(table(EVENT_TYPE)[table(EVENT_TYPE) >= 10])
        ]

The table with the target data for the harm on population health with
respect to fatalities consist of 3175 observations.

    # Print the structure of the table with the target data subset 
    # for the harm on population health with respect to fatalities.
    str(target_data_____harm_on_population_health_____fatalities)

    ## Classes 'data.table' and 'data.frame':   3175 obs. of  3 variables:
    ##  $ REFNUM    : int  413652 413757 413763 413862 414153 414183 414184 414187 414200 414267 ...
    ##  $ EVENT_TYPE: chr  "THUNDERSTORM WIND" "TORNADO" "HIGH WIND" "THUNDERSTORM WIND" ...
    ##  $ FATALITIES: int  1 2 1 1 1 1 1 1 1 2 ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

The variable *EVENT\_TYPE* includes 26 distinct weather event types, for
most of which the variable *FATALITIES* was highly positively skewed.

    # Create a kable to present some facts about the table with the target data 
    # for the harm on population health with respect to fatalities.
    kable(
      x = target_data_____harm_on_population_health_____fatalities[
        order(EVENT_TYPE), 
        list(
          "N" = .N, 
          "SKEWNESS" = round(skewness(FATALITIES), 4)
        ), 
        by = EVENT_TYPE
        ],
      caption = paste0(
        "Table 8.1.1-1: ",
        "Facts about the table with the target data subset of observations ", 
        "for the harm on population health with respect to fatalities."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c(
          "striped", "hover", "condensed", "responsive", "bordered"
        ), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = "The skewness was rounded to 4 decimal places."
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 8.1.1-1: Facts about the table with the target data subset of
observations for the harm on population health with respect to
fatalities.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
EVENT\_TYPE
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
N
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
SKEWNESS
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
AVALANCHE
</td>
<td style="text-align:right;">
129
</td>
<td style="text-align:right;">
2.2979
</td>
</tr>
<tr>
<td style="text-align:left;">
BLIZZARD
</td>
<td style="text-align:right;">
15
</td>
<td style="text-align:right;">
2.6185
</td>
</tr>
<tr>
<td style="text-align:left;">
COLD/WIND CHILL
</td>
<td style="text-align:right;">
75
</td>
<td style="text-align:right;">
2.9759
</td>
</tr>
<tr>
<td style="text-align:left;">
DEBRIS FLOW
</td>
<td style="text-align:right;">
11
</td>
<td style="text-align:right;">
1.6608
</td>
</tr>
<tr>
<td style="text-align:left;">
EXCESSIVE HEAT
</td>
<td style="text-align:right;">
296
</td>
<td style="text-align:right;">
5.4405
</td>
</tr>
<tr>
<td style="text-align:left;">
EXTREME COLD/WIND CHILL
</td>
<td style="text-align:right;">
103
</td>
<td style="text-align:right;">
4.5318
</td>
</tr>
<tr>
<td style="text-align:left;">
FLASH FLOOD
</td>
<td style="text-align:right;">
392
</td>
<td style="text-align:right;">
8.0755
</td>
</tr>
<tr>
<td style="text-align:left;">
FLOOD
</td>
<td style="text-align:right;">
187
</td>
<td style="text-align:right;">
5.0049
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAT
</td>
<td style="text-align:right;">
127
</td>
<td style="text-align:right;">
4.1476
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAVY RAIN
</td>
<td style="text-align:right;">
34
</td>
<td style="text-align:right;">
2.5950
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAVY SNOW
</td>
<td style="text-align:right;">
18
</td>
<td style="text-align:right;">
0.9923
</td>
</tr>
<tr>
<td style="text-align:left;">
HIGH SURF
</td>
<td style="text-align:right;">
86
</td>
<td style="text-align:right;">
2.2931
</td>
</tr>
<tr>
<td style="text-align:left;">
HIGH WIND
</td>
<td style="text-align:right;">
92
</td>
<td style="text-align:right;">
3.4457
</td>
</tr>
<tr>
<td style="text-align:left;">
HURRICANE/TYPHOON
</td>
<td style="text-align:right;">
23
</td>
<td style="text-align:right;">
2.1981
</td>
</tr>
<tr>
<td style="text-align:left;">
ICE STORM
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
2.7519
</td>
</tr>
<tr>
<td style="text-align:left;">
LIGHTNING
</td>
<td style="text-align:right;">
387
</td>
<td style="text-align:right;">
5.3156
</td>
</tr>
<tr>
<td style="text-align:left;">
MARINE STRONG WIND
</td>
<td style="text-align:right;">
12
</td>
<td style="text-align:right;">
1.7889
</td>
</tr>
<tr>
<td style="text-align:left;">
MARINE THUNDERSTORM WIND
</td>
<td style="text-align:right;">
12
</td>
<td style="text-align:right;">
2.3158
</td>
</tr>
<tr>
<td style="text-align:left;">
RIP CURRENT
</td>
<td style="text-align:right;">
384
</td>
<td style="text-align:right;">
5.3801
</td>
</tr>
<tr>
<td style="text-align:left;">
STRONG WIND
</td>
<td style="text-align:right;">
90
</td>
<td style="text-align:right;">
2.6667
</td>
</tr>
<tr>
<td style="text-align:left;">
THUNDERSTORM WIND
</td>
<td style="text-align:right;">
195
</td>
<td style="text-align:right;">
6.4762
</td>
</tr>
<tr>
<td style="text-align:left;">
TORNADO
</td>
<td style="text-align:right;">
339
</td>
<td style="text-align:right;">
13.5732
</td>
</tr>
<tr>
<td style="text-align:left;">
TROPICAL STORM
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
3.8434
</td>
</tr>
<tr>
<td style="text-align:left;">
WILDFIRE
</td>
<td style="text-align:right;">
31
</td>
<td style="text-align:right;">
2.6290
</td>
</tr>
<tr>
<td style="text-align:left;">
WINTER STORM
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
0.9436
</td>
</tr>
<tr>
<td style="text-align:left;">
WINTER WEATHER
</td>
<td style="text-align:right;">
46
</td>
<td style="text-align:right;">
3.7781
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The skewness was rounded to 4 decimal places.
</td>
</tr>
</tfoot>
</table>
It was worth noting that for the weather event types with highest number
of observations there was highest skewness for the values of fatalities,
indicating that the corresponding distribution of fatalities has a heavy
tail that wasn’t possible to be observed when few observation were
available.

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

To create the table with the processed data for the harm on population
health with respect to fatalities from the corresponding target data
subset for this perspective, a new variable was created that divides the
observations for each of the included weather event types in two
complementary levels:

-   one that contains the 90% of cases with lowest impact  
-   the other that contains the 10% of cases with highest impact

This decision was made due to the high skewness that was observed for
the values of the variable *FATALITIES* for most weather event types,
which indicates that the underlining distributions of such phenomena has
a heavy tail that causes this heterogeneity on the observations. As a
result a small number of fatalities were observed for the majority of
cases that resulted in non-zero fatalities while in the few cases with
the highest impact they caused lots of fatalities.

Having in mind that the average number of fatalities will be used to
determine which weather event types were the most harmful to population
health (with respect to fatalities) combined with the fact that the
average doesn’t represent well the distribution of variables with high
skewness, as it is highly affected by the most extreme values, it was
considered necessary to examine the subsets created by those two levels
in order to obtain an insightful picture.

    # Create the table with the processed data 
    # for the harm on population health with respect to fatalities.
    processed_data_____harm_on_population_health_____fatalities <- 
      target_data_____harm_on_population_health_____fatalities[
        ,
        ## Create a new variable divides the observations
        ## for each weather event into two supplementary groups:  
        ##   - the 90% of weather events that resulted in lowest fatalities
        ##   - the 10% of weather events that resulted in highest fatalities
        BIN_GROUP_PER_EVENT_TYPE := (function(x, p_bins) {
          
          # adds 0 and 1 in the vector supplied at the argument 'p_bins' 
          # to the start and the end respectively  
          # the supplied percentiles if they are missing 
          # and sort them ascending
          p_bins_increasing <- sort(c(0, p_bins, 1))
          
          # creates the character strings that labels of the bins by the values supplied at 
          # the argument 'p_bins' that will be the values of the new variable
          bin_labels <- paste0("(", p_bins_increasing[-length(p_bins_increasing)]*100,
                               "% - ", p_bins_increasing[-1]*100, "%]")
          
          # identify the number of occurrences that correspond to each label
          n_times <- vapply(2:length(p_bins_increasing),
                            function(i) {
                              as.integer(floor(length(x) * p_bins_increasing[i]) -
                                           floor(length(x) * p_bins_increasing[i - 1]))
                            }, integer(1))
          
          # multiply each label with the number of its occurrences
          x_bins_expanded <- rep(x = bin_labels, times = n_times)
          
          # order the label to much the values of the corresponding vector
          x_bins_expanded_reordered <- x_bins_expanded[order(seq_along(x)[order(x)])]
          
          ## Coerce the character vector with the labels of bins to a factor
          x_bins_factor <- factor(x_bins_expanded_reordered, labels = bin_labels, ordered = TRUE)
          
        })(FATALITIES, 0.9)
        , by = EVENT_TYPE
      ][
        ## Coerce the EVENT_VARIABLE to factor
        , EVENT_TYPE := as.factor(EVENT_TYPE) 
      ]

The table with the processed data for the harm on population health with
respect to fatalities contains 4 variables:

1.  **REFNUM** (int) : an id that uniquely identifies each observation  
2.  **EVENT\_TYPE** (Factor w/ 26 levels) : the type of each weather
    event
3.  **FATALITIES** (int) : the number of fatalities  
4.  **BIN\_GROUP\_PER\_EVENT\_TYPE** (Ord.factor w/ 2 levels) : a factor
    that divides the observations for each weather event type to two
    complementary levels, one with the 90% of observations with the
    lowest impact and another with the 10% of observations with the
    highest impact.

and 3175 observations.

    # Print the structure of the table with the processed data 
    # for the harm on population health with respect to fatalities.
    str(processed_data_____harm_on_population_health_____fatalities)

    ## Classes 'data.table' and 'data.frame':   3175 obs. of  4 variables:
    ##  $ REFNUM                  : int  413652 413757 413763 413862 414153 414183 414184 414187 414200 414267 ...
    ##  $ EVENT_TYPE              : Factor w/ 26 levels "AVALANCHE","BLIZZARD",..: 21 22 13 21 16 10 16 19 13 22 ...
    ##  $ FATALITIES              : int  1 2 1 1 1 1 1 1 1 2 ...
    ##  $ BIN_GROUP_PER_EVENT_TYPE: Ord.factor w/ 2 levels "(0% - 90%]"<"(90% - 100%]": 1 1 1 1 1 1 1 1 1 1 ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

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

To evaluate the harm on population health by each weather event type
with respect to fatalities a simplistic approach was adopted :

-   the weather event types were ranked from the most harmful to the
    least based on the overall average number of fatalities of the
    weather events that resulted in non-zero fatalities

The overall average number of fatalities caused by each weather event
type was initially examined along with the skewness of the number of
fatalities for each weather event type. In most cases the skewness was
high (or even extremely high), so it was possible that the overall mean
misrepresented the consequences of each weather event type.

That is the reason why the average number of fatalities for 90% of
weather events with the lowest impact versus the average number of
fatalities for the 10% of weather events with the highest impact were
also computed and examined.

**It is highlighted that for the average number of fatalities that
refers to the 10% of the cases that had the highest impact, there were
few observations available for a lot of weather event types and the
corresponding mean values should be interpreted with caution.**

    # Create the table with the summary for the harm on population health 
    # with respect to fatalities for each weather event type.
    summary_____harm_on_population_health______fatalities <- 
      processed_data_____harm_on_population_health_____fatalities[
      ,
      list(
        ## The total number of observation by each weather event type.
        "N" = .N,
        ## The average number of fatalities caused by each weather event type.
        "AVRG" = round(mean(FATALITIES), 2),
        ## The skewness of fatalities for the observations by each weather event type.
        "SKEWNESS" = round(skewness(FATALITIES), 4),
        ## The number of observations for the 90% of cases with the lowest impact 
        ## by each weather event type.
        "N_LOW" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(0% - 90%]" , .N],
        ## The average number of fatalities caused by each weather event type 
        ## for the 90% of cases with the lowest impact.
        "AVRG_LOW" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(0% - 90%]" , round(mean(FATALITIES), 2)],
        ## The skewness of fatalities for the 90% of cases with the lowest impact 
        ## by each weather event type.
        "SKEWNESS_LOW" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(0% - 90%]" , round(skewness(FATALITIES), 4)],
        ## The number of observations for the 10% of cases with the lowest impact 
        ## by each weather event type.
        "N_HIGH" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(90% - 100%]" , .N],
        ## The average number of fatalities caused by each weather event type 
        ## for the 10% of cases with the highest impact.
        "AVRG_HIGH" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(90% - 100%]" , round(mean(FATALITIES), 2)],
        ## The skewness of fatalities for the 10% of cases with the highest impact 
        ## by each weather event type.
        "SKEWNESS_HIGH" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(90% - 100%]" , round(skewness(FATALITIES), 4)]
      ),
      by = "EVENT_TYPE"
      ][
        ## The average number of fatalities is used to order the rows of the table
        ## from the most harmful weather event type to the least.
        order(-AVRG),
        ## Create a variable with the rank of the harmness of each weather event type.
        RANK := 1:length(EVENT_TYPE)
        ][
          ,
          ## Reorder the variables at the table.
          list(
            RANK, EVENT_TYPE, N, AVRG, SKEWNESS, N_LOW, AVRG_LOW, SKEWNESS_LOW, N_HIGH, AVRG_HIGH, SKEWNESS_HIGH
          )
          ]

The results of the table with the summary for the harm on population
health with respect to fatalities by each weather event type that was
created in this section were presented at the subsection [10.1.2 Most
harmful event types with respect to
fatalities](%7B#ind-10-1-2--Most-harmful-weather-event-types-with-respect-to-fatalities%7D)
of the chapter [10 RESULTS](#ind-10--RESULTS).

The table with the summary for the harm on population health with
respect to fatalities by each weather event type was exported (as an R
file), in the folder of the working directory:

-   *outputs –&gt; harm\_on\_population\_health –&gt; results*

with filename:

-   *summary\_\_\_\_\_\_harm\_on\_population\_health\_\_\_\_\_\_fatalities.R*

<!-- -->

    # Supply the filepath at which the table with the summary
    # for the harm on population health will be exported.
    filepath_____summary_____harm_on_population_health______fatalities <-
      file.path(
        directory_tree_____outputs[[
          "filepath_____outputs_____harm_on_population_health_____results"
        ]],
        "summary_____harm_on_population_health______fatalities.R"
      )

    # Export the table with the summary for the harm on population health
    # with respect to fatalities.
    saveRDS(
      object = summary_____harm_on_population_health______fatalities,
      file = filepath_____summary_____harm_on_population_health______fatalities
    )

*The main reason for exporting the file with the summary for the harm on
population health with respect to fatalities by each weather event type
was to supply a checkpoint for any attempts to reproduce the analysis.*

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

From the table with the summary for the harm on population health by
each weather event type with respect to fatalities the **Multiplot 1.1**
was created to present an overview of the results for the three
different aspects that were examined for this perspective.

The elementary plots were
[created](#ind-8-1-4-1--Create-the-components-of-Multiplot-1-1):

-   [8.1.4.1.1 Create The Plot
    1.1.1](#ind-8-1-4-1-1--Create-The-Plot-1-1-1)
    -   Displays the overall average number of fatalities caused by each
        weather event type based on all the cases of weather events that
        resulted in non-zero fatalities.  
-   [8.1.4.1.2 Create The Plot
    1.1.2](#ind-8-1-4-1-2--Create-The-Plot-1-1-2)
    -   Displays the average number of fatalities caused by each weather
        event type based on 90% of weather events with the lowest impact
        (for each weather event type) that resulted in non-zero
        fatalities.  
-   [8.1.4.1.3 Create The Plot
    1.1.3](#ind-8-1-4-1-3--Create-The-Plot-1-1-3)
    -   Displays the average number of fatalities caused by each weather
        event type based on 10% of weather events with the highest
        impact (for each weather event type) that resulted in non-zero
        fatalities.  
-   [8.1.4.1.4 Create The Plot
    1.1.4](#ind-8-1-4-1-4--Create-The-Plot-1-1-4)
    -   Displays a comparison for each weather event type, of the
        average number of fatalities for the 90% of its observations
        with the lowest impact versus the average number of fatalities
        for the 10% of its observations with the highest impact based
        only on the weather events that resulted in non-zero fatalities.

which were then [combined](#Compose-the-Multiplot-1-1) in order to
obtain the **Multiplot 1.1**.

It constitutes the *PART 1* of the *Figure 1* that displays the overview
of the harm on population health by each weather event type.

*(Note that neither the Multiplot 1.1 nor the elementary plots that it
contains were presented in this section due to the restrictions imposed
by the assignment to include in the report at least 1 but no more than 3
figures. It can be examined at the subsection [10.1.1 Overview of
results for the harm on population
health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)
at the chapter [10 RESULTS](#ind-10--RESULTS), were the Figure 1 was
presented, of which the Multiplot 1.1 constitutes the PART 1.)*

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

Creates four elementary plots to visualize the results for the aspects
that were examined for the harm on population health with respect to
fatalities by each weather event type.

-   [8.1.4.1.1 Create The Plot
    1.1.1](#ind-8-1-4-1-1--Create-The-Plot-1-1-1)
    -   Displays the overall average number of fatalities caused by each
        weather event type based on all the cases of weather events that
        resulted in non-zero fatalities.  
-   [8.1.4.1.2 Create The Plot
    1.1.2](#ind-8-1-4-1-2--Create-The-Plot-1-1-2)
    -   Displays the average number of fatalities caused by each weather
        event type based on 90% of weather events with the lowest impact
        (for each weather event type) that resulted in non-zero
        fatalities.  
-   [8.1.4.1.3 Create The Plot
    1.1.3](#ind-8-1-4-1-3--Create-The-Plot-1-1-3)
    -   Displays the average number of fatalities caused by each weather
        event type based on 10% of weather events with the highest
        impact (for each weather event type) that resulted in non-zero
        fatalities.  
-   [8.1.4.1.4 Create The Plot
    1.1.4](#ind-8-1-4-1-4--Create-The-Plot-1-1-4)
    -   Displays a comparison for each weather event type, of the
        average number of fatalities for the 90% of its observations
        with the lowest impact versus the average number of fatalities
        for the 10% of its observations with the highest impact based
        only on the weather events that resulted in non-zero fatalities.

The elementary plots were used to [compose the Multiplot
1.1](#ind-8-1-4-2--Compose-the-Multiplot-1-1).

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

The *Plot 1.1.1* displays **the overall average number of fatalities**
caused by each weather event type taking into account all and only the
observation that resulted in non-zero fatalities.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of fatalities** they caused.

The skewness of the number of fatalities for the observations of each
weather event type (based on which the overall number of fatalities was
computed) had been encoded in the color of the bar associated with each
of them.

    # Create the Elementary Plot 1.1.1 that displays 
    # the overall average number of fatalities 
    # by each weather event type for all cases. 
    elementary_plot_1_1_1 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______fatalities,
        mapping = aes(
          x = AVRG,
          ### Reverse the order of the factors for the EVENT_TYPE variable 
          ### to make them displayed alphabetically from top to bottom.
          y = factor(
            x = EVENT_TYPE, 
            levels = rev(x = levels(x = EVENT_TYPE)
            )
          ) 
        )
      ) +
      ## Draw a square shaped point to the position that corresponds to 
      ## the average number of fatalities caused by each weather event type, 
      ## of which the color indicates the skewness of observations 
      ## based on which each average was computed.
      geom_point(
        mapping = aes(color = SKEWNESS),
        shape = 15, 
        size = 4.5
      ) +
      ## Draw a line that visually associates each weather event type 
      ## with its respective average number of fatalities.
      geom_linerange(
        mapping = aes(
          xmin = 0, 
          xmax = AVRG, 
          group = EVENT_TYPE, 
          color = SKEWNESS
        )
        ) +
      ## Draw a number that indicates the rank assigned to each weather event type 
      ## (from the most harmful to the least) based on the overall average number
      ## number of fatalities it caused inside the square point 
      ## that displays the average.
      geom_text(
        mapping = aes(
          label = RANK
        ), 
        size = 2.5
      ) +
      ## Adjust the scale for the color of each point.
      scale_color_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of fatalities for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.1 will be composed from the four elementary plots. 
        limits = c(-2, 14), 
        midpoint = 7, 
        low = "lightgreen", 
        mid = "orange", 
        high = "purple"
      ) +
      ## Supply descriptive labels.  
      labs(
        title = "Plot 1.1.1", 
        subtitle = "Aspect: Overall",
        x = "Weather Event Types \n",
        y = "Average Number of Fatalities\n"
      ) +
      ## Select a theme.
      theme_linedraw() + 
      ## Customize the selected theme.
      theme(
        ### Remove the legend.
        legend.position = "none",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        )
      )

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

The *Elementary Plot 1.1.2* displays **the average number of fatalities
for the 90% of cases with the lowest impact** caused by each weather
event type from all the observation that resulted in non-zero
fatalities.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of fatalities** they caused.  
(so it is NOT based on the average number of fatalities caused by the
90% of cases with the lowest impact of each weather event type).

The skewness of the number of fatalities for the observations of each
weather event type (based on which the average number of fatalities for
the 90% of cases with the lowest impact was computed) had been encoded
in the color of the bar associated with each of them.

    # Create the Elementary Plot 1.1.2 that displays 
    # the average number of fatalities by each weather event type 
    # for the 90% of its cases with the lowest impact.
    elementary_plot_1_1_2 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______fatalities,
        mapping = aes(
          x = AVRG_LOW,
          ### Reverse the order of the factors for the EVENT_TYPE variable 
          ### to display them alphabetically from top to bottom.
          y = factor(
            x = EVENT_TYPE, 
            levels = rev(x = levels(x = EVENT_TYPE)
            )
          ) 
        )
      ) +
      ## Draw a circle shaped point to the position that corresponds to 
      ## the average number of fatalities caused by each weather event type
      ## for the 90% of its cases with the lowest impact, 
      ## of which the color indicates the skewness of observations 
      ## based on which each average was computed.
      geom_point(
        mapping = aes(
          color = SKEWNESS_LOW
        ), 
        size = 3.5
      ) +
      ## Draw a line that visually associates each weather event type 
      ## with its respective average number of fatalities 
      ## for the 90% of its cases with the lowest impact.
      geom_linerange(
        mapping = aes(
          xmin = 0, 
          xmax = AVRG_LOW, 
          group = EVENT_TYPE, 
          color = SKEWNESS_LOW
        )
      ) +
      ## Draw a number that indicates the rank assigned to each weather event type 
      ## (from the most harmful to the least) based on the overall average number
      ## number of fatalities it caused inside the square point 
      ## that displays the average.
      geom_text(
        mapping = aes(
          label = RANK
        ), 
        size = 2
        ) +
      ## Adjust the scale for the color of each point.
      scale_color_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of fatalities for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.1 will be composed from the four elementary plots.
        limits = c(-2, 14), 
        midpoint = 7, 
        low = "lightgreen",
        mid = "orange",
        high = "purple"
        ) +
      ## Supply descriptive labels. 
      labs(
        title = "Plot 1.1.2",
        subtitle = "Aspect: 90% of cases with the lowest impact",
        x = paste0(
          "Average Number of Fatalities for the 90% ", "\n",
          "of Observations with the Lowest Impact" 
        )
      ) +
      ## Select a theme.
      theme_linedraw() + 
      ## Customize the selected theme.
      theme(
        ### Remove the legend.
        legend.position = "none",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        ),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank()
      )

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

The *Plot 1.1.3* displays **the average number of fatalities for the 10%
of cases with the highest impact** caused by each weather event type
from all the observation that resulted in non-zero fatalities.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of fatalities** they caused.  
(so it is NOT based on the average number of fatalities caused by the
10% of cases with the highest impact of each weather event type).

The skewness of the number of fatalities for the observations of each
weather event type (based on which the average number of fatalities for
the 10% of cases with the highest impact was computed) had been encoded
in the color of the bar associated with each of them.

    # Create the Elementary Plot 1.1.3 that displays 
    # the average number of fatalities by each weather event type 
    # for the 10% of its cases with the highest impact.
    elementary_plot_1_1_3 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______fatalities,
        mapping = aes(
          x = AVRG_HIGH,
          ### Reverse the order of the factors for the EVENT_TYPE variable 
          ### to display them alphabetically from top to bottom.
          y = factor(
            x = EVENT_TYPE, 
            levels = rev(x = levels(x = EVENT_TYPE)
            )
          ) 
        )
      ) +
      ## Draw a diamond shaped point to the position that corresponds to 
      ## the average number of fatalities caused by each weather event type
      ## for the 10% of its cases with the highest impact, 
      ## of which the color indicates the skewness of observations 
      ## based on which each average was computed.
      geom_point(
        mapping = aes(
          color = SKEWNESS_HIGH
        ), 
        shape = 18, 
        size = 4.5
      ) +
      ## Draw a line that visually associates each weather event type 
      ## with its respective average number of fatalities 
      ## for the 10% of its cases with the highest impact.
      geom_linerange(
        mapping = aes(
          xmin = 0, 
          xmax = AVRG_HIGH, 
          group = EVENT_TYPE, 
          color = SKEWNESS_HIGH
        )
      ) +
      ## Draw a number that indicates the rank assigned to each weather event type 
      ## (from the most harmful to the least) based on the overall average number
      ## number of fatalities it caused inside the square point 
      ## that displays the average.
      geom_text(
        mapping = aes(
          label = RANK
        ),
        size = 2
      ) +
      ## Adjust the scale for the color of each point.
      scale_color_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of fatalities for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.1 will be composed from the four elementary plots.
        limits = c(-2, 14), 
        midpoint = 7, 
        low = "lightgreen", 
        mid = "orange", 
        high = "purple"
      ) +
      ## Supply descriptive labels. 
      labs(
        title = "Plot 1.1.3",
        subtitle ="Aspect: 10% of cases with the highest impact",
        x = paste0(
          "Average Number of Fatalities for the 10% ", "\n", 
          "of Observations with the Highest Impact" 
        )
      ) +
      ## Select a theme.
      theme_linedraw() + 
      ## Customize the selected theme.
      theme(
        ### Remove the legend.
        legend.position = "none",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        ),
        ### Remove the text, ticks and title of the y axis 
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank()
      )

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

The *Plot 1.1.4* displays a compact overview of all three aspect that
were examined for the harm on population health with respect to
fatalities.

For each weather event type, the comparison was visualized for **the
average number of fatalities for the 90% of cases with the lowest
impact** versus **the average number of fatalities for the 10% of cases
with the highest impact**.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of fatalities** they caused.

The skewness of the number of fatalities for the observations of each
weather event type (based on which the overall number of fatalities was
computed) had been encoded in the color of the bar associated with each
of them.

    # Create the Elementary Plot 1.1.4 that displays 
    # by each weather event type the comparison of 
    # the average number of fatalities 
    # for the 90% of cases with the lowest impact
    # versus the average number of fatalities 
    # for the 10% of cases with the highest impact.
    elementary_plot_1_1_4 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______fatalities,
        mapping = aes(
          x = AVRG_HIGH, 
          y = AVRG_LOW
        )
      ) +
      geom_point(
        mapping = aes(
          fill = SKEWNESS
        ), 
        shape = 21
      ) +
      ## Draw a label with a number that indicates the rank assigned 
      ## to each weather event type (from the most harmful to the least) 
      ## based on the overall average number of fatalities it caused.
      geom_label_repel(
        mapping = aes(
          label = RANK, 
          fill = SKEWNESS
        ),
        size = 2.5
      ) +
      ## Adjust the scale for the fill of each label.
      scale_fill_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of fatalities for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.1 will be composed from the four elementary plots.
        limits = c(-2, 14),
        midpoint = 7, 
        low = "lightgreen",
        mid = "orange", 
        high = "purple"
        ) +
      ## Set proper limits to the plot.
        xlim(c(1, 18)) +
        ylim(c(0.75, 2)) +
      ## Supply descriptive labels. 
      labs(
        title = "Plot 1.1.4",
        subtitle = paste0(
          "Comparison of the average number of fatalities ", 
          "for the 90% of observations with the lowest impact ", 
          "versus the average number of fatalities ", 
          "for the 10% of observations with highest impact. "
        ),
        x = paste0(
          "Average Number of Fatalities by each Weather Event Type ", 
          "for the 10% of its Observations with the Highest Impact"
        ),
        y = paste0(
          "Average Number of Fatalities by each Weather Event Type ", "\n", 
          "for the 90% of its Observations with the Lowest Impact."
        ),
        ### Add a descriptive label for the legend.
        fill = paste0(
          "The color indicates the skewness ",
          "of fatalities for the each weather event type. ",
          "(the color scale is unique for all four plots of PART 1) ", "\n",
          "When the color of a bar is gray, the skewness was indeterminable ",
          "due to the fact that all observations for that weather event type ",
          "took the same value."
        )
      ) +
      ## Select a theme.
      theme_linedraw() +
      ## Customize the selected theme.
      theme(
        ### Adjust the legend.
        legend.position = "bottom",
        legend.direction = "horizontal",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        )
      )

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

The four elementary plots that were created from the results of the
summary for the harm on population health with respect to fatalities by
each weather event type, were combined to construct a single multiplot
that displays the complete picture for this perspective.

    # Create a multiplot that displays the overview of the summary 
    # for the harm on population health with respect to fatalities
    # by each weather event type.
    multiplot_1_1 <- arrangeGrob(
      grobs = list(
          
        # Title
        textGrob(
          label = paste0(
            "\n",
            "PART 1: Harm on population health by each weather event type ", 
            "with the respect to fatalities ", "\n", 
            "based on the cases of weather events ", 
            "that resulted in non-zero fatalities.", "\n", 
            "\n"
          ),
           gp=gpar(
             fontsize = 16, 
             fontface = "bold"
           )
        ),
        
        # Subtitle
        textGrob(
          label = paste0(
              "\n", 
              "The results include only the weather event types, ", 
              "for which at least 10 observations ", 
              "that resulted in non-zero fatalities were available. ", "\n",
              "The number associated with each weather event type ", 
              "represents the rank (from the most harmful to the least) ", 
              "which was assigned based on the overall average number of fatalities.", "\n",
              "Because for most of the weather event types ", 
              "high positive skewness was observed for the number of fatalities, ",
              "the average of the 90% of cases with lowest impact ", "\n",
              "and the 10% of cases with highest impact were reported ", 
              "to provide a more representative picture of their consequences.","\n",
              "\n"
          ),
           gp=gpar(
             fontsize = 14, 
             fontface = "bold"
           )
        ),
        
        # Plot 1.1.1
        # Elementary plot for the average number of fatalities 
        # by each weather event type for all cases.
        elementary_plot_1_1_1,
        
        # ELEMENTARY PLOT 1.1.2
        # Elementary plot for the average number of fatalities 
        # by each weather event type for 90% of cases with the lowest impact.
        elementary_plot_1_1_2,
        
        # ELEMENTARY PLOT 1.1.3
        # Elementary plot for the average number of fatalities 
        # by each weather event type for 10% of cases with the highest impact.
        elementary_plot_1_1_3,
        
        # ELEMENTARY PLOT 1.1.4
        # Elementary Plot 1.1.4 for the comparison of 
        # the average number of fatalities 
        # for the 90% of cases with the lowest impact versus 
        # the 10% of cases with the highest impact.
        elementary_plot_1_1_4
      ),
      # Set the layout for this elementary plots
      layout_matrix = 
        matrix(
          c(1,1,1,1,1,1,1,1,1,
            2,2,2,2,2,2,2,2,2,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6
          ),
          byrow = TRUE, 
          nrow = 13
        )
    )

*(Note that the Multiplot 1.1 was NOT presented in this section due to
the restrictions imposed by the assignment to include in the report at
least 1 but no more than 3 figures. It can be examined at the subsection
[10.1.1 Overview of results for the harm on population
health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)
of the chapter [10 RESULTS](#ind-10--RESULTS), were the Figure 1 was
presented, of which the Multiplot 1.1 constitutes the PART 1.)*

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

<font size="3"><u><strong>Summary</strong></u></font>

The required variables and the target data subset of observations for
the harm on population health with respect to injuries were extracted
from the table with the processed data, and processed to create a new
variable that divided the observations for each of the included weather
event types to two supplementary groups:

-   the 90% of observations with the lowest impact  
-   the 10% of observations with the highest impact

before the information for the harm on population health with respect to
injuries was summarized by each weather event type.

Three aspects were examined:

1.  The overall average number of injuries by each weather event type.  
2.  The average number of injuries by each weather event type for the
    90% of cases with the lowest impact.  
3.  The average number of injuries by each weather event type for the
    10% of cases with the highest impact.

For each aspect, the average number of injuries by each weather event
type, the number of its available observations (based on which the
average was computed) and their skewness were examined.

The overall average number of injuries was used as the main criterion to
determine which weather events caused the most harm on population health
with respect to injuries but it is important to take into account the
other two aspect that were presented in order to obtain a more
insightful and complete ‘picture’ of their consequences, (especially
given the fact that for most of the weather event types, the injuries
were highly positively skewed).

The table with results for the harm on population health with respect to
injuries by each weather event type were presented at the subsection
[10.1.3 Most harmful event types with respect to
injuries](#ind-10-1-3--Most-harmful-weather-event-types-with-respect-to-injuries)
of the chapter [10 RESULTS](#ind-10--RESULTS).

Finally the *Multiplot 1.2* was created to visualize the results of the
harm on population health with respect to injuries by each weather event
type.

\*(Note that neither the Multiplot 1.1 nor the elementary plots that it
contains were presented in this section due to the restrictions imposed
by the assignment to include in the report at least 1 but no more than 3
figures. It can be examined at the subsection [10.1.1 Overview of
results for the harm on population
health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)
at the chapter [10 RESULTS](#ind-10--RESULTS), where the Figure 1 was
presented, of which the Multiplot 1.2 constitutes the PART 2.)

<font size="3"><u><strong>Steps</strong></u></font>

-   [8.2.1 Extract the target data for harm on population health with
    respect to
    injuries](#ind-8-2-1--Extract-the-target-data-for-harm-on-population-health-with-respect-to-injuries)
    -   The target data subset of observations needed to evaluate the
        harm on population health with respect to injuries by each
        weather event type was extracted from the table with the
        processed data.  
-   [8.2.2 Process the target data for harm on population health with
    respect to
    injuries](#ind-8-2-2--Process-the-target-data-for-harm-on-population-health-with-respect-to-injuries)
    -   The table with target data subset for the harm on population
        with respect to injuries was processed to create the table with
        processed data for the harm on population health with respect to
        injuries.  
-   [8.2.3 Summarize the processed data for harm on population health
    with respect to injuries by each weather event
    type](#ind-8-2-3--Summarize-the-processed-data-for-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)
    -   The harm on population health with respect to injuries by each
        weather event type was evaluated over various aspects.  
-   [8.2.4 Visualize the results of the summary for the harm on
    population health with respect to injuries by each weather event
    type](#ind-8-2-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-injuries-by-each-weather-event-type)
    -   The Multiplot 1.2 that presents the results of the summary for
        the harm on population health with respect to injuries by each
        weather event type was created.
        -   [8.2.4.1 Create the components of Multiplot
            1.2](#ind-8-2-4-1--Create-the-components-of-Multiplot-1-2)
            -   Creates the four elementary plot that constitute the
                Multiplot 1.2:
                -   [8.2.4.1.1 Create The Plot
                    1.2.1](#ind-8-2-4-1-1--Create-The-Plot-1-2-1)
                    -   Displays the overall average number of injuries
                        caused by each weather event type based on all
                        the cases of weather events that resulted in
                        non-zero injuries.  
                -   [8.2.4.1.2 Create The Plot
                    1.2.2](#ind-8-2-4-1-2--Create-The-Plot-1-2-2)
                    -   Displays the average number of injuries caused
                        by each weather event type based on 90% of
                        weather events with the lowest impact (for each
                        weather event type) that resulted in non-zero
                        injuries.  
                -   [8.2.4.1.3 Create The Plot
                    1.2.3](#ind-8-2-4-1-3--Create-The-Plot-1-2-3)
                    -   Displays the average number of injuries caused
                        by each weather event type based on 10% of
                        weather events with the highest impact (for each
                        weather event type) that resulted in non-zero
                        injuries.  
                -   [8.2.4.1.4 Create The Plot
                    1.2.4](#ind-8-2-4-1-4--Create-The-Plot-1-2-4)
                    -   Displays a comparison for each weather event
                        type, of the average number of fatalities for
                        the 90% of its observations with the lowest
                        impact versus the average number of injuries for
                        the 10% of its observations with the highest
                        impact based only on the weather events that
                        resulted in non-zero injuries.  
        -   [8.2.4.2 Compose the Multiplot
            1.2](#ind-8-2-4-2--Compose-the-Multiplot-1-2)
            -   Combines the four elementary plots to create the
                Multiplot 1.1.

<br>

<font size="1">[back to start of this
section](#ind-8-2--Harm-On-Population-Health-With-Respect-To-Injuries-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 8.2.1 Extract the target data for harm on population health with respect to injuries

In order to examine the harm on population health with respect to
injuries caused by each weather event type, the variables *REFNUM*,
*EVENT\_TYPE* and *INJURIES* were selected from the table with the
processed data and **only the observations that refer to weather events
that resulted in non-zero injuries** were extracted.

Furthermore, in an attempt to avoid highly misleading statistics due to
the small number of observations for some of the weather event types, a
lowest bound of 10 weather events that caused non zero injuries (for
each of the included weather event types) was selected (subjectively by
the analyst) and applied.

This lowest bound, although it may seem (and generally it is) not enough
to get trustworthy statistics, it was considered to be *“good enough”*
taking into account that :

1.  the analysis focuses in describing historical data without trying to
    make inferences that would demand substantially bigger samples,
    although any statistic based on less than 10 observations could not
    be taken seriously especially in cases (such as in this analysis)
    where the distribution of injuries for each weather event type was
    skewed.
2.  a period of 10 years (from 2001 to 2011) in which the observations
    that were used in the analysis occurred, is relatively small time to
    produce big samples of weather events that caused non zero injuries
    for some the weather event types. Thus, if a highest bound was
    selected to get more robust statistics such as samples of 100 or
    300, the majority of weather event types would have been excluded,
    making the results of the analysis trivial.

<!-- -->

    # Extract the required variables and the target data subset of observations 
    # for the harm on population health with respect to injuries.
    target_data_____harm_on_population_health_____injuries <- processed_data[
      ## Extract only the observations that have resulted in non-zero injuries.
      INJURIES > 0,
      ## Select only the relevant variables. 
      list(REFNUM, EVENT_TYPE, INJURIES)
      ][
        ### Keep only the observations that correspond to the weather event types 
        ### for which there are at least 10 weather events available.
        EVENT_TYPE %in% 
          names(table(EVENT_TYPE)[table(EVENT_TYPE) >= 10])
        ]

The table with the target data for the harm on population health with
respect to injuries consist of 5581 observations.

    # Print the structure of the table with the target data subset 
    # for the harm on population health with respect to injuries.
    str(target_data_____harm_on_population_health_____injuries)

    ## Classes 'data.table' and 'data.frame':   5581 obs. of  3 variables:
    ##  $ REFNUM    : int  413614 413649 413652 413663 413737 413743 413746 413757 413763 413795 ...
    ##  $ EVENT_TYPE: chr  "TORNADO" "THUNDERSTORM WIND" "THUNDERSTORM WIND" "THUNDERSTORM WIND" ...
    ##  $ INJURIES  : int  4 2 4 1 6 1 1 1 1 1 ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

The variable *EVENT\_TYPE* includes 27 distinct weather event types, for
most of which the variable *INJURIES* was highly positively skewed.

    # Create a kable to present some facts about the table with the target data 
    # for the harm on population health with respect to injuries.
    kable(
      x = target_data_____harm_on_population_health_____injuries[
        order(EVENT_TYPE), 
        list(
          "N" = .N, 
          "SKEWNESS" = round(skewness(INJURIES), 4)
        ), 
        by = EVENT_TYPE
        ],
      caption = paste0(
        "Table 8.2.1-1: ",
        "Facts about the table with the target data subset of observations ", 
        "for the harm on population health with respect to injuries."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = "The skewness was rounded to 4 decimal places."
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 8.2.1-1: Facts about the table with the target data subset of
observations for the harm on population health with respect to injuries.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
EVENT\_TYPE
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
N
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
SKEWNESS
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
AVALANCHE
</td>
<td style="text-align:right;">
80
</td>
<td style="text-align:right;">
3.2455
</td>
</tr>
<tr>
<td style="text-align:left;">
BLIZZARD
</td>
<td style="text-align:right;">
12
</td>
<td style="text-align:right;">
2.0441
</td>
</tr>
<tr>
<td style="text-align:left;">
DEBRIS FLOW
</td>
<td style="text-align:right;">
12
</td>
<td style="text-align:right;">
0.6818
</td>
</tr>
<tr>
<td style="text-align:left;">
DENSE FOG
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
1.4182
</td>
</tr>
<tr>
<td style="text-align:left;">
DUST DEVIL
</td>
<td style="text-align:right;">
10
</td>
<td style="text-align:right;">
1.8590
</td>
</tr>
<tr>
<td style="text-align:left;">
DUST STORM
</td>
<td style="text-align:right;">
22
</td>
<td style="text-align:right;">
1.5095
</td>
</tr>
<tr>
<td style="text-align:left;">
EXCESSIVE HEAT
</td>
<td style="text-align:right;">
86
</td>
<td style="text-align:right;">
4.1751
</td>
</tr>
<tr>
<td style="text-align:left;">
FLASH FLOOD
</td>
<td style="text-align:right;">
190
</td>
<td style="text-align:right;">
9.4282
</td>
</tr>
<tr>
<td style="text-align:left;">
FLOOD
</td>
<td style="text-align:right;">
61
</td>
<td style="text-align:right;">
4.6609
</td>
</tr>
<tr>
<td style="text-align:left;">
HAIL
</td>
<td style="text-align:right;">
109
</td>
<td style="text-align:right;">
5.8015
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAT
</td>
<td style="text-align:right;">
36
</td>
<td style="text-align:right;">
2.1619
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAVY RAIN
</td>
<td style="text-align:right;">
50
</td>
<td style="text-align:right;">
4.0900
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAVY SNOW
</td>
<td style="text-align:right;">
31
</td>
<td style="text-align:right;">
4.3682
</td>
</tr>
<tr>
<td style="text-align:left;">
HIGH SURF
</td>
<td style="text-align:right;">
54
</td>
<td style="text-align:right;">
5.7692
</td>
</tr>
<tr>
<td style="text-align:left;">
HIGH WIND
</td>
<td style="text-align:right;">
220
</td>
<td style="text-align:right;">
10.7119
</td>
</tr>
<tr>
<td style="text-align:left;">
HURRICANE/TYPHOON
</td>
<td style="text-align:right;">
15
</td>
<td style="text-align:right;">
2.7730
</td>
</tr>
<tr>
<td style="text-align:left;">
ICE STORM
</td>
<td style="text-align:right;">
25
</td>
<td style="text-align:right;">
3.4714
</td>
</tr>
<tr>
<td style="text-align:left;">
LIGHTNING
</td>
<td style="text-align:right;">
1411
</td>
<td style="text-align:right;">
6.6360
</td>
</tr>
<tr>
<td style="text-align:left;">
MARINE THUNDERSTORM WIND
</td>
<td style="text-align:right;">
11
</td>
<td style="text-align:right;">
2.2867
</td>
</tr>
<tr>
<td style="text-align:left;">
RIP CURRENT
</td>
<td style="text-align:right;">
149
</td>
<td style="text-align:right;">
4.5935
</td>
</tr>
<tr>
<td style="text-align:left;">
STRONG WIND
</td>
<td style="text-align:right;">
142
</td>
<td style="text-align:right;">
2.9883
</td>
</tr>
<tr>
<td style="text-align:left;">
THUNDERSTORM WIND
</td>
<td style="text-align:right;">
1236
</td>
<td style="text-align:right;">
9.0224
</td>
</tr>
<tr>
<td style="text-align:left;">
TORNADO
</td>
<td style="text-align:right;">
1252
</td>
<td style="text-align:right;">
16.3086
</td>
</tr>
<tr>
<td style="text-align:left;">
TROPICAL STORM
</td>
<td style="text-align:right;">
19
</td>
<td style="text-align:right;">
3.8833
</td>
</tr>
<tr>
<td style="text-align:left;">
WILDFIRE
</td>
<td style="text-align:right;">
230
</td>
<td style="text-align:right;">
5.8510
</td>
</tr>
<tr>
<td style="text-align:left;">
WINTER STORM
</td>
<td style="text-align:right;">
51
</td>
<td style="text-align:right;">
3.1228
</td>
</tr>
<tr>
<td style="text-align:left;">
WINTER WEATHER
</td>
<td style="text-align:right;">
47
</td>
<td style="text-align:right;">
4.1679
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The skewness was rounded to 4 decimal places.
</td>
</tr>
</tfoot>
</table>
It was worth noting that for the weather event types with highest number
of observations there was highest skewness for the values of injuries,
indicating that the corresponding distribution of injuries has a heavy
tail that wasn’t possible to be observed when few observation were
available.

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

To create the table with the processed data for the harm on population
health with respect to injuries from the corresponding target data
subset for this perspective, a new variable was created that divides the
observations for each of the included weather event types in two
complementary levels:

-   one that contains the 90% of cases with lowest impact  
-   the other that contains the 10% of cases with highest impact

This decision was made due to the high skewness that was observed for
the values of the variable *INJURIES* for most weather event types,
which indicates that the underlining distributions of such phenomena has
a heavy tail that causes this heterogeneity on the observations. As a
result a small number of injuries were observed for the majority of
cases that resulted in non-zero fatalities while in the few cases with
the highest impact they caused lots of injuries.

Having in mind that the average number of injuries will be used to
determine which weather event types were the most harmful to population
health (with respect to injuries) combined with the fact that the
average doesn’t represent well the distribution of variables with high
skewness, as it is highly affected by the most extreme values, it was
considered necessary to examine the subsets created by those two levels
in order to obtain an insightful picture.

    # Create the table with the processed data 
    # for the harm on population health with respect to injuries.
    processed_data_____harm_on_population_health_____injuries <- 
      target_data_____harm_on_population_health_____injuries[
        ,
        ## Create a new variable divides the observations
        ## for each weather event into two supplementary groups:  
        ##   - the 90% of weather events that resulted in lowest fatalities
        ##   - the 10% of weather events that resulted in highest fatalities
        BIN_GROUP_PER_EVENT_TYPE := (function(x, p_bins) {
          
          # adds 0 and 1 in the vector supplied at the argument 'p_bins' 
          # to the start and the end respectively  
          # the supplied percentiles if they are missing 
          # and sort them ascending
          p_bins_increasing <- sort(c(0, p_bins, 1))
          
          # creates the character strings that labels of the bins by the values supplied at 
          # the argument 'p_bins' that will be the values of the new variable
          bin_labels <- paste0("(", p_bins_increasing[-length(p_bins_increasing)]*100,
                               "% - ", p_bins_increasing[-1]*100, "%]")
          
          # identify the number of occurrences that correspond to each label
          n_times <- vapply(2:length(p_bins_increasing),
                            function(i) {
                              as.integer(floor(length(x) * p_bins_increasing[i]) -
                                           floor(length(x) * p_bins_increasing[i - 1]))
                            }, integer(1))
          
          # multiply each label with the number of its occurrences
          x_bins_expanded <- rep(x = bin_labels, times = n_times)
          
          # order the label to much the values of the corresponding vector
          x_bins_expanded_reordered <- x_bins_expanded[order(seq_along(x)[order(x)])]
          
          ## Coerce the character vector with the labels of bins to a factor
          x_bins_factor <- factor(x_bins_expanded_reordered, labels = bin_labels, ordered = TRUE)
          
        })(INJURIES, 0.9)
        , by = EVENT_TYPE
      ][
        ## Coerce the EVENT_VARIABLE to factor
        , EVENT_TYPE := as.factor(EVENT_TYPE) 
      ]

The table with the processed data for the harm on population health with
respect to injuries contains 4 variables:

1.  **REFNUM** (int) : an id that uniquely identifies each observation  
2.  **EVENT\_TYPE** (Factor w/ 27 levels) : the type of each weather
    event
3.  **INJURIES** (int) : the number of injuries  
4.  **BIN\_GROUP\_PER\_EVENT\_TYPE** (Ord.factor w/ 2 levels) : a factor
    that divides the observations for each weather event type to two
    complementary levels, one with the 90% of observations with the
    lowest impact and another with the 10% of observations with the
    highest impact.

and 5581 observations.

    # Print the structure of the table with the processed data 
    # for the harm on population health with respect to injuries.
    str(processed_data_____harm_on_population_health_____injuries)

    ## Classes 'data.table' and 'data.frame':   5581 obs. of  4 variables:
    ##  $ REFNUM                  : int  413614 413649 413652 413663 413737 413743 413746 413757 413763 413795 ...
    ##  $ EVENT_TYPE              : Factor w/ 27 levels "AVALANCHE","BLIZZARD",..: 23 22 22 22 22 22 22 23 15 18 ...
    ##  $ INJURIES                : int  4 2 4 1 6 1 1 1 1 1 ...
    ##  $ BIN_GROUP_PER_EVENT_TYPE: Ord.factor w/ 2 levels "(0% - 90%]"<"(90% - 100%]": 1 1 1 1 2 1 1 1 1 1 ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

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

To evaluate the harm on population health by each weather event type
with respect to injuries a simplistic approach was adopted :

-   the weather event types were ranked from the most harmful to the
    least based on the overall average number of injuries of the weather
    events that resulted in non-zero injuries

The overall average number of injuries caused by each weather event type
was initially examined along with the skewness of the number of injuries
for each weather event type. In most cases the skewness was high (or
even extremely high), so it was possible that the overall mean
misrepresented the consequences of each weather event type.

That is the reason why the average number of injuries for 90% of weather
events with the lowest impact versus the average number of injuries for
the 10% of weather events with the highest impact were also computed and
examined.

**It is highlighted that for the average number of injuries that refers
to the 10% of the cases that had the highest impact, there were few
observations available for a lot of weather event types and the
corresponding mean values should be interpreted with caution.**

    # Create the table with the summary for the harm on population health 
    # with respect to injuries for each weather event type.
    summary_____harm_on_population_health______injuries <- 
      processed_data_____harm_on_population_health_____injuries[
      ,
      list(
        ## The total number of observation by each weather event type.
        "N" = .N,
        ## The average number of injuries caused by each weather event type.
        "AVRG" = round(mean(INJURIES), 2),
        ## The skewness of injuries for the observations by each weather event type.
        "SKEWNESS" = round(skewness(INJURIES), 4),
        ## The number of observations for the 90% of cases with the lowest impact 
        ## by each weather event type.
        "N_LOW" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(0% - 90%]" , .N],
        ## The average number of injuries caused by each weather event type 
        ## for the 90% of cases with the lowest impact.
        "AVRG_LOW" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(0% - 90%]" , round(mean(INJURIES), 2)],
        ## The skewness of injuries for the 90% of cases with the lowest impact 
        ## by each weather event type.
        "SKEWNESS_LOW" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(0% - 90%]" , round(skewness(INJURIES), 4)],
        ## The number of observations for the 10% of cases with the lowest impact 
        ## by each weather event type.
        "N_HIGH" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(90% - 100%]" , .N],
        ## The average number of injuries caused by each weather event type 
        ## for the 10% of cases with the highest impact.
        "AVRG_HIGH" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(90% - 100%]" , round(mean(INJURIES), 2)],
        ## The skewness of injuries for the 10% of cases with the highest impact 
        ## by each weather event type.
        "SKEWNESS_HIGH" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(90% - 100%]" , round(skewness(INJURIES), 4)]
      ),
      by = "EVENT_TYPE"
      ][
        ## The average number of injuries is used to order the rows of the table
        ## from the most harmful weather event type to the least.
        order(-AVRG),
        ## Create a variable with the rank of the harmness of each weather event type.
        RANK := 1:length(EVENT_TYPE)
        ][
          ,
          ## Reorder the variables at the table.
          list(
            RANK, EVENT_TYPE, N, AVRG, SKEWNESS, N_LOW, AVRG_LOW, SKEWNESS_LOW, N_HIGH, AVRG_HIGH, SKEWNESS_HIGH
          )
          ]

The results of the table with the summary for the harm on population
health with respect to injuries by each weather event type that was
created in this section were presented at the subsection [10.1.3 Most
harmful event types with respect to
injuries](#ind-10-1-3--Most-harmful-weather-event-types-with-respect-to-injuries)
of the chapter [10 RESULTS](#ind-10--RESULTS).

The table with the summary for the harm on population health with
respect to injuries by each weather event type was exported (as an R
file), in the folder of the working directory:

-   *outputs –&gt; harm\_on\_population\_health –&gt; results*

with filename:

-   *summary\_\_\_\_\_\_harm\_on\_population\_health\_\_\_\_\_\_injuries.R*

<!-- -->

    # Supply the filepath at which the table with the summary
    # for the harm on population health will be exported.
    filepath_____summary_____harm_on_population_health______injuries <-
      file.path(
        directory_tree_____outputs[[
          "filepath_____outputs_____harm_on_population_health_____results"
        ]],
        "summary_____harm_on_population_health______injuries.R"
      )

    # Export the table with the summary for the harm on population health
    # with respect to injuries.
    saveRDS(
      object = summary_____harm_on_population_health______injuries,
      file = filepath_____summary_____harm_on_population_health______injuries
    )

*The main reason for exporting the file with the summary for the harm on
population health with respect to injuries by each weather event type
was to supply a checkpoint for any attempts to reproduce the analysis.*

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

From the table with the summary for the harm on population health by
each weather event type with respect to injuries the **Multiplot 1.2**
was created to present an overview of the results for the three
different aspects that were examined for this perspective.

Four elementary plots were
[created](#ind-8-2-4-1--Create-the-components-of-Multiplot-1-2):

-   [8.2.4.1.1 Create The Plot
    1.2.1](#ind-8-2-4-1-1--Create-The-Plot-1-2-1)
    -   Displays the overall average number of injuries caused by each
        weather event type based on all the cases of weather events that
        resulted in non-zero injuries.  
-   [8.2.4.1.2 Create The Plot
    1.2.2](#ind-8-2-4-1-2--Create-The-Plot-1-2-2)
    -   Displays the average number of injuries caused by each weather
        event type based on 90% of weather events with the lowest impact
        (for each weather event type) that resulted in non-zero
        injuries.  
-   [8.2.4.1.3 Create The Plot
    1.2.3](#ind-8-2-4-1-3--Create-The-Plot-1-2-3)
    -   Displays the average number of injuries caused by each weather
        event type based on 10% of weather events with the highest
        impact (for each weather event type) that resulted in non-zero
        injuries.  
-   [8.2.4.1.4 Create The Plot
    1.2.4](#ind-8-2-4-1-4--Create-The-Plot-1-2-4)
    -   Displays a comparison for each weather event type, of the
        average number of fatalities for the 90% of its observations
        with the lowest impact versus the average number of injuries for
        the 10% of its observations with the highest impact based only
        on the weather events that resulted in non-zero injuries.

which were then [combined](#ind-8-2-4-2--Compose-the-Multiplot-1-2) in
order to obtain the **Multiplot 1.2**.

It constitutes the *PART 2* of the *Figure 1* that displays the overview
of the harm on population health by each weather event type.

*(Note that neither the Multiplot 1.1 nor the elementary plots that it
contains were presented in this section due to the restrictions imposed
by the assignment to include in the report at least 1 but no more than 3
figures. It can be examined at the subsection [10.1.1 Overview of
results for the harm on population
health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)
at the chapter [10 RESULTS](#ind-10--RESULTS), were the Figure 1 was
presented, of which the Multiplot 1.2 constitutes the PART 2.)*

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

Creates four elementary plots to visualize the results for the aspects
that were examined for the harm on population health with respect to
injuries by each weather event type.

-   [8.2.4.1.1 Create The Plot
    1.2.1](#ind-8-2-4-1-1--Create-The-Plot-1-2-1)
    -   Displays the overall average number of injuries caused by each
        weather event type based on all the cases of weather events that
        resulted in non-zero injuries.  
-   [8.2.4.1.2 Create The Plot
    1.2.2](#ind-8-2-4-1-2--Create-The-Plot-1-2-2)
    -   Displays the average number of injuries caused by each weather
        event type based on 90% of weather events with the lowest impact
        (for each weather event type) that resulted in non-zero
        injuries.  
-   [8.2.4.1.3 Create The Plot
    1.2.3](#ind-8-2-4-1-3--Create-The-Plot-1-2-3)
    -   Displays the average number of injuries caused by each weather
        event type based on 10% of weather events with the highest
        impact (for each weather event type) that resulted in non-zero
        injuries.  
-   [8.2.4.1.4 Create The Plot
    1.2.4](#ind-8-2-4-1-4--Create-The-Plot-1-2-4)
    -   Displays a comparison for each weather event type, of the
        average number of fatalities for the 90% of its observations
        with the lowest impact versus the average number of injuries for
        the 10% of its observations with the highest impact based only
        on the weather events that resulted in non-zero injuries.

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

The *Plot 1.2.1* displays **the overall average number of injuries**
caused by each weather event type taking into account all and only the
observation that resulted in non-zero injuries.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of injuries** they caused.

The skewness of the number of injuries for the observations of each
weather event type (based on which the overall number of injuries was
computed) had been encoded in the color of the bar associated with each
of them.

    # Create the Elementary Plot 1.2.1 that displays 
    # the overall average number of injuries 
    # by each weather event type for all cases. 
    elementary_plot_1_2_1 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______injuries,
        mapping = aes(
          x = AVRG,
          ### Reverse the order of the factors for the EVENT_TYPE variable 
          ### to make them displayed alphabetically from top to bottom.
          y = factor(
            x = EVENT_TYPE, 
            levels = rev(x = levels(x = EVENT_TYPE)
            )
          ) 
        )
      ) +
      ## Draw a square shaped point to the position that corresponds to 
      ## the average number of injuries caused by each weather event type, 
      ## of which the color indicates the skewness of observations 
      ## based on which each average was computed.
      geom_point(
        mapping = aes(color = SKEWNESS),
        shape = 15, 
        size = 4.5
      ) +
      ## Draw a line that visually associates each weather event type 
      ## with its respective average number of injuries.
      geom_linerange(
        mapping = aes(
          xmin = 0, 
          xmax = AVRG, 
          group = EVENT_TYPE, 
          color = SKEWNESS
        )
        ) +
      ## Draw a number that indicates the rank assigned to each weather event type 
      ## (from the most harmful to the least) based on the overall average number
      ## number of injuries it caused inside the square point 
      ## that displays the average.
      geom_text(
        mapping = aes(
          label = RANK
        ), 
        size = 2.5
      ) +
      ## Adjust the scale for the color of each point.
      scale_color_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of injuries for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.2 will be composed from the four elementary plots. 
        limits = c(-2, 17), 
        midpoint = 7, 
        low = "lightgreen", 
        mid = "orange", 
        high = "purple"
      ) +
      ## Supply descriptive labels.  
      labs(
        title = "Plot 1.2.1", 
        subtitle = "Aspect: Overall",
        x = "Weather Event Types \n",
        y = "Average Number of Injuries\n"
      ) +
      ## Select a theme.
      theme_linedraw() + 
      ## Customize the selected theme.
      theme(
        ### Remove the legend.
        legend.position = "none",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        )
      )

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

The *Elementary Plot 1.2.2* displays **the average number of injuries
for the 90% of cases with the lowest impact** caused by each weather
event type from all the observation that resulted in non-zero injuries.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of injuries** they caused.  
(so it is NOT based on the average number of injuries caused by the 90%
of cases with the lowest impact of each weather event type).

The skewness of the number of injuries for the observations of each
weather event type (based on which the average number of injuries for
the 90% of cases with the lowest impact was computed) had been encoded
in the color of the bar associated with each of them.

    # Create the Elementary Plot 1.2.2 that displays 
    # the average number of injuries by each weather event type 
    # for the 90% of its cases with the lowest impact.
    elementary_plot_1_2_2 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______injuries,
        mapping = aes(
          x = AVRG_LOW,
          ### Reverse the order of the factors for the EVENT_TYPE variable 
          ### to display them alphabetically from top to bottom.
          y = factor(
            x = EVENT_TYPE, 
            levels = rev(x = levels(x = EVENT_TYPE)
            )
          ) 
        )
      ) +
      ## Draw a circle shaped point to the position that corresponds to 
      ## the average number of injuries caused by each weather event type
      ## for the 90% of its cases with the lowest impact, 
      ## of which the color indicates the skewness of observations 
      ## based on which each average was computed.
      geom_point(
        mapping = aes(
          color = SKEWNESS_LOW
        ), 
        size = 3.5
      ) +
      ## Draw a line that visually associates each weather event type 
      ## with its respective average number of injuries 
      ## for the 90% of its cases with the lowest impact.
      geom_linerange(
        mapping = aes(
          xmin = 0, 
          xmax = AVRG_LOW, 
          group = EVENT_TYPE, 
          color = SKEWNESS_LOW
        )
      ) +
      ## Draw a number that indicates the rank assigned to each weather event type 
      ## (from the most harmful to the least) based on the overall average number
      ## number of injuries it caused inside the square point 
      ## that displays the average.
      geom_text(
        mapping = aes(
          label = RANK
        ), 
        size = 2
        ) +
      ## Adjust the scale for the color of each point.
      scale_color_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of injuries for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.2 will be composed from the four elementary plots.
        limits = c(-2, 17), 
        midpoint = 7, 
        low = "lightgreen",
        mid = "orange",
        high = "purple"
        ) +
      ## Supply descriptive labels. 
      labs(
        title = "Plot 1.2.2",
        subtitle = "Aspect: 90% of cases with the lowest impact",
        x = paste0(
          "Average Number of Injuries for the 90% ", "\n",
          "of Observations with the Lowest Impact" 
        )
      ) +
      ## Select a theme.
      theme_linedraw() + 
      ## Customize the selected theme.
      theme(
        ### Remove the legend.
        legend.position = "none",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        ),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank()
      )

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

The *Plot 1.2.3* displays **the average number of injuries for the 10%
of cases with the highest impact** caused by each weather event type
from all the observation that resulted in non-zero injuries.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of injuries** they caused.  
(so it is NOT based on the average number of injuries caused by the 10%
of cases with the highest impact of each weather event type).

The skewness of the number of injuries for the observations of each
weather event type (based on which the average number of injuries for
the 10% of cases with the highest impact was computed) had been encoded
in the color of the bar associated with each of them.

    # Create the Elementary Plot 1.2.3 that displays 
    # the average number of injuries by each weather event type 
    # for the 10% of its cases with the highest impact.
    elementary_plot_1_2_3 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______injuries,
        mapping = aes(
          x = AVRG_HIGH,
          ### Reverse the order of the factors for the EVENT_TYPE variable 
          ### to display them alphabetically from top to bottom.
          y = factor(
            x = EVENT_TYPE, 
            levels = rev(x = levels(x = EVENT_TYPE)
            )
          ) 
        )
      ) +
      ## Draw a diamond shaped point to the position that corresponds to 
      ## the average number of injuries caused by each weather event type
      ## for the 10% of its cases with the highest impact, 
      ## of which the color indicates the skewness of observations 
      ## based on which each average was computed.
      geom_point(
        mapping = aes(
          color = SKEWNESS_HIGH
        ), 
        shape = 18, 
        size = 4.5
      ) +
      ## Draw a line that visually associates each weather event type 
      ## with its respective average number of injuries 
      ## for the 10% of its cases with the highest impact.
      geom_linerange(
        mapping = aes(
          xmin = 0, 
          xmax = AVRG_HIGH, 
          group = EVENT_TYPE, 
          color = SKEWNESS_HIGH
        )
      ) +
      ## Draw a number that indicates the rank assigned to each weather event type 
      ## (from the most harmful to the least) based on the overall average number
      ## number of injuries it caused inside the square point 
      ## that displays the average.
      geom_text(
        mapping = aes(
          label = RANK
        ),
        size = 2
      ) +
      ## Adjust the scale for the color of each point.
      scale_color_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of injuries for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.2 will be composed from the four elementary plots.
        limits = c(-2, 17), 
        midpoint = 7, 
        low = "lightgreen", 
        mid = "orange", 
        high = "purple"
      ) +
      ## Supply descriptive labels. 
      labs(
        title = "Plot 1.2.3",
        subtitle ="Aspect: 10% of cases with the highest impact",
        x = paste0(
          "Average Number of Injuries for the 10% ", "\n", 
          "of Observations with the Highest Impact" 
        )
      ) +
      ## Select a theme.
      theme_linedraw() + 
      ## Customize the selected theme.
      theme(
        ### Remove the legend.
        legend.position = "none",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        ),
        ### Remove the text, ticks and title of the y axis 
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank()
      )

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

The *Plot 1.2.4* displays a compact overview of all three aspect that
were examined for the harm on population health with respect to
injuries.

For each weather event type, the comparison was visualized for **the
average number of injuries for the 90% of cases with the lowest impact**
versus **the average number of injuries for the 10% of cases with the
highest impact**.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of injuries** they caused.

The skewness of the number of injuries for the observations of each
weather event type (based on which the overall number of injuries was
computed) had been encoded in the color of the bar associated with each
of them.

    # Create the Elementary Plot 1.2.4 that displays 
    # by each weather event type the comparison of 
    # the average number of injuries 
    # for the 90% of cases with the lowest impact
    # versus the average number of injuries 
    # for the 10% of cases with the highest impact.
    elementary_plot_1_2_4 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______injuries,
        mapping = aes(
          x = AVRG_HIGH, 
          y = AVRG_LOW
        )
      ) +
      geom_point(
        mapping = aes(
          fill = SKEWNESS
        ), 
        shape = 21
      ) +
      ## Draw a label with a number that indicates the rank assigned 
      ## to each weather event type (from the most harmful to the least) 
      ## based on the overall average number of injuries it caused.
      geom_label_repel(
        mapping = aes(
          label = RANK, 
          fill = SKEWNESS
        ),
        size = 2.5
      ) +
      ## Adjust the scale for the fill of each label.
      scale_fill_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of injuries for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.2 will be composed from the four elementary plots.
        limits = c(-2, 17),
        midpoint = 7, 
        low = "lightgreen",
        mid = "orange", 
        high = "purple"
        ) +
      ## Set proper limits to the plot.
        xlim(c(-20, 550)) +
        ylim(c(-1, 17)) +
      ## Supply descriptive labels. 
      labs(
        title = "Plot 1.2.4",
        subtitle = paste0(
          "Comparison of the average number of injuries ", 
          "for the 90% of observations with the lowest impact ", 
          "versus the average number of injuries ", 
          "for the 10% of observations with highest impact. "
        ),
        x = paste0(
          "Average Number of Injuries by each Weather Event Type ", 
          "for the 10% of its Observations with the Highest Impact"
        ),
        y = paste0(
          "Average Number of Injuries by each Weather Event Type ", "\n", 
          "for the 90% of its Observations with the Lowest Impact."
        ),
        ### Add a descriptive label for the legend.
        fill = paste0(
          "The color indicates the skewness ",
          "of injuries for the each weather event type. ",
          "(the color scale is unique for all four plots of PART 2) ", "\n",
          "When the color of a bar is gray, the skewness was indeterminable ",
          "due to the fact that all observations for that weather event type ",
          "took the same value."
        )
      ) +
      ## Select a theme.
      theme_linedraw() +
      ## Customize the selected theme.
      theme(
        ### Adjust the legend.
        legend.position = "bottom",
        legend.direction = "horizontal",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        )
      )

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

The four elementary plots that were created from the results of the
summary for the harm on population health with respect to injuries by
each weather event type, were combined to construct a single multiplot
that displays the complete picture for this perspective.

    # Create a multiplot that displays the overview of the summary 
    # for the harm on population health with respect to injuries
    # by each weather event type.
    multiplot_1_2 <- arrangeGrob(
      grobs = list(
          
        # Title
        textGrob(
          label = paste0(
            "\n",
            "PART 2: Harm on population health by each weather event type ", 
            "with the respect to injuries ", "\n", 
            "based on the cases of weather events ", 
            "that resulted in non-zero injuries.", "\n", 
            "\n"
          ),
           gp=gpar(
             fontsize = 16, 
             fontface = "bold"
           )
        ),
        
        # Subtitle
        textGrob(
          label = paste0(
              "\n", 
              "The results include only the weather event types, ", 
              "for which at least 10 observations ", 
              "that resulted in non-zero injuries were available. ", "\n",
              "The number associated with each weather event type ", 
              "represents the rank (from the most harmful to the least) ", 
              "which was assigned based on the overall average number of injuries.", "\n",
              "Because for most of the weather event types ", 
              "high positive skewness was observed for the number of injuries, ",
              "the average of the 90% of cases with lowest impact ", "\n",
              "and the 10% of cases with highest impact were reported ", 
              "to provide a more representative picture of their consequences.","\n",
              "\n"
          ),
           gp=gpar(
             fontsize = 14, 
             fontface = "bold"
           )
        ),
        
        # Plot 1.2.1
        # Elementary plot for the average number of injuries 
        # by each weather event type for all cases.
        elementary_plot_1_2_1,
        
        # ELEMENTARY PLOT 1.2.2
        # Elementary plot for the average number of injuries 
        # by each weather event type for 90% of cases with the lowest impact.
        elementary_plot_1_2_2,
        
        # ELEMENTARY PLOT 1.2.3
        # Elementary plot for the average number of injuries 
        # by each weather event type for 10% of cases with the highest impact.
        elementary_plot_1_2_3,
        
        # ELEMENTARY PLOT 1.2.4
        # Elementary Plot 1.2.4 for the comparison of 
        # the average number of injuries 
        # for the 90% of cases with the lowest impact versus 
        # the 10% of cases with the highest impact.
        elementary_plot_1_2_4
      ),
      # Set the layout for this elementary plots
      layout_matrix = 
        matrix(
          c(1,1,1,1,1,1,1,1,1,
            2,2,2,2,2,2,2,2,2,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6
          ),
          byrow = TRUE, 
          nrow = 13
        )
    )

\*(Note that the Multiplot 1.2 was NOT presented in this section due to
the restrictions imposed by the assignment to include in the report at
least 1 but no more than 3 figures. It can be examined at the subsection
[10.1.1 Overview of results for the harm on population
health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)
of the chapter [10 RESULTS](#ind-10--RESULTS), were the Figure 1 was
presented, of which the Multiplot 1.2 constitutes the PART 2.)

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

<font size="3"><u><strong>Summary</strong></u></font>

The required variables and the target data subset of observations for
the harm on population health with respect to casualties were extracted
from the table with the processed data, and processed to create a new
variable that divided the observations for each of the included weather
event types to two supplementary groups:

-   the 90% of observations with the lowest impact  
-   the 10% of observations with the highest impact

before the information for the harm on population health with respect to
casualties was summarized by each weather event type.

Three aspects were examined:

1.  The overall average number of casualties by each weather event
    type.  
2.  The average number of casualties by each weather event type for the
    90% of cases with the lowest impact.  
3.  The average number of casualties by each weather event type for the
    10% of cases with the highest impact.

For each aspect, the average number of casualties by each weather event
type, the number of its available observations (based on which the
average was computed) and their skewness were examined.

The overall average number of casualties was used as the main criterion
to determine which weather events caused the most harm on population
health with respect to casualties but it is important to take into
account the other two aspect that were presented in order to obtain a
more insightful and complete ‘picture’ of their consequences,
(especially given the fact that for most of the weather event types, the
casualties were highly positively skewed).

The table with results for the harm on population health with respect to
casualties by each weather event type were presented at the subsection
[10.1.4 Most harmful event types with respect to
casualties](#ind-10-1-4--Most-harmful-weather-event-types-with-respect-to-casualties)
of the chapter [10 RESULTS](#ind-10--RESULTS).

Finally the *Multiplot 1.3* was created to visualize the results of the
harm on population health with respect to casualties by each weather
event type.

\*(Note that neither the Multiplot 1.3 nor the elementary plots that it
contains were presented in this section due to the restrictions imposed
by the assignment to include in the report at least 1 but no more than 3
figures. It can be examined at the subsection [10.1.1 Overview of
results for the harm on population
health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)
at the chapter [10 RESULTS](#ind-10--RESULTS), where the Figure 1 was
presented, of which the Multiplot 1.3 constitutes the PART 3.)

<font size="3"><u><strong>Steps</strong></u></font>

-   [8.3.1 Extract the target data for harm on population health with
    respect to
    casualties](#ind-8-3-1--Extract-the-target-data-for-harm-on-population-health-with-respect-to-casualties)
    -   The target data subset of observations needed to evaluate the
        harm on population health with respect to casualties by each
        weather event type was extracted from the table with the
        processed data.  
-   [8.3.2 Process the target data for harm on population health with
    respect to
    casualties](#ind-8-3-2--Process-the-target-data-for-harm-on-population-health-with-respect-to-casualties)
    -   The table with target data subset for the harm on population
        with respect to casualties was processed to create the table
        with processed data for the harm on population health with
        respect to casualties.  
-   [8.3.3 Summarize the processed data for harm on population health
    with respect to casualties by each weather event
    type](#ind-8-3-3--Summarize-the-processed-data-for-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)
    -   The harm on population health with respect to casualties by each
        weather event type was evaluated over various aspects.  
-   [8.3.4 Visualize the results of the summary for the harm on
    population health with respect to casualties by each weather event
    type](#ind-8-3-4--Visualize-the-results-of-the-summary-for-the-harm-on-population-health-with-respect-to-casualties-by-each-weather-event-type)
    -   The Multiplot 1.3 that presents the results of the summary for
        the harm on population health with respect to casualties by each
        weather event type was created.
        -   [8.3.4.1 Create the components of Multiplot
            1.3](#ind-8-3-4-1--Create-the-components-of-Multiplot-1-3)
            -   Creates the four elementary plot that constitute the
                Multiplot 1.3:
                -   [8.3.4.1.1 Create The Plot
                    1.3.1](#ind-8-3-4-1-1--Create-The-Plot-1-3-1)
                    -   Displays the overall average number of
                        casualties caused by each weather event type
                        based on all the cases of weather events that
                        resulted in non-zero casualties.  
                -   [8.3.4.1.2 Create The Plot
                    1.3.2](#ind-8-3-4-1-2--Create-The-Plot-1-3-2)
                    -   Displays the average number of casualties caused
                        by each weather event type based on 90% of
                        weather events with the lowest impact (for each
                        weather event type) that resulted in non-zero
                        casualties.  
                -   [8.3.4.1.3 Create The Plot
                    1.3.3](#ind-8-3-4-1-3--Create-The-Plot-1-3-3)
                    -   Displays the average number of casualties caused
                        by each weather event type based on 10% of
                        weather events with the highest impact (for each
                        weather event type) that resulted in non-zero
                        casualties.  
                -   [8.3.4.1.4 Create The Plot
                    1.3.4](#ind-8-3-4-1-4--Create-The-Plot-1-3-4)
                    -   Displays a comparison for each weather event
                        type, of the average number of fatalities for
                        the 90% of its observations with the lowest
                        impact versus the average number of casualties
                        for the 10% of its observations with the highest
                        impact based only on the weather events that
                        resulted in non-zero casualties.  
        -   [8.3.4.2 Compose the Multiplot
            1.3](#ind-8-3-4-2--Compose-the-Multiplot-1-3)
            -   Combines the four elementary plots to create the
                Multiplot 1.3.

<br>

<font size="1">[back to start of this
section](#ind-8-3--Harm-On-Population-Health-With-Respect-To-Casualties-By-Each-Weather-Event-Type)</font>  
<font size="1">[back to start of this
chapter](#ind-8--HARM-ON-POPULATION-HEALTH)</font>  
<font size="1">[back to *TABLE OF
CONTENTS*](#ind-1--TABLE-OF-CONTENTS)</font>

<br>

### 8.3.1 Extract the target data for harm on population health with respect to casualties

In order to examine the harm on population health with respect to
casualties caused by each weather event type, the variables *REFNUM*,
*EVENT\_TYPE* and *CASUALTIES* were selected from the table with the
processed data and **only the observations that refer to weather events
that resulted in non-zero casualties** were extracted.

Furthermore, in an attempt to avoid highly misleading statistics due to
the small number of observations for some of the weather event types, a
lowest bound of 10 weather events that caused non zero casualties (for
each of the included weather event types) was selected (subjectively by
the analyst) and applied.

This lowest bound, although it may seem (and generally it is) not enough
to get trustworthy statistics, it was considered to be *“good enough”*
taking into account that :

1.  the analysis focuses in describing historical data without trying to
    make inferences that would demand substantially bigger samples,
    although any statistic based on less than 10 observations could not
    be taken seriously especially in cases (such as in this analysis)
    where the distribution of casualties for each weather event type was
    skewed.
2.  a period of 10 years (from 2001 to 2011) in which the observations
    that were used in the analysis occurred, is relatively small time to
    produce big samples of weather events that caused non zero
    casualties for some the weather event types. Thus, if a highest
    bound was selected to get more robust statistics such as samples of
    100 or 300, the majority of weather event types would have been
    excluded, making the results of the analysis trivial.

<!-- -->

    # Extract the required variables and the target data subset of observations 
    # for the harm on population health with respect to casualties.
    target_data_____harm_on_population_health_____casualties <- processed_data[
      ## Extract only the observations that have resulted in non-zero casualties.
      CASUALTIES > 0,
      ## Select only the relevant variables. 
      list(REFNUM, EVENT_TYPE, CASUALTIES)
      ][
        ### Keep only the observations that correspond to the weather event types 
        ### for which there are at least 10 weather events available.
        EVENT_TYPE %in% 
          names(table(EVENT_TYPE)[table(EVENT_TYPE) >= 10])
        ]

The table with the target data for the harm on population health with
respect to casualties consist of 7936 observations.

    # Print the structure of the table with the target data subset 
    # for the harm on population health with respect to casualties.
    str(target_data_____harm_on_population_health_____casualties)

    ## Classes 'data.table' and 'data.frame':   7936 obs. of  3 variables:
    ##  $ REFNUM    : int  413614 413649 413652 413663 413737 413743 413746 413757 413763 413795 ...
    ##  $ EVENT_TYPE: chr  "TORNADO" "THUNDERSTORM WIND" "THUNDERSTORM WIND" "THUNDERSTORM WIND" ...
    ##  $ CASUALTIES: int  4 2 5 1 6 1 1 3 2 1 ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

The variable *EVENT\_TYPE* includes 30 distinct weather event types, for
most of which the variable *CASUALTIES* was highly positively skewed.

It was worth noting that for the weather event types with highest number
of observations there was highest skewness for the values of casualties,
indicating that the corresponding distribution of casualties has a heavy
tail that wasn’t possible to be observed when few observation were
available.

    # Create a kable to present some facts about the table with the target data 
    # for the harm on population health with respect to casualties.
    kable(
      x = target_data_____harm_on_population_health_____casualties[
        order(EVENT_TYPE), 
        list(
          "N" = .N, 
          "SKEWNESS" = round(skewness(CASUALTIES), 4)
        ), 
        by = EVENT_TYPE
        ],
      caption = paste0(
        "Table 8.3.1-1: ",
        "Facts about the table with the target data subset of observations ", 
        "for the harm on population health with respect to casualties."
      )
    ) %>% 
      kable_styling(
        bootstrap_options = c("striped", "hover", "condensed", "responsive", "bordered"), 
        full_width = FALSE,
        fixed_thead = TRUE
      ) %>% 
      footnote(
        general = "The skewness was rounded to 4 decimal places."
      )

<table class="table table-striped table-hover table-condensed table-responsive table-bordered" style="width: auto !important; margin-left: auto; margin-right: auto;">
<caption>
Table 8.3.1-1: Facts about the table with the target data subset of
observations for the harm on population health with respect to
casualties.
</caption>
<thead>
<tr>
<th style="text-align:left;position: sticky; top:0; background-color: #FFFFFF;">
EVENT\_TYPE
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
N
</th>
<th style="text-align:right;position: sticky; top:0; background-color: #FFFFFF;">
SKEWNESS
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
AVALANCHE
</td>
<td style="text-align:right;">
180
</td>
<td style="text-align:right;">
2.3975
</td>
</tr>
<tr>
<td style="text-align:left;">
BLIZZARD
</td>
<td style="text-align:right;">
22
</td>
<td style="text-align:right;">
2.3705
</td>
</tr>
<tr>
<td style="text-align:left;">
COLD/WIND CHILL
</td>
<td style="text-align:right;">
76
</td>
<td style="text-align:right;">
5.0297
</td>
</tr>
<tr>
<td style="text-align:left;">
DEBRIS FLOW
</td>
<td style="text-align:right;">
19
</td>
<td style="text-align:right;">
2.2183
</td>
</tr>
<tr>
<td style="text-align:left;">
DENSE FOG
</td>
<td style="text-align:right;">
20
</td>
<td style="text-align:right;">
1.3831
</td>
</tr>
<tr>
<td style="text-align:left;">
DUST DEVIL
</td>
<td style="text-align:right;">
12
</td>
<td style="text-align:right;">
2.1224
</td>
</tr>
<tr>
<td style="text-align:left;">
DUST STORM
</td>
<td style="text-align:right;">
23
</td>
<td style="text-align:right;">
1.5025
</td>
</tr>
<tr>
<td style="text-align:left;">
EXCESSIVE HEAT
</td>
<td style="text-align:right;">
350
</td>
<td style="text-align:right;">
8.3298
</td>
</tr>
<tr>
<td style="text-align:left;">
EXTREME COLD/WIND CHILL
</td>
<td style="text-align:right;">
107
</td>
<td style="text-align:right;">
4.3053
</td>
</tr>
<tr>
<td style="text-align:left;">
FLASH FLOOD
</td>
<td style="text-align:right;">
540
</td>
<td style="text-align:right;">
14.4341
</td>
</tr>
<tr>
<td style="text-align:left;">
FLOOD
</td>
<td style="text-align:right;">
231
</td>
<td style="text-align:right;">
9.3312
</td>
</tr>
<tr>
<td style="text-align:left;">
HAIL
</td>
<td style="text-align:right;">
110
</td>
<td style="text-align:right;">
5.8303
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAT
</td>
<td style="text-align:right;">
154
</td>
<td style="text-align:right;">
5.2894
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAVY RAIN
</td>
<td style="text-align:right;">
75
</td>
<td style="text-align:right;">
5.0249
</td>
</tr>
<tr>
<td style="text-align:left;">
HEAVY SNOW
</td>
<td style="text-align:right;">
45
</td>
<td style="text-align:right;">
5.2993
</td>
</tr>
<tr>
<td style="text-align:left;">
HIGH SURF
</td>
<td style="text-align:right;">
119
</td>
<td style="text-align:right;">
8.3730
</td>
</tr>
<tr>
<td style="text-align:left;">
HIGH WIND
</td>
<td style="text-align:right;">
279
</td>
<td style="text-align:right;">
11.3363
</td>
</tr>
<tr>
<td style="text-align:left;">
HURRICANE/TYPHOON
</td>
<td style="text-align:right;">
33
</td>
<td style="text-align:right;">
4.4573
</td>
</tr>
<tr>
<td style="text-align:left;">
ICE STORM
</td>
<td style="text-align:right;">
38
</td>
<td style="text-align:right;">
4.3115
</td>
</tr>
<tr>
<td style="text-align:left;">
LIGHTNING
</td>
<td style="text-align:right;">
1657
</td>
<td style="text-align:right;">
6.9576
</td>
</tr>
<tr>
<td style="text-align:left;">
MARINE STRONG WIND
</td>
<td style="text-align:right;">
16
</td>
<td style="text-align:right;">
1.9270
</td>
</tr>
<tr>
<td style="text-align:left;">
MARINE THUNDERSTORM WIND
</td>
<td style="text-align:right;">
17
</td>
<td style="text-align:right;">
2.3442
</td>
</tr>
<tr>
<td style="text-align:left;">
RIP CURRENT
</td>
<td style="text-align:right;">
475
</td>
<td style="text-align:right;">
6.9329
</td>
</tr>
<tr>
<td style="text-align:left;">
STRONG WIND
</td>
<td style="text-align:right;">
211
</td>
<td style="text-align:right;">
3.0745
</td>
</tr>
<tr>
<td style="text-align:left;">
THUNDERSTORM WIND
</td>
<td style="text-align:right;">
1364
</td>
<td style="text-align:right;">
9.4260
</td>
</tr>
<tr>
<td style="text-align:left;">
TORNADO
</td>
<td style="text-align:right;">
1327
</td>
<td style="text-align:right;">
17.6038
</td>
</tr>
<tr>
<td style="text-align:left;">
TROPICAL STORM
</td>
<td style="text-align:right;">
34
</td>
<td style="text-align:right;">
5.3288
</td>
</tr>
<tr>
<td style="text-align:left;">
WILDFIRE
</td>
<td style="text-align:right;">
244
</td>
<td style="text-align:right;">
6.5566
</td>
</tr>
<tr>
<td style="text-align:left;">
WINTER STORM
</td>
<td style="text-align:right;">
84
</td>
<td style="text-align:right;">
3.9675
</td>
</tr>
<tr>
<td style="text-align:left;">
WINTER WEATHER
</td>
<td style="text-align:right;">
74
</td>
<td style="text-align:right;">
5.2237
</td>
</tr>
</tbody>
<tfoot>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<span style="font-style: italic;">Note: </span>
</td>
</tr>
<tr>
<td style="padding: 0; border: 0;" colspan="100%">
<sup></sup> The skewness was rounded to 4 decimal places.
</td>
</tr>
</tfoot>
</table>
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

To create the table with the processed data for the harm on population
health with respect to casualties from the corresponding target data
subset for this perspective, a new variable was created that divides the
observations for each of the included weather event types in two
complementary levels:

-   one that contains the 90% of cases with lowest impact  
-   the other that contains the 10% of cases with highest impact

This decision was made due to the high skewness that was observed for
the values of the variable *CASUALTIES* for most weather event types,
which indicates that the underlining distributions of such phenomena has
a heavy tail that causes this heterogeneity on the observations. As a
result a small number of casualties were observed for the majority of
cases that resulted in non-zero fatalities while in the few cases with
the highest impact they caused lots of casualties.

Having in mind that the average number of casualties will be used to
determine which weather event types were the most harmful to population
health (with respect to casualties) combined with the fact that the
average doesn’t represent well the distribution of variables with high
skewness, as it is highly affected by the most extreme values, it was
considered necessary to examine the subsets created by those two levels
in order to obtain an insightful picture.

    # Create the table with the processed data 
    # for the harm on population health with respect to casualties.
    processed_data_____harm_on_population_health_____casualties <- 
      target_data_____harm_on_population_health_____casualties[
        ,
        ## Create a new variable divides the observations
        ## for each weather event into two supplementary groups:  
        ##   - the 90% of weather events that resulted in lowest fatalities
        ##   - the 10% of weather events that resulted in highest fatalities
        BIN_GROUP_PER_EVENT_TYPE := (function(x, p_bins) {
          
          # adds 0 and 1 in the vector supplied at the argument 'p_bins' 
          # to the start and the end respectively  
          # the supplied percentiles if they are missing 
          # and sort them ascending
          p_bins_increasing <- sort(c(0, p_bins, 1))
          
          # creates the character strings that labels of the bins by the values supplied at 
          # the argument 'p_bins' that will be the values of the new variable
          bin_labels <- paste0("(", p_bins_increasing[-length(p_bins_increasing)]*100,
                               "% - ", p_bins_increasing[-1]*100, "%]")
          
          # identify the number of occurrences that correspond to each label
          n_times <- vapply(2:length(p_bins_increasing),
                            function(i) {
                              as.integer(floor(length(x) * p_bins_increasing[i]) -
                                           floor(length(x) * p_bins_increasing[i - 1]))
                            }, integer(1))
          
          # multiply each label with the number of its occurrences
          x_bins_expanded <- rep(x = bin_labels, times = n_times)
          
          # order the label to much the values of the corresponding vector
          x_bins_expanded_reordered <- x_bins_expanded[order(seq_along(x)[order(x)])]
          
          ## Coerce the character vector with the labels of bins to a factor
          x_bins_factor <- factor(x_bins_expanded_reordered, labels = bin_labels, ordered = TRUE)
          
        })(CASUALTIES, 0.9), 
        by = EVENT_TYPE
      ][
        ## Coerce the EVENT_VARIABLE to factor
        , EVENT_TYPE := as.factor(EVENT_TYPE) 
      ]

The table with the processed data for the harm on population health with
respect to casualties contains 4 variables:

1.  **REFNUM** (int) : an id that uniquely identifies each observation  
2.  **EVENT\_TYPE** (Factor w/ 30 levels) : the type of each weather
    event
3.  **CASUALTIES** (int ): the number of casualties  
4.  **BIN\_GROUP\_PER\_EVENT\_TYPE** (Ord.factor w/ 2 levels) : a factor
    that divides the observations for each weather event type to two
    complementary levels, one with the 90% of observations with the
    lowest impact and another with the 10% of observations with the
    highest impact.

and 7936 observations.

    # Print the structure of the table with the processed data 
    # for the harm on population health with respect to casualties.
    str(processed_data_____harm_on_population_health_____casualties)

    ## Classes 'data.table' and 'data.frame':   7936 obs. of  4 variables:
    ##  $ REFNUM                  : int  413614 413649 413652 413663 413737 413743 413746 413757 413763 413795 ...
    ##  $ EVENT_TYPE              : Factor w/ 30 levels "AVALANCHE","BLIZZARD",..: 26 25 25 25 25 25 25 26 17 20 ...
    ##  $ CASUALTIES              : int  4 2 5 1 6 1 1 3 2 1 ...
    ##  $ BIN_GROUP_PER_EVENT_TYPE: Ord.factor w/ 2 levels "(0% - 90%]"<"(90% - 100%]": 1 1 2 1 2 1 1 1 1 1 ...
    ##  - attr(*, ".internal.selfref")=<externalptr> 
    ##  - attr(*, "sorted")= chr "REFNUM"

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

To evaluate the harm on population health by each weather event type
with respect to casualties a simplistic approach was adopted :

-   the weather event types were ranked from the most harmful to the
    least based on the overall average number of casualties of the
    weather events that resulted in non-zero casualties

The overall average number of casualties caused by each weather event
type was initially examined along with the skewness of the number of
casualties for each weather event type. In most cases the skewness was
high (or even extremely high), so it was possible that the overall mean
misrepresented the consequences of each weather event type.

That is the reason why the average number of casualties for 90% of
weather events with the lowest impact versus the average number of
casualties for the 10% of weather events with the highest impact were
also computed and examined.

**It is highlighted that for the average number of casualties that
refers to the 10% of the cases that had the highest impact, there were
few observations available for a lot of weather event types and the
corresponding mean values should be interpreted with caution.**

    # Create the table with the summary for the harm on population health 
    # with respect to casualties for each weather event type.
    summary_____harm_on_population_health______casualties <- 
      processed_data_____harm_on_population_health_____casualties[
      ,
      list(
        ## The total number of observation by each weather event type.
        "N" = .N,
        ## The average number of casualties caused by each weather event type.
        "AVRG" = round(mean(CASUALTIES), 2),
        ## The skewness of casualties for the observations by each weather event type.
        "SKEWNESS" = round(skewness(CASUALTIES), 4),
        ## The number of observations for the 90% of cases with the lowest impact 
        ## by each weather event type.
        "N_LOW" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(0% - 90%]" , .N],
        ## The average number of casualties caused by each weather event type 
        ## for the 90% of cases with the lowest impact.
        "AVRG_LOW" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(0% - 90%]" , round(mean(CASUALTIES), 2)],
        ## The skewness of casualties for the 90% of cases with the lowest impact 
        ## by each weather event type.
        "SKEWNESS_LOW" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(0% - 90%]" , round(skewness(CASUALTIES), 4)],
        ## The number of observations for the 10% of cases with the lowest impact 
        ## by each weather event type.
        "N_HIGH" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(90% - 100%]" , .N],
        ## The average number of casualties caused by each weather event type 
        ## for the 10% of cases with the highest impact.
        "AVRG_HIGH" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(90% - 100%]" , round(mean(CASUALTIES), 2)],
        ## The skewness of casualties for the 10% of cases with the highest impact 
        ## by each weather event type.
        "SKEWNESS_HIGH" = .SD[BIN_GROUP_PER_EVENT_TYPE == "(90% - 100%]" , round(skewness(CASUALTIES), 4)]
      ),
      by = "EVENT_TYPE"
      ][
        ## The average number of casualties is used to order the rows of the table
        ## from the most harmful weather event type to the least.
        order(-AVRG),
        ## Create a variable with the rank of the harmness of each weather event type.
        RANK := 1:length(EVENT_TYPE)
        ][
          ,
          ## Reorder the variables at the table.
          list(
            RANK, EVENT_TYPE, N, AVRG, SKEWNESS, N_LOW, AVRG_LOW, SKEWNESS_LOW, N_HIGH, AVRG_HIGH, SKEWNESS_HIGH
          )
          ]

The results of the table with the summary for the harm on population
health with respect to casualties by each weather event type that was
created in this section were presented at the subsection [10.1.4 Most
harmful event types with respect to
casualties](#ind-10-1-4--Most-harmful-weather-event-types-with-respect-to-casualties)
of the chapter [10 RESULTS](#ind-10--RESULTS).

The table with the summary for the harm on population health with
respect to casualties by each weather event type was exported (as an R
file), in the folder of the working directory:

-   *outputs –&gt; harm\_on\_population\_health –&gt; results*

with filename:

-   *summary\_\_\_\_\_\_harm\_on\_population\_health\_\_\_\_\_\_casualties.R*

<!-- -->

    # Supply the filepath at which the table with the summary
    # for the harm on population health will be exported.
    filepath_____summary_____harm_on_population_health______casualties <-
      file.path(
        directory_tree_____outputs[[
          "filepath_____outputs_____harm_on_population_health_____results"
          ]],
        "summary_____harm_on_population_health______casualties.R"
      )

    # Export the table with the summary for the harm on population health
    # with respect to casualties.
    saveRDS(
      object = summary_____harm_on_population_health______casualties,
      file = filepath_____summary_____harm_on_population_health______casualties
    )

*The main reason for exporting the file with the summary for the harm on
population health with respect to casualties by each weather event type
was to supply a checkpoint for any attempts to reproduce the analysis.*

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

From the table with the summary for the harm on population health by
each weather event type with respect to casualties the **Multiplot 1.3**
was created to present an overview of the results for the three
different aspects that were examined for this perspective.

Four elementary plots were
[created](#ind-8-3-4-1--Create-the-components-of-Multiplot-1-3):

-   [8.3.4.1.1 Create The Plot
    1.3.1](#ind-8-3-4-1-1--Create-The-Plot-1-3-1)
    -   Displays the overall average number of casualties caused by each
        weather event type based on all the cases of weather events that
        resulted in non-zero casualties.  
-   [8.3.4.1.2 Create The Plot
    1.3.2](#ind-8-3-4-1-2--Create-The-Plot-1-3-2)
    -   Displays the average number of casualties caused by each weather
        event type based on 90% of weather events with the lowest impact
        (for each weather event type) that resulted in non-zero
        casualties.  
-   [8.3.4.1.3 Create The Plot
    1.3.3](#ind-8-3-4-1-3--Create-The-Plot-1-3-3)
    -   Displays the average number of casualties caused by each weather
        event type based on 10% of weather events with the highest
        impact (for each weather event type) that resulted in non-zero
        casualties.  
-   [8.3.4.1.4 Create The Plot
    1.3.4](#ind-8-3-4-1-4--Create-The-Plot-1-3-4)
    -   Displays a comparison for each weather event type, of the
        average number of fatalities for the 90% of its observations
        with the lowest impact versus the average number of casualties
        for the 10% of its observations with the highest impact based
        only on the weather events that resulted in non-zero casualties.

which were then [combined](#ind-8-3-4-2--Compose-the-Multiplot-1-3) in
order to obtain the **Multiplot 1.3**.

It constitutes the *PART 3* of the *Figure 1* that displays the overview
of the harm on population health by each weather event type.

*(Note that neither the Multiplot 1.3 nor the elementary plots that it
contains were presented in this section due to the restrictions imposed
by the assignment to include in the report at least 1 but no more than 3
figures. It can be examined at the subsection [10.1.1 Overview of
results for the harm on population
health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)
at the chapter [10 RESULTS](#ind-10--RESULTS), were the Figure 1 was
presented, of which the Multiplot 1.2 constitutes the PART 2.)*

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

Creates four elementary plots to visualize the results for the aspects
that were examined for the harm on population health with respect to
casualties by each weather event type.

-   [8.3.4.1.1 Create The Plot
    1.3.1](#ind-8-3-4-1-1--Create-The-Plot-1-3-1)
    -   Displays the overall average number of casualties caused by each
        weather event type based on all the cases of weather events that
        resulted in non-zero casualties.  
-   [8.3.4.1.2 Create The Plot
    1.3.2](#ind-8-3-4-1-2--Create-The-Plot-1-3-2)
    -   Displays the average number of casualties caused by each weather
        event type based on 90% of weather events with the lowest impact
        (for each weather event type) that resulted in non-zero
        casualties.  
-   [8.3.4.1.3 Create The Plot
    1.3.3](#ind-8-3-4-1-3--Create-The-Plot-1-3-3)
    -   Displays the average number of casualties caused by each weather
        event type based on 10% of weather events with the highest
        impact (for each weather event type) that resulted in non-zero
        casualties.  
-   [8.3.4.1.4 Create The Plot
    1.3.4](#ind-8-3-4-1-4--Create-The-Plot-1-3-4)
    -   Displays a comparison for each weather event type, of the
        average number of fatalities for the 90% of its observations
        with the lowest impact versus the average number of casualties
        for the 10% of its observations with the highest impact based
        only on the weather events that resulted in non-zero casualties.

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

The *Plot 1.3.1* displays **the overall average number of casualties**
caused by each weather event type taking into account all and only the
observation that resulted in non-zero casualties.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of casualties** they caused.

The skewness of the number of casualties for the observations of each
weather event type (based on which the overall number of casualties was
computed) had been encoded in the color of the bar associated with each
of them.

    # Create the Elementary Plot 1.3.1 that displays 
    # the overall average number of casualties 
    # by each weather event type for all cases. 
    elementary_plot_1_3_1 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______casualties,
        mapping = aes(
          x = AVRG,
          ### Reverse the order of the factors for the EVENT_TYPE variable 
          ### to make them displayed alphabetically from top to bottom.
          y = factor(
            x = EVENT_TYPE, 
            levels = rev(x = levels(x = EVENT_TYPE)
            )
          ) 
        )
      ) +
      ## Draw a square shaped point to the position that corresponds to 
      ## the average number of casualties caused by each weather event type, 
      ## of which the color indicates the skewness of observations 
      ## based on which each average was computed.
      geom_point(
        mapping = aes(color = SKEWNESS),
        shape = 15, 
        size = 4.5
      ) +
      ## Draw a line that visually associates each weather event type 
      ## with its respective average number of casualties.
      geom_linerange(
        mapping = aes(
          xmin = 0, 
          xmax = AVRG, 
          group = EVENT_TYPE, 
          color = SKEWNESS
        )
        ) +
      ## Draw a number that indicates the rank assigned to each weather event type 
      ## (from the most harmful to the least) based on the overall average number
      ## number of casualties it caused inside the square point 
      ## that displays the average.
      geom_text(
        mapping = aes(
          label = RANK
        ), 
        size = 2.5
      ) +
      ## Adjust the scale for the color of each point.
      scale_color_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of casualties for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.3 will be composed from the four elementary plots. 
        limits = c(-2, 18), 
        midpoint = 8, 
        low = "lightgreen", 
        mid = "orange", 
        high = "purple"
      ) +
      ## Supply descriptive labels.  
      labs(
        title = "Plot 1.3.1", 
        subtitle = "Aspect: Overall",
        x = "Weather Event Types \n",
        y = "Average Number of Casualties\n"
      ) +
      ## Select a theme.
      theme_linedraw() + 
      ## Customize the selected theme.
      theme(
        ### Remove the legend.
        legend.position = "none",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        )
      )

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

The *Elementary Plot 1.3.2* displays **the average number of casualties
for the 90% of cases with the lowest impact** caused by each weather
event type from all the observation that resulted in non-zero
casualties.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of casualties** they caused.  
(so it is NOT based on the average number of casualties caused by the
90% of cases with the lowest impact of each weather event type).

The skewness of the number of casualties for the observations of each
weather event type (based on which the average number of casualties for
the 90% of cases with the lowest impact was computed) had been encoded
in the color of the bar associated with each of them.

    # Create the Elementary Plot 1.3.2 that displays 
    # the average number of casualties by each weather event type 
    # for the 90% of its cases with the lowest impact.
    elementary_plot_1_3_2 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______casualties,
        mapping = aes(
          x = AVRG_LOW,
          ### Reverse the order of the factors for the EVENT_TYPE variable 
          ### to display them alphabetically from top to bottom.
          y = factor(
            x = EVENT_TYPE, 
            levels = rev(x = levels(x = EVENT_TYPE)
            )
          ) 
        )
      ) +
      ## Draw a circle shaped point to the position that corresponds to 
      ## the average number of casualties caused by each weather event type
      ## for the 90% of its cases with the lowest impact, 
      ## of which the color indicates the skewness of observations 
      ## based on which each average was computed.
      geom_point(
        mapping = aes(
          color = SKEWNESS_LOW
        ), 
        size = 3.5
      ) +
      ## Draw a line that visually associates each weather event type 
      ## with its respective average number of casualties 
      ## for the 90% of its cases with the lowest impact.
      geom_linerange(
        mapping = aes(
          xmin = 0, 
          xmax = AVRG_LOW, 
          group = EVENT_TYPE, 
          color = SKEWNESS_LOW
        )
      ) +
      ## Draw a number that indicates the rank assigned to each weather event type 
      ## (from the most harmful to the least) based on the overall average number
      ## number of casualties it caused inside the square point 
      ## that displays the average.
      geom_text(
        mapping = aes(
          label = RANK
        ), 
        size = 2
        ) +
      ## Adjust the scale for the color of each point.
      scale_color_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of casualties for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.3 will be composed from the four elementary plots.
        limits = c(-2, 18), 
        midpoint = 8, 
        low = "lightgreen",
        mid = "orange",
        high = "purple"
        ) +
      ## Supply descriptive labels. 
      labs(
        title = "Plot 1.3.2",
        subtitle = "Aspect: 90% of cases with the lowest impact",
        x = paste0(
          "Average Number of Casualties for the 90% ", "\n",
          "of Observations with the Lowest Impact" 
        )
      ) +
      ## Select a theme.
      theme_linedraw() + 
      ## Customize the selected theme.
      theme(
        ### Remove the legend.
        legend.position = "none",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        ),
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank()
      )

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

The *Plot 1.3.3* displays **the average number of casualties for the 10%
of cases with the highest impact** caused by each weather event type
from all the observation that resulted in non-zero casualties.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of casualties** they caused.  
(so it is NOT based on the average number of casualties caused by the
10% of cases with the highest impact of each weather event type).

The skewness of the number of casualties for the observations of each
weather event type (based on which the average number of casualties for
the 10% of cases with the highest impact was computed) had been encoded
in the color of the bar associated with each of them.

    # Create the Elementary Plot 1.3.3 that displays 
    # the average number of casualties by each weather event type 
    # for the 10% of its cases with the highest impact.
    elementary_plot_1_3_3 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______casualties,
        mapping = aes(
          x = AVRG_HIGH,
          ### Reverse the order of the factors for the EVENT_TYPE variable 
          ### to display them alphabetically from top to bottom.
          y = factor(
            x = EVENT_TYPE, 
            levels = rev(x = levels(x = EVENT_TYPE)
            )
          ) 
        )
      ) +
      ## Draw a diamond shaped point to the position that corresponds to 
      ## the average number of casualties caused by each weather event type
      ## for the 10% of its cases with the highest impact, 
      ## of which the color indicates the skewness of observations 
      ## based on which each average was computed.
      geom_point(
        mapping = aes(
          color = SKEWNESS_HIGH
        ), 
        shape = 18, 
        size = 4.5
      ) +
      ## Draw a line that visually associates each weather event type 
      ## with its respective average number of casualties 
      ## for the 10% of its cases with the highest impact.
      geom_linerange(
        mapping = aes(
          xmin = 0, 
          xmax = AVRG_HIGH, 
          group = EVENT_TYPE, 
          color = SKEWNESS_HIGH
        )
      ) +
      ## Draw a number that indicates the rank assigned to each weather event type 
      ## (from the most harmful to the least) based on the overall average number
      ## number of casualties it caused inside the square point 
      ## that displays the average.
      geom_text(
        mapping = aes(
          label = RANK
        ),
        size = 2
      ) +
      ## Adjust the scale for the color of each point.
      scale_color_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of casualties for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.3 will be composed from the four elementary plots.
        limits = c(-2, 18), 
        midpoint = 8, 
        low = "lightgreen", 
        mid = "orange", 
        high = "purple"
      ) +
      ## Supply descriptive labels. 
      labs(
        title = "Plot 1.3.3",
        subtitle ="Aspect: 10% of cases with the highest impact",
        x = paste0(
          "Average Number of Casualties for the 10% ", "\n", 
          "of Observations with the Highest Impact" 
        )
      ) +
      ## Select a theme.
      theme_linedraw() + 
      ## Customize the selected theme.
      theme(
        ### Remove the legend.
        legend.position = "none",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        ),
        ### Remove the text, ticks and title of the y axis 
        axis.text.y = element_blank(),
        axis.ticks.y = element_blank(),
        axis.title.y = element_blank()
      )

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

The *Plot 1.3.4* displays a compact overview of all three aspect that
were examined for the harm on population health with respect to
casualties.

For each weather event type, the comparison was visualized for **the
average number of casualties for the 90% of cases with the lowest
impact** versus **the average number of casualties for the 10% of cases
with the highest impact**.

The weather event types were matched with a number that represents the
rank which was assigned to each of them from the most harmful to the
least with respect to population health, based on the **overall average
number of casualties** they caused.

The skewness of the number of casualties for the observations of each
weather event type (based on which the overall number of casualties was
computed) had been encoded in the color of the bar associated with each
of them.

    # Create the Elementary Plot 1.3.4 that displays 
    # by each weather event type the comparison of 
    # the average number of casualties 
    # for the 90% of cases with the lowest impact
    # versus the average number of casualties 
    # for the 10% of cases with the highest impact.
    elementary_plot_1_3_4 <-
      ## Supply the constant arguments for the aesthetics of all included geoms.
      ggplot(
        data = summary_____harm_on_population_health______casualties,
        mapping = aes(
          x = AVRG_HIGH, 
          y = AVRG_LOW
        )
      ) +
      geom_point(
        mapping = aes(
          fill = SKEWNESS
        ), 
        shape = 21
      ) +
      ## Draw a label with a number that indicates the rank assigned 
      ## to each weather event type (from the most harmful to the least) 
      ## based on the overall average number of casualties it caused.
      geom_label_repel(
        mapping = aes(
          label = RANK, 
          fill = SKEWNESS
        ),
        size = 2.5
      ) +
      ## Adjust the scale for the fill of each label.
      scale_fill_gradient2(
        ### Choose such limits and midpoint for the colorbar of the legend
        ### that they can be used unchanged to correctly display 
        ### the skewness of the observations based on which 
        ### the average number of casualties for all three aspects: 
        ###   1. overall
        ###   2. 90% of cases with the lowest impact 
        ###   3. 10% of cases with the highest impact
        ### was computed. 
        ### This will allow to include only one common legend when the 
        ### Multiplot 1.3 will be composed from the four elementary plots.
        limits = c(-2, 18),
        midpoint = 8, 
        low = "lightgreen",
        mid = "orange", 
        high = "purple"
        ) +
      ## Set proper limits to the plot.
        xlim(c(0, 320)) +
        ylim(c(0.5, 7)) +
      ## Supply descriptive labels. 
      labs(
        title = "Plot 1.3.4",
        subtitle = paste0(
          "Comparison of the average number of casualties ", 
          "for the 90% of observations with the lowest impact ", 
          "versus the average number of casualties ", 
          "for the 10% of observations with highest impact. "
        ),
        x = paste0(
          "Average Number of Casualties by each Weather Event Type ", 
          "for the 10% of its Observations with the Highest Impact"
        ),
        y = paste0(
          "Average Number of Casualties by each Weather Event Type ", "\n", 
          "for the 90% of its Observations with the Lowest Impact."
        ),
        ### Add a descriptive label for the legend.
        fill = paste0(
          "The color indicates the skewness ",
          "of casualties for the each weather event type. ",
          "(the color scale is unique for all four plots of PART 3) "
        )
      ) +
      ## Select a theme.
      theme_linedraw() +
      ## Customize the selected theme.
      theme(
        ### Adjust the legend.
        legend.position = "bottom",
        legend.direction = "horizontal",
        ### Adjust the title.
        plot.title = element_text(
          size = 12,
          face = "bold"
        ),
        ### Adjust the subtitle.
        plot.subtitle = element_text(
          size = 10
        )
      )

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

The four elementary plots that were created from the results of the
summary for the harm on population health with respect to casualties by
each weather event type, were combined to construct a single multiplot
that displays the complete picture for this perspective.

    # Create a multiplot that displays the overview of the summary 
    # for the harm on population health with respect to casualties
    # by each weather event type.
    multiplot_1_3 <- arrangeGrob(
      grobs = list(
          
        # Title
        textGrob(
          label = paste0(
            "\n",
            "PART 3: Harm on population health by each weather event type ", 
            "with the respect to casualties ", "\n", 
            "based on the cases of weather events ", 
            "that resulted in non-zero casualties.", "\n", 
            "\n"
          ),
           gp=gpar(
             fontsize = 16, 
             fontface = "bold"
           )
        ),
        
        # Subtitle
        textGrob(
          label = paste0(
              "\n", 
              "The results include only the weather event types, ", 
              "for which at least 10 observations ", 
              "that resulted in non-zero casualties were available. ", "\n",
              "The number associated with each weather event type ", 
              "represents the rank (from the most harmfull to the least) ", 
              "which was assigned based on the overall average number of casualties.", "\n",
              "Because for most of the weather event types ", 
              "high positive skewness was observed for the number of casualties, ",
              "the average of the 90% of cases with lowest impact ", "\n",
              "and the 10% of cases with highest impact were reported ", 
              "to provide a more representative picture of their consequences.","\n",
              "\n"
          ),
           gp=gpar(
             fontsize = 14, 
             fontface = "bold"
           )
        ),
        
        # Plot 1.3.1
        # Elementary plot for the average number of casualties 
        # by each weather event type for all cases.
        elementary_plot_1_3_1,
        
        # ELEMENTARY PLOT 1.3.2
        # Elementary plot for the average number of casualties 
        # by each weather event type for 90% of cases with the lowest impact.
        elementary_plot_1_3_2,
        
        # ELEMENTARY PLOT 1.3.3
        # Elementary plot for the average number of casualties 
        # by each weather event type for 10% of cases with the highest impact.
        elementary_plot_1_3_3,
        
        # ELEMENTARY PLOT 1.3.4
        # Elementary Plot 1.3.4 for the comparison of 
        # the average number of casualties 
        # for the 90% of cases with the lowest impact versus 
        # the 10% of cases with the highest impact.
        elementary_plot_1_3_4
      ),
      # Set the layout for this elementary plots
      layout_matrix = 
        matrix(
          c(1,1,1,1,1,1,1,1,1,
            2,2,2,2,2,2,2,2,2,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            3,3,3,3,3,4,4,5,5,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6,
            NA,6,6,6,6,6,6,6,6
          ),
          byrow = TRUE, 
          nrow = 13
        )
    )

*(Note that the Multiplot 1.3 was NOT presented in this section due to
the restrictions imposed by the assignment to include in the report at
least 1 but no more than 3 figures. It can be examined at the subsection
[10.1.1 Overview of results for the harm on population
health](#ind-10-1-1--Overview-of-results-for-the-harm-on-population-health)
of the chapter [10 RESULTS](#ind-10--RESULTS), were the Figure 1 was
presented, of which the Multiplot 1.3 constitutes the PART 3.)*

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
