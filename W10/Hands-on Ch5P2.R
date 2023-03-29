## Hands-on Ch5p2
# Part 1
# Question: By using *vjust* argument in geom_text() function, label all points in the vertical direction above or below each point. (two plots should be drawn, below and above each point by changing the value of *vjust*)
# ========================== Answer part a =====================
# Fall 2022-- BIS 244

library(gapminder)
library(tidyverse)
library(socviz)

# Reloading by_country from organdata

by_country <- organdata %>% group_by(consent_law, country) %>%
  summarize(donors_mean= mean(donors, na.rm = TRUE),
            donors_sd = sd(donors, na.rm = TRUE),
            gdp_mean = mean(gdp, na.rm = TRUE),
            health_mean = mean(health, na.rm = TRUE),
            roads_mean = mean(roads, na.rm = TRUE),
            cerebvas_mean = mean(cerebvas, na.rm = TRUE))

# can use hjust to left- (0) or right-justify (1) 
p <- ggplot(data = by_country,
            mapping = aes(x = roads_mean, y = donors_mean))

p + geom_point() + geom_text(mapping = aes(label = country), vjust = -1)

p <- ggplot(data = by_country,
            mapping = aes(x = roads_mean, y = donors_mean))

p + geom_point() + geom_text(mapping = aes(label = country), vjust = 1)




# Part 2)
# For the summarized *gss_sm* dataset grouped by only *padeg*, laebl the mean of children and siblings based on the paternal degree.
# ========================== Answer part b =====================






## Part 3) 
# Question: For the by-country dataframe, choose observations from the united state of america (ccdoe=USA) after 1998, and then highlight them in the plot of road fatalities average against the average percentage of donors. 
# ========================== Answer part c =====================




## Part 4)
# Using gapminder dataset, specify the outliers in the plot of gdpPercap over lifeExp. 
# ========================== Answer part d =====================

