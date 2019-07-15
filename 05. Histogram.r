# File:   Histograms.R
# Course: R: An Introduction (with RStudio)

# LOAD PACKAGES ############################################

library(datasets)

# In a histogram we look for if that data i.e. is it symmetrical or skewed, bi-modal, uni-model etc.
# We also look for gaps or big empty spaces in distribution. Also for outliers.
# We also look for symmetry whether we have same number of high or low scores, or we need
# to do some sort of scaling to the distribution.

# LOAD DATA ################################################
?iris
head(iris)

# Basic Histograms
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

# HISTOGRAM BY GROUP #######################################

# Put graphs in 3 rows and 1 column
par(mfrow = c(3, 1))

# Histograms for each species using options
hist(iris$Petal.Width [iris$Species == "setosa"],
	 xlim = c(0, 3),
	 breaks = 9,
	 main = "Petal Width for Setosa",
	 xlab = "",
	 col = "red")

hist(iris$Petal.Width [iris$Species == "versicolor"],
	 xlim = c(0, 3),
	 breaks = 9,
	 main = "Petal Width for Versicolor",
	 xlab = "",
	 col = "purple")

hist(iris$Petal.Width [iris$Species == "virginica"],
	 xlim = c(0, 3),
	 breaks = 9,
	 main = "Petal Width for Virginica",
	 xlab = "",
	 col = "blue")

# Restore graphic parameter
par(mfrow=c(1, 1))

# CLEAN UP #################################################

# Clear packages
detach("package:datasets", unload = TRUE)  # For base

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L

# Clear mind :)
