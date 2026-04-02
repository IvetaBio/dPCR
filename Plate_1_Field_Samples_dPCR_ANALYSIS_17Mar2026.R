
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
install.packages("dplyr")
library(dplyr)

#Starting to clean up the dataframe by removing columns I do not need and selecting columns I do want
Plate_1_dPCR_data <- Plate_1_dPCR_data %>% 
  select(Well,Sample.NTC.Control,Reaction.Mix,Target..Name.,Conc...cp.µL...dPCR.reaction.,CI..95....dPCR.reaction.,
         Partitions..Valid., Partitions..Positive.,Partitions..Negative.,Threshold)

view(Plate_1_dPCR_data)

# Now I will be adding a 'Location' column, where if the third character in the 
## "Sample.NTC.Control" column is a C then it's from Carrington, if it is an M, then it's from Minot

Plate_1_dPCR_data <- Plate_1_dPCR_data %>% 
  mutate(
    Location = case_when(
      Sample.NTC.Control == "NTC" ~ NA_character_,
      substr(Sample.NTC.Control, 3,3) == "C" ~ "Carrington",
      substr(Sample.NTC.Control, 3,3) == "M" ~ "Minot"
    )
  )

view(Plate_1_dPCR_data)

# Now I am rearranging the columns in the order I would like 
Plate_1_dPCR_data <- Plate_1_dPCR_data %>% 
  select(Well,Sample.NTC.Control,Location,everything())

view(Plate_1_dPCR_data)

library(stringr)

Plate_1_dPCR_data <- Plate_1_dPCR_data %>% 
  mutate(
    Treatment = word(Sample.NTC.Control, -1)
  )

view(Plate_1_dPCR_data)

Plate_1_dPCR_data <- Plate_1_dPCR_data %>% 
  select(Well,Sample.NTC.Control,Location,Treatment, everything())

view(Plate_1_dPCR_data)



# Pivoting my data frame so that one sample has only one row
Plate_1_dPCR_data_wide <- Plate_1_dPCR_data %>% 
  select(Sample.NTC.Control,Location,Treatment,Target..Name.,Conc...cp.µL...dPCR.reaction.) %>% 
  pivot_wider(
    names_from = Target..Name.,
    values_from = Conc...cp.µL...dPCR.reaction.)

view(Plate_1_dPCR_data_wide)


# Adding a proportion column 
Plate_1_dPCR_data_wide <- Plate_1_dPCR_data_wide %>% 
  mutate(
    G22_Proportion = ifelse(Universal == 0, NA, G22_Hypo/Universal)
  )

view(Plate_1_dPCR_data_wide)

Plate_1_dPCR_data_wide <- Plate_1_dPCR_data_wide %>% 
  mutate(G22_Proportion = G22_Proportion * 100,
         G22_First_Correction = G22_Hypo * 8,
         Universal_First_Correction = Universal * 8, 
         dilution_number = as.numeric(sub(".*-([0-9]+) .*", "\\1", Sample.NTC.Control)),
         dilution_factor = 10^dilution_number,
         G22_Second_Correction = G22_First_Correction * dilution_factor,
         Universal_Second_Correction = Universal_First_Correction * dilution_factor
         )

view(Plate_1_dPCR_data_wide)


## Grouping by Location and Treatment and summarizing the data 
Plate_1_dPCR_summary <- Plate_1_dPCR_data_wide %>% 
  group_by(Location, Treatment) %>% 
  summarise(
    n = n(),
    mean_G22 = mean(G22_Proportion, na.rm = TRUE),
    SD_G22 = sd(G22_Proportion, na.rm = TRUE),
    SE_G22 = SD_G22/sqrt(n)
  )


# Getting ready to plot the data, first by removing the controls
Plate_1_plot_data <- Plate_1_dPCR_summary %>% 
  filter(!is.na(Location))

library(ggplot2)







