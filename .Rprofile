# do not prompt for R install mirror
local({
  r <- getOption("repos")
  r["CRAN"] <- "https://cran.rstudio.com/"
  options(repos = r)
})

# do not prompt to save workspace
q <- function (save="no", ...) {
  quit(save=save, ...)
}

# load tidyverse by default
suppressMessages(library(tidyverse))
suppressMessages(library(magrittr))
