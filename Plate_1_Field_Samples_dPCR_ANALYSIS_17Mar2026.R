
#copying path to file
csv_path <- "R:/AES_MicrobiologicalArchive/Data/Geddes Lab/02_Geddes_Grad_Students/Iveta_Casey/Electronic Lab Notebook/Digital PCR/HWMC_Field_Samples_dPCR_Results/Plate_1_field_samples_dpcr_run_04Mar2026_analysis_17_03_2026_15_20_38_UTC+00_00.csv"

#Reading in the data file 
Plate_1_dPCR_data <- read.csv(csv_path, header = TRUE, stringsAsFactors = FALSE)

#having issues reading in the csv file, so I am going to see how many fields there are 
# asking if every row in this CSV file have the same number of comma-separated fields...
field_counts <- count.fields(csv_path, sep = ",")
table(field_counts)

# results are showing that 193 rows have 25 columns...and there is one row that has 2 columns

# trying to find the exact row that is giving me issues 
