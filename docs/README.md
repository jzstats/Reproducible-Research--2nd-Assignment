# Harm From Severe Weather Events To Population Health And Economy In United States.

[read the Report at RPubs](https://rpubs.com/JZstats/Reproducible-Research--2nd-Assignment)  
[read the Report at GitHub Pages](https://jzstats.github.io/Reproducible-Research--2nd-Assignment/Report.html)

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








