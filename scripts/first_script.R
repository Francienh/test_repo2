# my first github synced script 
library(renv)
#can use renv::init() to make lock file that contains all the verions you use during the project
#restore the versions of the packages used to develop this project
renv::restore()
#rmember to use pull in git tab to get changes from github

#load libraries
install.packages("tidyverse")
library(tidyverse)


x <- c(1,2,3,4,5)
y <- c(1,4,3,6,9)
data <- data.frame(x,y)
data

#new base r pipe operation is |> instead of %>%
fig01 <- data |> ggplot(aes(x=x, y=y)) + 
  geom_point() + 
  geom_smooth(method= "lm")
fig01
#root of project is .
ggsave("./figures/fig01.png", plot=fig01, width=1920, height=1068, units="px")
