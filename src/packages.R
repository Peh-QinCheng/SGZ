ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}


#Add packages here
packages <- c(
  "ggplot2", 
  "plyr", 
  "reshape2", 
  "RColorBrewer", 
  "scales", 
  "grid"
  
  
  )


ipak(packages)