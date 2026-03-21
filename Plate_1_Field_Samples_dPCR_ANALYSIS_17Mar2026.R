
#copying path to file
csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_1_field_samples_dpcr_run_04Mar2026_analysis_17_03_2026_15_20_38_UTC+00_00.csv"

#Reading in the data file 
Plate_1_dPCR_data <- read.csv(csv_path, header = TRUE, stringsAsFactors = FALSE)


# Okay so the issue is with the first line.. so I am going to skip line 1
Plate_1_dPCR_data <- read.csv(
  csv_path,
  skip = 1,
  header = TRUE,
  stringsAsFactors = FALSE
)

#installing packages
install.packages("tidyverse")
library(tidyverse)

#Starting to clean up the dataframe by removing columns I do not need and selecting columns I do want
Plate_1_dPCR_data <- Plate_1_dPCR_data %>% 
  select(Well,Sample.NTC.Control,Reaction.Mix,Target..Name.,Conc...cp.µL...dPCR.reaction.,CI..95....dPCR.reaction.,
         Partitions..Valid., Partitions..Positive.,Partitions..Negative.,Threshold)

view(Plate_1_dPCR_data)







