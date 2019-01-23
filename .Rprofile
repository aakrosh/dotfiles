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
