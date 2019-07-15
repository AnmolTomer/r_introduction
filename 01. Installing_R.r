# author : Anmol Tomer
# email : anmol3540@gmail.com
# File:   InstallingR.R
# Course: R: An Introduction (with RStudio)

# LOAD DATA ################################################
load(datasets) # Load built-in datasets

# SUMMARIZE DATA ###########################################
head(iris)         # Show the first six lines of iris data
summary(iris)      # Summary statistics for iris data
plot(iris)         # Scatterplot matrix for iris data

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")
# Clear mind :)