#Set Up

library(dplyr)
library(readr)    
library(ggplot2) 
library(stats)

#read in the data
pub_pcrevents <- read_delim(file = "./Pub_PCRevents.txt",
                            delim = "|",
                            col_names = TRUE,
                            num_threads = 8,
                            na = c("", "."),
                            quote = "\'",
                            trim_ws = TRUE,
                            n_max = 50)


####

library(readr)

var_pcrevent <- c("eDisposition_12", "eDisposition_16", "eDisposition_21", "ePatient_13", "ePatient_15", "ePatient_16",
      "eTimes_07", "eTimes_09", "eTimes_11") #the variables I need

pub_pcrevents <- read_delim(file = "https://www.dropbox.com/s/lyng1n5ild5gyvp/Pub_PCRevents.txt?dl=1",
                            delim = "|",
                            col_names = TRUE,
                            num_threads = 8,
                            na = c("", "."),
                            quote = "\'",
                            trim_ws = TRUE,
                            n_max = 50) %>%
      mutate_all(~ gsub("~", "", .)) %>% 
      select(var_pcrevent)
      setNames(colnames(.) %>% gsub("~", "", .)) 
      
Patient_Race <- read_delim(file = "https://www.dropbox.com/s/j9i04rt6abvnty5/GROUP_PCRPATIENTRACEGROUP.txt?dl=1",
                            delim = "|",
                            col_names = TRUE,
                            num_threads = 8,
                            na = c("", "."),
                            quote = "\'",
                            trim_ws = TRUE,
                            n_max = 50) %>%
      mutate_all(~ gsub("~", "", .)) %>% 
      setNames(colnames(.) %>% gsub("~", "", .)) 
      
      
      

      
      
     
