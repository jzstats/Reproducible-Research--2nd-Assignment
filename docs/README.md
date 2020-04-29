# [Harm From Severe Weather Events To Population Health And Economy In United States.](https://rpubs.com/JZstats/Reproducible-Research--2nd-Assignment)  

<br>  

## Synopsis  

The U.S. National Oceanic and Atmospheric Administration's (NOAA) 
*Storm Events Database*, was explored to identify 
the most harmful weather event types, 
among the weather phenomena defined in 
_NATIONAL WEATHER SERVICE INSTRUCTION 10-1605, AUGUST 17, 2007 (*at chapter 7*)_,
with respect to population health and economy.  

The raw data was loaded in R from the supplied file, 
preproccessed, 
the target data subset was extracted, 
in-record validation was conducted, 
the majority of missing values were imputed 
(via a deterministic and conservative approach), 
the observations were cross validated 
and finally the table with the processed data was created, 
which contained all information needed 
to address the two questions of interest:  

  1. Across the United States, which types of events 
  (as indicated in the EVTYPE variable) 
  are most harmful with respect to population health?  
  2. Across the United States, 
  which types of events have the greatest economic consequences?  

For the first question, 
the harm on population health by each weather event type was 
evaluated (separately) based on the average impact of the observations 
that resulted in non-zero damage over each of the three perspectives 
(fatalities, injuries and casualties) that were considered to be of importance.  

Similarly for the second question,
the harm on economy by each weather event type was 
evaluated (separately) based on the average impact from the observations 
that resulted in non-zero damage over each of the three perspectives 
(property damage, crop damage and economic damage) 
that were considered to be of importance.

Although for both questions 
the main criterion to rank the included weather event types 
(from the most harmful to the least) for each perspective
was the overall average damage observed 
(with respect to each perspective) 
based on the observations that caused non-zero damage, 
the average for the 90% of cases with lowest impact 
versus the average for the 10% of cases with the highest impact 
(for each of the included weather event types) 
was reported to provide a more complete and insightful 'picture' 
of the consequences observed by each weather event type, 
due to the fact that for all perspectives, 
the majority of weather event types were highly positively skewed.  

The analysis was structured, performed and documented in such way 
that fortifies the reproducibility of the report 
and explains every required detail so that even the non-expert 
can follow the procedure and understand the thought process 
behind the decision making at each stage.  


<br>  

## Variations of the Report  

The main Rmd file, [RepRes_analysis.Rmd
](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.Rmd) 
that contains the code to conduct the analysis 
and produces the Markdown document [RepRes_analysis.md
](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.md) 
was rendered by appropriate scripts 
to create alternative html versions of the report with the analysis:    

1. [Report(versions:html_document)
](https://jzstats.github.io/Reproducible-Research--2nd-Assignment/Report(version:html_document).html)  
   * The simplest version of the report 
   that is a direct analog of the Markdown document [RepRes_analysis.md
   ](https://github.com/jzstats/Reproducible-Research--2nd-Assignment/blob/master/RepRes_analysis.md).  
2. [Report(version:html_pretty)
](https://jzstats.github.io/Reproducible-Research--2nd-Assignment/Report(version:html_pretty).html)  
   * A more visually appealing version of the report 
   powered by the [prettydocs
   ](https://cran.rstudio.com/web/packages/prettydoc/index.html) library.  
3. [Report(version:readthedown)  
](https://jzstats.github.io/Reproducible-Research--2nd-Assignment/Report(version:readthedown).html)  
   * A more visually appealing and practical 
   (due to the sidepanel with contents that contains) 
   book-like version of the report powered by the [rmdformats
   ](https://cran.rstudio.com/web/packages/rmdformats/index.html) library. 



