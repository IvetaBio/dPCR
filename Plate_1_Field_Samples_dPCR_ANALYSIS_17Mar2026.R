
#copying path to file
csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_1_field_samples_dpcr_run_04Mar2026_analysis_17_03_2026_15_20_38_UTC+00_00.csv"

Plate_2_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_2_Field_Samples_dPCR_run_06Mar2026_IH_analysis_03_04_2026_14_12_40_UTC+00_00.csv"

Plate_3_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_3_Field_Samples_dPCR_run_18Mar2026_analysis_03_04_2026_14_24_36_UTC+00_00.csv"

Plate_4_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_4_Field_Samples_dPCR_run_19Mar2026_analysis_03_04_2026_14_31_15_UTC+00_00.csv"

Plate_1_1_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_1.1_Field_Samples_dPCR_run_23Mar2026_analysis_03_04_2026_14_37_17_UTC+00_00.csv"

Plate_2_2_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_2.2_Field_Samples_dPCR_run_24Mar2026_analysis_03_04_2026_14_41_53_UTC+00_00.csv"

Plate_3_2_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_3.2_Field_Samples_dPCR_run_24Mar2026_analysis_03_04_2026_14_46_02_UTC+00_00.csv"

Plate_4_2_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_4.2_Field_Samples_dPCR_Run_28Mar2026_analysis_03_04_2026_14_50_34_UTC+00_00.csv"

Plate_5_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_5_Field_Samples_dPCR_run_29Mar2026_analysis_03_04_2026_14_54_04_UTC+00_00.csv"

Plate_6_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_6_Field_Samples_dPCR_run_29Mar2026_analysis_03_04_2026_14_57_22_UTC+00_00.csv"

#Reading in the data file 
# Okay so the issue is with the first line.. so I am going to skip line 1
Plate_1_dPCR_data <- read.csv(
  csv_path,
  skip = 1,
  header = TRUE,
  stringsAsFactors = FALSE
)

Plate_2_dPCR_data <- read.csv(
  Plate_2_csv_path, 
  skip = 1,
  header = TRUE, 
  stringsAsFactors = FALSE
)

Plate_3_dPCR_data <- read.csv(
  Plate_3_csv_path,
  skip = 1,
  header = TRUE,
  stringsAsFactors = FALSE
)

Plate_4_dPCR_data <- read.csv(
  Plate_4_csv_path, 
  skip = 1,
  header = TRUE,
  stringsAsFactors = FALSE
)

Plate_1_1_dPCR_data <- read.csv(
  Plate_1_1_csv_path,
  skip = 1,
  header = TRUE,
  stringsAsFactors = FALSE
)

Plate_2_2_dPCR_data <- read.csv(
  Plate_2_2_csv_path,
  skip = 1,
  header = TRUE,
  stringsAsFactors = FALSE
)

Plate_3_2_dPCR_data <- read.csv(
  Plate_3_2_csv_path,
  skip = 1,
  header = TRUE,
  stringsAsFactors = FALSE
)

Plate_4_2_dPCR_data <- read.csv(
  Plate_4_2_csv_path,
  skip = 1,
  header = TRUE,
  stringsAsFactors = FALSE
)

Plate_5_dPCR_data <- read.csv(
  Plate_5_csv_path,
  skip = 1,
  header = TRUE,
  stringsAsFactors = FALSE
)

Plate_6_dPCR_data <- read.csv(
  Plate_6_csv_path,
  skip = 1,
  header= TRUE,
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


# Summarizing G22 and Universal 
G22_summary <- Plate_1_dPCR_data_wide %>% 
  filter(!Treatment %in% c("NTC", "3841_G22")) %>% 
  group_by(Location, Treatment) %>% 
  summarise(
    n = n(),
    mean_G22 = mean(G22_Second_Correction, na.rm = TRUE),
    sd_G22 = sd(G22_Second_Correction, na.rm = TRUE),
    se_G22 = sd_G22/sqrt(n())
  )

Universal_summary <- Plate_1_dPCR_data_wide %>% 
  filter(!Treatment %in% c("NTC", "3841_G22")) %>% 
  group_by(Location, Treatment) %>% 
  summarise(
    n = n(),
    mean_Universal = mean(Universal_Second_Correction, na.rm = TRUE),
    sd_Universal = sd(Universal_Second_Correction, na.rm = TRUE),
    se_Universal = sd_Universal/sqrt(n())
  )

# Plotting 'How abundance of G22 changes across Treatments'
## first changing the type of Treatment data to factor, to help with plotting treatment order
G22_summary$Treatment <- factor(G22_summary$Treatment,
                                levels = c("Uninoc","Ino","G22"))

Universal_summary$Treatment <- factor(Universal_summary$Treatment, 
                                      levels = c("Uninoc","Ino","G22"))


# Plotting G22 Abundance 
library(ggplot2)

G22_abundance_plot <- ggplot(G22_summary, aes(x = Treatment, y = mean_G22, fill = Location))+
  geom_col(position = position_dodge(width = 0.9))+
  geom_errorbar(aes(ymin = mean_G22 - se_G22, ymax = mean_G22 + se_G22),
                width = 0.2,
                position = position_dodge(width = 0.9))+
  labs(
    title = "G22 Abundance by Treatment and Location", 
    x = "Treatment",
    y = "Location")+
  theme_minimal()

G22_abundance_plot


Universal_abundance_plot <- ggplot(Universal_summary, aes(x = Treatment, y = mean_Universal, fill = Location))+
  geom_col(position = position_dodge(width = 0.9))+
  geom_errorbar(aes(ymin = mean_Universal - se_Universal, ymax = mean_Universal + se_Universal),
                width = 0.2,
                position = position_dodge(width = 0.9))+
  labs(
    title = "Universal Abundance by Treatment and Location",
    x = "Treatment",
    y = "Location")+
  theme_minimal()

Universal_abundance_plot


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







