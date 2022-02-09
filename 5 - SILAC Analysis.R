# SILAC Analysis
# Protein profiles during myocardial cell differentiation

# Load packages ----
library(tidyverse)
library(glue)

# Part 0: Import data ----
# Base R
protein_df <- read.delim("data/Protein.txt")

# Newer, more "user-friendly"
library(readr)
protein_tb <- read_tsv("data/Protein.txt")

# Easiest
library(rio) # R I/O
protein_rio <- import("data/Protein.txt")

# Examine the data:
# summary(protein_df)
# str(protein_df)
glimpse(protein_df)


# Quantify the contaminants ----


# Proportion of contaminants

# Percentage of contaminants (just multiply proportion by 100)

# Transformations & cleaning data ----

# Remove contaminants ====


# log 10 transformations of the intensities ====
# i.e. how to apply a trans function to an entire column in a data frame
# <- "the assign operator"

protein_df$Intensity.H <- log10(protein_df$Intensity.H)
protein_df$Intensity.M <- log10(protein_df$Intensity.M)
protein_df$Intensity.L <- log10(protein_df$Intensity.L)

# More efficient ways using functions in the tidyverse:
# e.g. mutate() for applying trans funcs
# (as opposed to summarise() for applying agg func)



# Add the intensities ====

# log2 transformations of the ratios ====


# Part 2: Query data using filter() ----
# Exercise 9.2 (Find protein values) ====





# Exercise 9.3 (Find significant hits) and 10.2 ====
# For the H/M ratio column, create a new data 
# frame containing only proteins that have 
# a p-value less than 0.05


# Exercise 10.4 (Find top 20 values) ==== 


# Exercise 10.5 (Find intersections) ====

