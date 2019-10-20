---
title: "Tibble Exploration"
author: "Aylin Mumcular"
date: "10 09 2019"
output:
  pdf_document:
    toc: yes
  html_document:
    number_sections: yes
    theme: cerulean
    toc: yes
---
install.packages('rmarkdown')
install.packages('tibble')
install.packages('gapminder')
install.packages('DT')

```{r load, warning = FALSE, echo = FALSE}

library(tibble)
library(gapminder)
library(DT)
```


## Print out gapminder data:
```{r}
gapminder

```


Convert mtcars to a tibble, and wrap in datatable:

```{r}
datatable(as_tibble(mtcars))
```

