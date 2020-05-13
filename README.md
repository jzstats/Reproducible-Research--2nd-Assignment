About This Repository
=====================

This repository was created to support the project:

-   [Harm From Severe Weather Events To Population Health And Economy In
    United
    States](https://jzstats.github.io/Reproducible-Research--2nd-Assignment)

It contains all the material, relevant to the project:

1.  **RepRes\_analysis.Rmd**
    -   The main script of the project, that contains all the code and
        verbose required to produce the:
        1.  **RepRes\_analysis.md**
            -   The Markdown version of the report. It is not advised to
                examine the analysis from this file, as it couldn’t
                present all the included code effectively (extra chunks
                of html were used for various proposes).  
                In addition, due to the extensive length of the Report
                it isn’t very practical either.  
        2.  **docs/Report.html**
            -   The version of the Report that was obtained by rendering
                the *RepRes\_analysis.Rmd* with the script
                **render\_\_\_\_\_RepRes\_analysis.R** to obtain a
                *bookdown* version of the report, powered by the
                *rmdformats* library. A visually appealing, fully
                functional and practical version of the Report that
                includes all the code used for the analysis (folded by
                default).  
2.  **repdata\_data\_StormData.csv.bz2**
    -   The file with the compressed unprocessed data, on which this
        analysis is based on, which contains data from the *Storm Events
        Dataset* gathered and made publicly available by U.S. National
        Oceanic and Atmospheric Administration (NOAA).  
3.  **supplemental\_information**
    -   Contains files with information on the *Storm Events Dataset*
        that had major impact on the analysis:
        -   **supplemental\_information/NATIONAL WEATHER SERVICE
            INSTRUCTION 10-1605 (AUGUST 17, 2007)**
            -   General information and directions for the *Storm Events
                Dataset*.  
        -   **supplemental\_information/NCDC Storm Events-FAQ Page.pdf**
            -   Frequently asked questions about the *Storm Events
                Dataset*.  
        -   **supplemental\_information/The-History-of-the-Storm-Events-Database.docx**
            -   Detailed information for the history of the *Storm
                Events Dataset*.
4.  **outputs**
    -   contains the outputs that were produced (as a side effect)
        during the execution of the script:
        -   **outputs/processed data**
            -   Contains the resulting table with the processed data,
                that was obtained after the unprocessed data was loaded
                in R and processed through the data processing pipeline:
                -   **outputs/processed
                    data/table\_with\_the\_processed\_data.R**  
        -   **outputs/harm\_on\_population\_health**
            -   Contains the outputs with results for the harm on
                population health:
                -   **outputs/harm\_on\_population\_health/figures**
                    -   Contains the *Figure 1* with the overview of
                        harm on population health by each weather event
                        type:
                        -   **outputs/harm\_on\_population\_health/figures/figure\_1.png**  
                -   **outputs/harm\_on\_population\_health/results**
                    -   Contains the files with the tables with the
                        results for the harm on population health by
                        each weather event type for each of the
                        perspectives examined in the analysis:
                        -   **outputs/harm\_on\_population\_health/results/summary\_\_\_\_\_harm\_on\_population\_health\_\_\_\_\_\_fatalities.R**  
                        -   **outputs/harm\_on\_population\_health/results/summary\_\_\_\_\_harm\_on\_population\_health\_\_\_\_\_\_injuries.R**  
                        -   **outputs/harm\_on\_population\_health/results/summary\_\_\_\_\_harm\_on\_population\_health\_\_\_\_\_\_casualties.R**  
        -   **outputs/harm\_on\_economy**
            -   Contains the outputs with results for the harm on
                economy:  
            -   **outputs/harm\_on\_economy/figures**
                -   Contains the *Figure 2* with the overview of harm on
                    economy by each weather event type:
                    -   **outputs/harm\_on\_economy/figures/figure\_2.png**  
            -   **outputs/harm\_on\_economy/results**
                -   Contains the files with the tables with the results
                    for the harm on economy by each weather event type
                    for each of the perspectives examined in the
                    analysis:
                    -   **outputs/harm\_on\_economy/results/summary\_\_\_\_\_harm\_on\_population\_health\_\_\_\_\_\_property\_damage.R**  
                    -   **outputs/harm\_on\_economy/results/summary\_\_\_\_\_harm\_on\_population\_health\_\_\_\_\_\_crop\_damage.R**  
                    -   **outputs/harm\_on\_economy/results/summary\_\_\_\_\_harm\_on\_population\_health\_\_\_\_\_\_economic\_damage.R**  
        -   **outputs/reproducibility\_support**
            -   Contains information that can assist any attempt to
                reproduce the analysis.
                -   **outputs/reproducibility\_support/r\_session**
                    -   Information on the R session and the options
                        that were active when the original analysis took
                        place:
                        -   **outputs/reproducibility\_support/r\_session/session\_info.R**  
                        -   **outputs/reproducibility\_support/r\_session/r\_options.R**  
                -   **outputs/reproducibility\_support/MD5\_checksum**
                    -   Contains files with the MD5 checksums for the
                        unprocessed data, processed data, and the tables
                        with the results that were produced during the
                        original execution of the script:
                        -   **outputs/reproducibility\_support/MD5\_checksum/unprocessed\_data\_\_\_\_\_MD5\_checksum.txt**  
                        -   **outputs/reproducibility\_support/MD5\_checksum/processed\_data\_\_\_\_\_MD5\_checksum.txt**  
                        -   **outputs/reproducibility\_support/MD5\_checksum/results\_\_\_\_\_MD5\_checksum.txt**  
5.  **docs**
    -   contains the files used to create and populate the GitHub Page
        that was created to showcase this project:
        -   <a href="https://jzstats.github.io/Reproducible-Research--2nd-Assignment" class="uri">https://jzstats.github.io/Reproducible-Research--2nd-Assignment</a>

<br>

About The Assignment
====================

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
