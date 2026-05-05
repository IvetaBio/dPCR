
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

library(tidyverse)
library(ggplot2)
library(dplyr)
library(readr)

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
      TRUE ~ NA_character_),
    Resident_Rhizobial_Level = case_when(
      substr(Prefix,nchar(Prefix), nchar(Prefix)) == "H" ~ "High",
      substr(Prefix,nchar(Prefix), nchar(Prefix)) == "h" ~ "High",
      substr(Prefix,nchar(Prefix), nchar(Prefix)) == "L" ~ "Low",
      TRUE ~ NA_character_
    ))

Master_dPCR_data_clean <- Master_dPCR_data %>% 
  select(Source_Plate,Sample.NTC.Control,Location,Resident_Rhizobial_Level,Reaction.Mix,Target..Name.,Conc...cp.µL...dPCR.reaction.)

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
  select(Source_Plate,Location,Sample.NTC.Control,Treatment,Resident_Rhizobial_Level,Reaction.Mix,Target..Name.,Conc...cp.µL...dPCR.reaction.)

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
  group_by(Location,Year,Treatment,Resident_Rhizobial_Level) %>%
  summarise(
    n = sum(!is.na(G22_Second_Correction)),
    mean_G22 = mean(G22_Second_Correction, na.rm = TRUE),
    sd_G22 = sd(G22_Second_Correction, na.rm = TRUE),
    se_G22 = sd_G22 / sqrt(n()),
    .groups = "drop") %>%
  filter(!is.na(Resident_Rhizobial_Level))

G24_summary <- Master_dPCR_data_wide %>%
  filter(Reaction.Mix == "U_G24", !is.na(Location)) %>%
  group_by(Location, Year, Treatment,Resident_Rhizobial_Level) %>%
  summarise(
    n = sum(!is.na(G24_Second_Correction)),
    mean_G24 = mean(G24_Second_Correction, na.rm = TRUE),
    sd_G24 = sd(G24_Second_Correction, na.rm = TRUE),
    se_G24 = sd_G24 / sqrt(n),
    .groups = "drop") %>% 
  filter(n>0) %>% 
  filter(!is.na(Resident_Rhizobial_Level))

Universal_U_G22_summary <- Master_dPCR_data_wide %>%
  filter(Reaction.Mix == "U_G22", !is.na(Location)) %>% 
  group_by(Location,Year,Treatment,Resident_Rhizobial_Level) %>% 
  summarise(
    n = sum(!is.na(Universal_Second_Correction)),
    mean_Universal = mean(Universal_Second_Correction, na.rm = TRUE),
    sd_Universal = sd(Universal_Second_Correction, na.rm = TRUE),
    se_Universal = sd(Universal_Second_Correction, na.rm = TRUE)/sqrt(n()),
    .groups = "drop") %>% 
  filter(n>0) %>% 
  filter(!is.na(Resident_Rhizobial_Level))

Universal_U_G24_summary <- Master_dPCR_data_wide %>% 
  filter(Reaction.Mix == "U_G24", !is.na(Location)) %>% 
  group_by(Location, Year, Treatment,Resident_Rhizobial_Level) %>% 
  summarise(
    n = sum(!is.na(Universal_Second_Correction)),
    mean_Universal = mean(Universal_Second_Correction, na.rm = TRUE),
    sd_Universal = sd(Universal_Second_Correction, na.rm = TRUE),
    se_Universal = sd(Universal_Second_Correction, na.rm = TRUE)/sqrt(n()),
    .groups = "drop") %>% 
  filter(n>0) %>% 
  filter(!is.na(Resident_Rhizobial_Level))


# Now I am going to combine G24_summary and Universal_U_G24_summary together, so
## that I can calculate the proportion of G24 relative to Universal
G24_final_summary <- G24_summary %>% 
  left_join(Universal_U_G24_summary,
            by = c("Location","Year","Treatment", "Resident_Rhizobial_Level")) %>% 
  mutate(
    G24_fraction = mean_G24/mean_Universal,
    G24_percentage = G24_fraction * 100,
    Universal_fraction = 1 - G24_fraction,
    Universal_percentage = 100 - G24_percentage,
    se_percent = (se_G24/mean_Universal) *100 )

library(tidyr)

G24_final_summary_longformat <- G24_final_summary %>% 
  pivot_longer(
    cols = c(G24_percentage,Universal_percentage),
    names_to = "Group",
    values_to = "Percentage"
    )


#Now I am going to combine G22_summary and Universal_U_G22_summary together, so
## that I can calculate the proportion of G22 relative to Universal
G22_final_summary <- G22_summary %>% 
  left_join(Universal_U_G22_summary,
            by = c("Location","Year","Treatment","Resident_Rhizobial_Level")) %>% 
  mutate(
    G22_fraction = mean_G22/mean_Universal,
    G22_percentage = G22_fraction *100,
    Universal_fraction = 1 - G22_fraction,
    Universal_percentage = 100 - G22_percentage,
    se_percent = (se_G22/mean_Universal)* 100)

G22_final_summary_longformat <- G22_final_summary %>% 
  pivot_longer(
    cols = c(G22_percentage,Universal_percentage),
    names_to = "Group",
    values_to = "Percentage"
  )

### Calculating Proportion Data Again _27Apr2026#########

G22_prop_data_27Apr2026 <- Master_dPCR_data_wide %>% 
  filter(Reaction.Mix =="U_G22", !is.na(Location)) %>% 
  mutate(
    G22_prop = ifelse(
      Universal_Second_Correction > 0,
      G22_Second_Correction/Universal_Second_Correction,
      NA),
    Resident_prop = 1 - G22_prop)

G22_prop_summary_data_27Apr2026 <- G22_prop_data_27Apr2026 %>% 
  group_by(Location,Year,Treatment,Resident_Rhizobial_Level) %>% 
  summarise(
    mean_G22_prop = mean(G22_prop, na.rm = TRUE),
    mean_U_prop = mean(Resident_prop, na.rm = TRUE),
    median_G22_prop = median(G22_prop, na.rm = TRUE),
    median_U_prop = median(Resident_prop, na.rm = TRUE),
    sd_G22_prop = sd(G22_prop, na.rm = TRUE),
    sd_U_prop = sd(Resident_prop, na.rm = TRUE),
    n = sum(!is.na(G22_prop)),
    se_G22_prop = sd_G22_prop/sqrt(n),
    se_U_prop = sd_U_prop/sqrt(n),
    .groups = "drop"
  )

G24_prop_data_27Apr2026 <- Master_dPCR_data_wide %>% 
  filter(Reaction.Mix =="U_G24", !is.na(Location)) %>% 
  mutate(
    G24_prop = ifelse(
      Universal_Second_Correction > 0,
      G24_Second_Correction/Universal_Second_Correction,
      NA),
    Resident_prop = 1 - G24_prop)

G24_prop_summary_data_27Apr2026 <- G24_prop_data_27Apr2026 %>% 
  group_by(Location,Year, Treatment, Resident_Rhizobial_Level) %>% 
  summarise(
    mean_G24_prop = mean(G24_prop, na.rm = TRUE),
    mean_U_prop = mean(Resident_prop, na.rm = TRUE),
    sd_G24_prop = sd(G24_prop, na.rm = TRUE),
    sd_U_prop = sd(Resident_prop, na.rm = TRUE),
    n = sum(!is.na(G24_prop)),
    se_G24_prop = sd_G24_prop / sqrt(n),
    se_U_prop = sd_U_prop/ sqrt(n),
    .groups = "drop"
  )



################################################################################
## Practicing Plotting the Proportion Data ####


# Installing Packages and Libraries
install.packages("ggiraph")
library(ggiraph)
library(patchwork)
library(sf)
library(RColorBrewer)
library(ggplot2)

# first plotting simple stacked barplot
G24_proportion_barplot <- ggplot(G24_final_summary_longformat,
                                 aes(
                                   x = interaction(Treatment,Resident_Rhizobial_Level, sep = "\n"),
                                   y = Percentage,
                                   fill = Group))+
  geom_bar(stat = "identity")+
  facet_grid(Location ~ Year)+
  geom_text(aes(label = paste(round(Percentage,2),"%")), position = position_stack(vjust = 0.5))+
  labs(x = "Field Treatment", y = "Percentage (%)",
       title = "Relative Abundance of G24 Within Total Rhizobial Populations\nAcross Treatments, Location, and Year")+
  theme(axis.text.x = element_text(angle = 0,hjust = 0.5))+
  theme(axis.text.x = element_text(color = "black"))+
  theme(axis.text.y = element_text(color = "black"))+
  scale_fill_brewer(palette = "Dark2",
                    labels = c(
                      "G24_percentage" = "G24",
                      "Universal_percentage" = "Resident Rhizobium"))

G24_proportion_barplot



G22_proportion_barplot <- ggplot(G22_final_summary_longformat,
                                 aes(
                                   x = interaction(Treatment, Resident_Rhizobial_Level, sep = "\n"),
                                   y = Percentage,
                                   fill = Group))+
  geom_bar(stat = "identity")+
  facet_grid(Location ~ Year)+
  geom_text(aes(label = paste(round(Percentage,2),"%")), position = position_stack(vjust = 0.5))+
  labs(x = "Field Treatment", y = "Percentage (%)",
       title = "Relative Abundance of G22 Within Total Rhizobial Populations\nAcross Treatments, Location, and Year")+
  theme(axis.text.x = element_text(angle = 0,hjust = 0.5))+
  theme(axis.text.x = element_text(color = "black"))+
  theme(axis.text.y = element_text(color = "black"))+
  scale_fill_brewer(palette = "Dark2",
                    labels = c(
                      "G22_percentage" = "G22",
                      "Universal_percentage" = "Resident Rhizobium"))


G22_proportion_barplot



####### reploting the proportions again 27Apr2026 #############

library(ggplot2)

G22_plot_data_longformat <- G22_prop_summary_data_27Apr2026 %>% 
  pivot_longer(
    cols = c(mean_G22_prop,mean_U_prop),
    names_to = "Group",
    values_to = "Proportion"
  )

G22_plot_data_longformat <- G22_plot_data_longformat %>% 
  filter(!is.na(Resident_Rhizobial_Level))

G22_prop_barplot_27Apr2026 <- ggplot(
  G22_plot_data_longformat,
  aes(
    x = interaction(Treatment, Resident_Rhizobial_Level, sep = "\n"),
    y = Proportion * 100,
    fill = Group
  )
) +
  geom_bar(stat = "identity") +
  facet_grid(Location ~ Year) +
  geom_text(
    aes(label = paste0(round(Proportion * 100, 2), "%")),
    position = position_stack(vjust = 0.5)
  ) +
  labs(
    x = "Field Treatment",
    y = "Relative abundance (%)",
    title = "Relative Abundance of G22 Within Total Rhizobial Populations\nAcross Treatments, Location, and Year"
  ) +
  theme(
    axis.text.x = element_text(size = 14, angle = 0, hjust = 0.5, color = "black"),
    axis.text.y = element_text(size = 14, color = "black"),
    axis.title.x = element_text(size = 16),
    axis.title.y = element_text(size = 16),
    legend.title = element_text(size = 16),
    legend.text = element_text(size = 16),
    strip.text.x = element_text(size = 16, face = "bold"),
    strip.text.y = element_text(size = 16, face = "bold")
  ) +
  scale_fill_brewer(
    palette = "Dark2",
    labels = c(
      "mean_G22_prop" = "G22",
      "mean_U_prop" = "Resident Rhizobium"
    )
  )

G22_prop_barplot_27Apr2026

G24_plot_data_longformat <- G24_prop_summary_data_27Apr2026 %>% 
  pivot_longer(
    cols = c(mean_G24_prop,mean_U_prop),
    names_to = "Group",
    values_to = "Proportion"
  )


G24_plot_data_longformat <- G24_plot_data_longformat %>% 
  filter(!is.na(Resident_Rhizobial_Level))

G24_prop_barplot_27Apr2026 <- ggplot(
  G24_plot_data_longformat,
  aes(
    x = interaction(Treatment,Resident_Rhizobial_Level, sep = "\n"),
    y = Proportion *100,
    fill = Group))+
  geom_bar(stat = "identity")+
  facet_grid(Location ~Year)+
  geom_text(
    aes(label = paste0(round(Proportion * 100,2), "%")),
    position = position_stack(vjust = 0.5))+
  labs(
    x = "Field Treatment",
    y = "Relative abundance (%)",
    title = "Relative Abundance of G24 Within Total Rhizobial Populations\nAcross Treatments, Location, and Year"
  ) +
  theme(
    strip.text.x = element_text(size = 16, face = "bold"),
    strip.text.y = element_text(size = 16, face = "bold")
  )+
  theme(
    axis.text.x = element_text(size = 14,angle = 0, hjust = 0.5, color = "black"),
    axis.text.y = element_text(size = 14, color = "black"),
    axis.title.x = element_text(size = 16),
    axis.title.y = element_text(size = 16),
    legend.title = element_text(size = 16),
    legend.text = element_text(size = 16)
  ) +
  scale_fill_brewer(
    palette = "Dark2",
    labels = c(
      "mean_G24_prop" = "G24",
      "mean_U_prop" = "Resident Rhizobium"
    )
  )

G24_prop_barplot_27Apr2026

G22_prop_barplot_27Apr2026 + G24_prop_barplot_27Apr2026

####Running Statistical Analysis 27Apr2026####################################

# Figuring out if my data follows assumption of normality or not

# Step 1: checking the structure of my data 
str(G22_prop_data_27Apr2026)
str(G24_prop_data_27Apr2026)

# Step 2: change the values that should be factors as factors instead of continuous 
G22_prop_data_27Apr2026 <- G22_prop_data_27Apr2026 %>%
  mutate(
    Location = as.factor(Location),
    Year = as.factor(Year),
    Treatment = as.factor(Treatment),
    Resident_Rhizobial_Level = as.factor(Resident_Rhizobial_Level)
  )


G24_prop_data_27Apr2026 <- G24_prop_data_27Apr2026 %>% 
  mutate(
    Location = as.factor(Location),
    Year = as.factor(Year),
    Treatment = as.factor(Treatment),
    Resident_Rhizobial_Level = as.factor(Resident_Rhizobial_Level)
  )

#running the following will not entirely help
hist(Master_dPCR_data_wide$G22_Second_Correction)

#Log transforming abundance data
## first by filtering by MM
U_G22_MM <- Master_dPCR_data_wide %>% 
  filter(Reaction.Mix == "U_G22")

G22_hist_data <- U_G22_MM %>% 
  mutate(log_G22 = log10(G22_Second_Correction + 1))

hist(G22_hist_data$log_G22)

qqnorm(G22_hist_data$log_G22)
qqline(G22_hist_data$log_G22)



table(G22_prop_data_27Apr2026$Resident_Rhizobial_Level, useNA = "ifany")

table(G22_prop_data_27Apr2026$Treatment)

table(G24_prop_data_27Apr2026$Resident_Rhizobial_Level)

table(G24_prop_data_27Apr2026$Treatment)

# Running kruskal test 27Apr2026
kruskal.test(G22_prop ~ Treatment, data = subset(G22_prop_data_27Apr2026,
                                                 Location == "Minot" &
                                                   Year == 2025 &
                                                   Resident_Rhizobial_Level == "Low"))

## running Wilcoxon pairwise tests to see which treatments differ
pairwise.wilcox.test(
  x = subset(G22_prop_data_27Apr2026,
             Location == "Minot" &
               Year == 2025 &
               Resident_Rhizobial_Level == "Low")$G22_prop,
  g = subset(G22_prop_data_27Apr2026,
             Location == "Minot" &
               Year == 2025 &
               Resident_Rhizobial_Level == "Low")$Treatment,
  p.adjust.method = "BH"
)


#############Plotting box plots for my raw data 28Apr2026 ######################

# first transforming my Master_dPCR_data_wide data into long format

G22_boxplot_1 <- ggplot(Master_dPCR_data_wide, aes(x = Treatment, y = G22_Second_Correction, fill = Treatment))+
  geom_boxplot()

G24_boxplot_1 <- ggplot(Master_dPCR_data_wide, aes(x = Treatment, y = G24_Second_Correction, fill = Treatment))+
  geom_boxplot()

G24_boxplot_1

library(patchwork)

G22_boxplot_1 + G24_boxplot_1


G22_boxplot_2 <- Master_dPCR_data_wide %>%
  filter(!is.na(Resident_Rhizobial_Level)) %>%
  ggplot(aes(x = interaction(Treatment,Resident_Rhizobial_Level, sep = "\n"), 
             y = G22_Second_Correction, 
             fill = Treatment)) +
  geom_boxplot() +
  facet_grid(Location ~ Year)

G22_boxplot_2

G24_boxplot_2 <- Master_dPCR_data_wide %>% 
  filter(!is.na(Resident_Rhizobial_Level)) %>% 
  ggplot(aes(x = interaction(Treatment, Resident_Rhizobial_Level, sep = "\n"),
             y = G24_Second_Correction,
             fill = Treatment))+
  geom_boxplot()+
  facet_grid(Location ~ Year)

G24_boxplot_2

summary(Master_dPCR_data_wide$G22_Second_Correction)
summary(Master_dPCR_data_wide$G24_Second_Correction)


### plotting histogram
ggplot(Master_dPCR_data_wide, aes(x = log10(G22_Second_Correction + 1))) +
  geom_histogram(bins = 25)


ggplot(Master_dPCR_data_wide, aes(x = log10(G24_Second_Correction +1))) +
  geom_histogram(bins = 25)



write.csv(Master_dPCR_data_wide, "Master_dPCR_data_wide.csv", row.names = FALSE)


###### 04May2026 Trying to use a detection jitter plot

Master_dPCR_data_wide <- Master_dPCR_data_wide %>% 
  filter(!is.na(Location))

Master_dPCR_data_longformat <- Master_dPCR_data_wide %>% 
  pivot_longer(
    cols = c(G22_Second_Correction,Universal_Second_Correction,G24_Second_Correction),
    names_to = "Signal",
    values_to = "value"
  )

ggplot(Master_dPCR_data_wide,
       aes(x = interaction(Treatment,Resident_Rhizobial_Level),
           y = G22_Second_Correction,
           color = G22_Second_Correction > 0))+
  geom_jitter(width = 0.2, alpha = 0.7)+
  facet_grid(Location ~ Year)+
  scale_y_continuous(trans = "log1p")




G22_jitterplot <- ggplot(Master_dPCR_data_longformat %>% 
                           filter(Signal %in% c("G22_Second_Correction", "Universal_Second_Correction"),
                                  !is.na(value)),
                         aes(
                           x = interaction(Treatment, Resident_Rhizobial_Level, sep = "\n"),
                           y = log10(value +1),
                           fill = Signal))+
  geom_jitter(position = position_jitterdodge(jitter.width = 0.2,dodge.width = 0.5),alpha = 0.5,
              pch=21, stroke=0, size = 4.0)+
  stat_summary(fun = median,geom = "crossbar", position = position_dodge(width = 0.5), width = 0.3, show.legend = FALSE)+
  facet_grid(Location ~ Year)+
  labs(x = "Field Treatment", y = " G22 Copies/uL in original extraction, Log Transformed",
       title = "Distribution of G22 Across Treatments, Location, and Year")+
  theme(
    strip.text.x = element_text(size = 16, face = "bold"),
    strip.text.y = element_text(size = 16, face = "bold")
  )+
  theme(plot.title = element_text(size = 18))+
  theme(axis.text.x = element_text(size = 14,angle = 0,hjust = 0.5))+
  theme(axis.text.x = element_text(color = "black"))+
  theme(axis.title.x = element_text(size = 14))+
  theme(axis.title.y = element_text(size = 14))+
  theme(axis.text.y = element_text(size = 14, color = "black"))+
  theme(
    legend.title = element_text(size = 16),
    legend.text = element_text(size = 16)
  )+
  scale_fill_brewer(
    palette = "Dark2",
    labels = c(
      "G22_Second_Correction" = "G22",
      "Universal_Second_Correction" = "Resident Rhizobium"
    )
  )


G22_jitterplot


G24_jitterplot <- ggplot(Master_dPCR_data_longformat %>% 
                           filter(Signal %in% c("G24_Second_Correction","Universal_Second_Correction"),
                                  !is.na(value)),
                         aes(
                           x = interaction(Treatment, Resident_Rhizobial_Level, sep = "\n"),
                           y = log10(value +1),
                           fill = Signal))+
  geom_jitter(position = position_jitterdodge(jitter.width = 0.2,dodge.width = 0.5,),alpha = 0.5,
              pch=21, stroke=0, size = 4.0)+
  stat_summary(fun = median,geom = "crossbar", position = position_dodge(width = 0.5), width = 0.3, show.legend = FALSE)+
  facet_grid(Location ~ Year)+
  labs(x = "Field Treatment", y = " G24 Copies/uL in original extraction, Log Transformed",
       title = "Distribution of G24 Across Treatments, Location, and Year")+
  theme(
    strip.text.x = element_text(size = 16, face = "bold"),
    strip.text.y = element_text(size = 16, face = "bold")
  )+
  theme(plot.title = element_text(size = 18))+
  theme(axis.text.x = element_text(size = 14, angle = 0,hjust = 0.5))+
  theme(axis.text.x = element_text(color = "black"))+
  theme(axis.text.y = element_text(size = 14,color = "black"))+
  theme(axis.title.x = element_text(size = 14))+
  theme(axis.title.y = element_text(size = 14))+
  theme(
    legend.title = element_text(size = 16),
    legend.text = element_text(size = 16)
  )+
  scale_fill_brewer(
    palette = "Dark2",
    labels = c(
      "G24_Second_Correction" = "G24",
      "Universal_Second_Correction" = "Resident Rhizobium"
    )
  )

G24_jitterplot

G22_jitterplot+G24_jitterplot



(G22_prop_barplot_27Apr2026 + G24_prop_barplot_27Apr2026) /
  (G22_jitterplot + G24_jitterplot)


install.packages("plotly")
library(plotly)
library(ggtext)
library(RColorBrewer)


########### 04Mar2026 Getting a summary how many samples each treatment has
G22_Table <- G22_prop_data_27Apr2026 %>% 
  count(Treatment,Location,Year,Resident_Rhizobial_Level)

G24_Table <- G24_prop_data_27Apr2026 %>% 
  count(Treatment,Location,Year,Resident_Rhizobial_Level)


G22_High_Carrington_2024 <- Master_dPCR_data_longformat %>% 
  filter(
    Location == "Carrington",
    Year == "2024",
    Treatment == "G22",
    Resident_Rhizobial_Level == "High"
  )



