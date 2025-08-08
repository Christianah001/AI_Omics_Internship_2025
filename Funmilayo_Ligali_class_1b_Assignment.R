#### Tasks ####

# 1. Set Working Directory
# Create a new folder on your computer "AI_Omics_Internship_2025".

# 2. Create Project Folder

# In RStudio, create a new project named "Module_I" in your "AI_Omics_Internship_2025" folder.

# Inside the project directory, create the following subfolders using R code:
# raw_data, clean_data, scripts, results or Tasks, plots etc


dir.create("raw_data")
dir.create("clean_data")
dir.create("Script")
dir.create("Task")
dir.create("Plots")

# 3. Download "patient_info.csv" dataset from GitHub repository

# load the dataset into your R environment

url <- "https://raw.githubusercontent.com/AI-Biotechnology-Bioinformatics/AI_and_Omics_Research_Internship_2025/main/patient_info.csv"
download.file(url, destfile = "raw_data/patient_info.csv", method = "libcurl")

# Load the dataset
patient_info <- read.csv("raw_data/patient_info.csv")

# 3. Inspect dataset

str(patient_info)
summary(patient_info)
head(patient_info)

# 4. Check and convert incorrect/inconsistent data types

if (!is.numeric(patient_info$age)) {
  patient_info$age <- as.numeric(patient_info$age)
}


# Convert smoking_status to binary (1 = Yes, 0 = No)
patient_info$smoking_binary <- ifelse(patient_info$smoker == "Yes", 1, 0)

# Ensure smoking_binary is a factor
patient_info$smoking_binary <- as.factor(patient_info$smoking_binary)


summary(patient_info)

data.frame(patient_info)

# Save the cleaned dataset in your clean_data folder with the name patient_info_clean.csv

write.csv(patient_info, file = "clean_data/patient_info_clean.csv", row.names = FALSE)


# Save your R script in your script folder with name "class_Ib"
# Upload "class_Ib" R script into your GitHub repository
