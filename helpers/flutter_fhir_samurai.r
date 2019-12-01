library("RonFHIR")
library("jsonlite")
library("httr")
library("tibble")
library("tidyr")
library("dplyr")
library("purrr")

#setup first url, get authorization token
url <- "https://dbhifhir.aidbox.app/auth/token?client_id=greyfhir&client_secret=verysecret&grant_type=client_credentials"
r<-POST(url = url, add_headers(`content-type` ="application/json"))

#request all patient data using authorization token
url2 <- "https://dbhifhir.aidbox.app/Patient"
patients <- GET(url = url2, 
                add_headers(`content-type` ="application/json"), 
                add_headers(`Authorization` = paste(content(r)$token_type, " ", content(r)$access_token)))

#select content of repsonse
cont <- content(patients, type = "application/json")

#start formatting response
data_raw <- enframe(unlist(cont))

#find number of columns needed to properly format
rgx_split <- "\\."
n_cols_max <- data_raw %>% pull(name) %>% str_split(rgx_split) %>% map_dbl(~length(.)) %>% max()
nms_sep <- paste0("name", 1:n_cols_max)

#more formatting
better_data <- data_raw %>% separate(name, into = nms_sep, fill="right")
