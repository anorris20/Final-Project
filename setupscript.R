## Setup Script 
## ESS-523A (08/27/2025)

packageLoad <- function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# in order to use script above: Source = run everything
# now the function is saved in Global Environment


# TEST FUNCTION:
packageLoad("tidyverse")


# LOAD IN MULTIPLE PACKAGES:

## Create the variable for the string. Concatinate function "c"
packages <- c('tidyverse',
              'palmerpenguins',
              'rmarkdown',
              'ggthemes',
              'RColorBrewer',
              'viridis',
              'ggdark',
              'plotly',
              'ggimage',
              'png',
              'lterdatasampler',
              'rstatix',
              'httr',
              'jsonlite',
              'dplyr',
              'purrr',
              'plotly',
              'scales')

## Insert variable into function.
packageLoad(packages)

