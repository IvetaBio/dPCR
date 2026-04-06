
#copying path to file
Plate_1_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_1_field_samples_dpcr_run_04Mar2026_analysis_17_03_2026_15_20_38_UTC+00_00.csv"

Plate_2_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_2_Field_Samples_dPCR_run_06Mar2026_IH_analysis_03_04_2026_14_12_40_UTC+00_00.csv"

Plate_3_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_3_Field_Samples_dPCR_run_18Mar2026_analysis_03_04_2026_14_24_36_UTC+00_00.csv"

Plate_4_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_4_Field_Samples_dPCR_run_19Mar2026_analysis_03_04_2026_14_31_15_UTC+00_00.csv"

Plate_1_1_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_1.1_Field_Samples_dPCR_run_23Mar2026_analysis_03_04_2026_14_37_17_UTC+00_00.csv"

Plate_2_2_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_2.2_Field_Samples_dPCR_run_24Mar2026_analysis_03_04_2026_14_41_53_UTC+00_00.csv"

Plate_3_2_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_3.2_Field_Samples_dPCR_run_24Mar2026_analysis_03_04_2026_14_46_02_UTC+00_00.csv"

Plate_4_2_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_4.2_Field_Samples_dPCR_Run_28Mar2026_analysis_05_04_2026_16_59_46_UTC+00_00.csv"

Plate_5_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_5_Field_Samples_dPCR_run_29Mar2026_analysis_05_04_2026_17_52_26_UTC+00_00.csv"

Plate_6_csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_6_Field_Samples_dPCR_run_29Mar2026_analysis_03_04_2026_14_57_22_UTC+00_00.csv"

#Reading in the data file 
# Okay so the issue is with the first line.. so I am going to skip line 1
Plate_1_dPCR_data <- read.csv(
  Plate_1_csv_path,
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


#Adding a column to let me know what plate the data came from 
Plate_1_dPCR_data <- Plate_1_dPCR_data %>% 
  mutate(
    Source_Plate = "Plate_1_04Mar2026"
  )

Plate_2_dPCR_data <- Plate_2_dPCR_data %>% 
  mutate(
    Source_Plate = "Plate_2_06Mar2026"
  )

Plate_3_dPCR_data <- Plate_3_dPCR_data %>% 
  mutate(
    Source_Plate = "Plate_3_18Mar2026"
  )

Plate_4_dPCR_data <- Plate_4_dPCR_data %>% 
  mutate(
    Source_Plate = "Plate_4_19Mar2026"
  )

Plate_1_1_dPCR_data <- Plate_1_1_dPCR_data %>% 
  mutate(
    Source_Plate = "Plate_1_1_23Mar2026"
  )

Plate_2_2_dPCR_data <- Plate_2_2_dPCR_data %>% 
  mutate(
    Source_Plate = "Plate_2_2_24Mar2026"
  )

Plate_3_2_dPCR_data <- Plate_3_2_dPCR_data %>% 
  mutate(
    Source_Plate = "Plate_3_2_24Mar2026"
  )

Plate_4_2_dPCR_data <- Plate_4_2_dPCR_data %>% 
  mutate(
    Source_Plate = "Plate_4_2_28Mar2026"
  )


Plate_5_dPCR_data <- Plate_5_dPCR_data %>% 
  mutate(
    Source_Plate = "Plate_5_29Mar2026"
  )

Plate_6_dPCR_data <- Plate_6_dPCR_data %>% 
  mutate(
    Source_Plate = "Plate_6_29Mar2026"
  )


# Cleaning up all the datafiles so that they can later be put into one big dataframe
plate_list <- list(
  Plate_1_dPCR_data, 
  Plate_2_dPCR_data,
  Plate_3_dPCR_data,
  Plate_4_dPCR_data,
  Plate_1_1_dPCR_data,
  Plate_2_2_dPCR_data,
  Plate_3_2_dPCR_data,
  Plate_4_2_dPCR_data,
  Plate_5_dPCR_data,
  Plate_6_dPCR_data
)

plate_list <- lapply(plate_list, function(df) {
  df[] <- lapply(df, as.character)
  df
})

Master_dPCR_data <- bind_rows(plate_list)




# Now I will be adding a 'Location' column, where if the third character in the 
## "Sample.NTC.Control" column is a C then it's from Carrington, if it is an M, then it's from Minot

Master_dPCR_data <- Master_dPCR_data %>%
  mutate(
    Prefix = sub("_.*", "", Sample.NTC.Control),
    Location = case_when(
      Sample.NTC.Control == "NTC" ~ NA_character_,
      nchar(Prefix) == 4 & substr(Prefix, 3, 3) == "C" ~ "Carrington",
      nchar(Prefix) == 4 & substr(Prefix, 3, 3) == "M" ~ "Minot",
      nchar(Prefix) == 3 & substr(Prefix, 2, 2) == "C" ~ "Carrington",
      nchar(Prefix) == 3 & substr(Prefix, 2, 2) == "M" ~ "Minot",
      TRUE ~ NA_character_
    )
  )

Master_dPCR_data_clean <- Master_dPCR_data %>% 
  select(Source_Plate,Sample.NTC.Control,Location,Reaction.Mix,Target..Name.,Conc...cp.µL...dPCR.reaction.)

view(Master_dPCR_data_clean)


# Now I am rearranging the columns in the order I would like 
library(stringr)

#Now I am adding a Treatment Column to the Master_dPCR_dataframe

Master_dPCR_data_clean <- Master_dPCR_data_clean %>%
  filter(
    !str_detect(Sample.NTC.Control, "Granular Pea Chickpea Lentil"),
    !str_detect(Sample.NTC.Control, "Liquid Pea Lentil")
  ) %>%
  mutate(
    Treatment = case_when(
      str_detect(Sample.NTC.Control, "Uninoc") ~ "Uninoc",
      str_detect(Sample.NTC.Control, "G22") ~ "G22",
      str_detect(Sample.NTC.Control, "G24|(^|[_ ])Ino($|[_ ])| Ino$|_Ino$") ~ "G24",
      TRUE ~ NA_character_
    )
  )

Master_dPCR_data_clean <- Master_dPCR_data_clean %>% 
  select(Source_Plate,Location,Sample.NTC.Control,Treatment,everything())


# Cleaning the Master_dPCR_clean dataframe so that it removes any samples that
## has "NA" in the 'Treatment' column
Master_dPCR_data_clean <- Master_dPCR_data_clean %>%
  filter(!is.na(Treatment))

view(Master_dPCR_data_clean)

Master_dPCR_data_clean <- Master_dPCR_data_clean %>% 
  select(Source_Plate,Location,Sample.NTC.Control,Treatment,Reaction.Mix,Target..Name.,Conc...cp.µL...dPCR.reaction.)

view(Master_dPCR_data_clean)


# Changing the Treatment name that has G22_Hypo to G22
Master_dPCR_data_clean <- Master_dPCR_data_clean %>%
  mutate(
    Target..Name. = case_when(
      Target..Name. == "G22_Hypo" ~ "G22",
      TRUE ~ Target..Name.
    )
  )

view(Master_dPCR_data_clean)

Master_dPCR_data_clean <- Master_dPCR_data_clean %>%
  mutate(
    prefix = sub("_.*", "", Sample.NTC.Control),
    Year = case_when(
      nchar(prefix) == 4 ~ 2025,
      nchar(prefix) == 3 ~ 2024,
      TRUE ~ NA_real_
    )
  ) %>%
  select(-prefix)   

view(Master_dPCR_data_clean)

# Pivoting my data frame so that one sample has only one row
Master_dPCR_data_wide <- Master_dPCR_data_clean %>% 
  pivot_wider(
    names_from = Target..Name.,
    values_from = Conc...cp.µL...dPCR.reaction.
  )

view(Master_dPCR_data_wide)

# Adding Columns that reflect the correction for dilutions
Master_dPCR_data_wide <- Master_dPCR_data_wide %>%
  mutate(
    G22 = as.numeric(G22),
    Universal = as.numeric(Universal),
    G24 = as.numeric(G24)
  ) %>%
  mutate(
    G22_First_Correction = G22 * 8,
    Universal_First_Correction = Universal * 8,
    G24_First_Correction = G24 * 8,
    dilution_number = as.numeric(sub(".*-([0-9]+) .*", "\\1", Sample.NTC.Control)),
    dilution_factor = 10^dilution_number,
    G22_Second_Correction = G22_First_Correction * dilution_factor,
    Universal_Second_Correction = Universal_First_Correction * dilution_factor,
    G24_Second_Correction = G24_First_Correction * dilution_factor
  )

view(Master_dPCR_data_wide)

# Summarizing G22, Universal, and G24.... taking into account the different MM's used 
G22_summary <- Master_dPCR_data_wide %>%
  filter(Reaction.Mix == "U_G22", !is.na(Location)) %>%
  group_by(Location,Year,Treatment) %>%
  summarise(
    n = sum(!is.na(G22_Second_Correction)),
    mean_G22 = mean(G22_Second_Correction, na.rm = TRUE),
    sd_G22 = sd(G22_Second_Correction, na.rm = TRUE),
    se_G22 = sd_G22 / sqrt(n()),
    .groups = "drop")

G24_summary <- Master_dPCR_data_wide %>%
  filter(Reaction.Mix == "U_G24", !is.na(Location)) %>%
  group_by(Location, Year, Treatment) %>%
  summarise(
    n = sum(!is.na(G24_Second_Correction)),
    mean_G24 = mean(G24_Second_Correction, na.rm = TRUE),
    sd_G24 = sd(G24_Second_Correction, na.rm = TRUE),
    se_G24 = sd_G24 / sqrt(n),
    .groups = "drop") %>% 
  filter(n>0)

Universal_U_G22_summary <- Master_dPCR_data_wide %>%
  filter(Reaction.Mix == "U_G22", !is.na(Location)) %>% 
  group_by(Location,Year,Treatment) %>% 
  summarise(
    n = sum(!is.na(Universal_Second_Correction)),
    mean_Universal = mean(Universal_Second_Correction, na.rm = TRUE),
    sd_Universal = sd(Universal_Second_Correction, na.rm = TRUE),
    se_Universal = sd(Universal_Second_Correction, na.rm = TRUE)/sqrt(n()),
    .groups = "drop") %>% 
  filter(n>0)

Universal_U_G24_summary <- Master_dPCR_data_wide %>% 
  filter(Reaction.Mix == "U_G24", !is.na(Location)) %>% 
  group_by(Location, Year, Treatment) %>% 
  summarise(
    n = sum(!is.na(Universal_Second_Correction)),
    mean_Universal = mean(Universal_Second_Correction, na.rm = TRUE),
    sd_Universal = sd(Universal_Second_Correction, na.rm = TRUE),
    se_Universal = sd(Universal_Second_Correction, na.rm = TRUE)/sqrt(n()),
    .groups = "drop") %>% 
  filter(n>0)


# Now I am going to combine G24_summary and Universal_U_G24_summary together, so
## that I can calculate the proportion of G24 relative to Universal
G24_final_summary <- G24_summary %>% 
  left_join(Universal_U_G24_summary,
            by = c("Location","Year","Treatment")) %>% 
  mutate(
    G24_fraction = mean_G24/mean_Universal
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







