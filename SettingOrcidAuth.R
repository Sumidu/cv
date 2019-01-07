## Call this script to set the access-token for ORCID data
library(rorcid)
library(tidyverse)

if(Sys.getenv("ORCID_TOKEN")!=""){
  print("Key found in sys-environment. No action needed. ")
} else
{
  auth_key <- orcid_auth() %>% str_split(pattern=" ") %>% unlist() 
  print("Setting key in sys-environment.")
  print(Sys.setenv(ORCID_TOKEN = auth_key[2]))
}
