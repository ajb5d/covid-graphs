library(tidyverse)

data <- read_csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us-counties.csv")

COUNTIES <- c(
  "Albemarle",
  "Augusta",
  "Buckingham",
  "Charlottesville city",
  "Culpeper",
  "Fluvanna",
  "Greene",
  "Louisa",
  "Madison",
  "Orange"
)

data <- data %>% filter(state == "Virginia", county %in% COUNTIES)
ggplot(data) + geom_line(aes(date, cases, color = county))