#library
library(robotstext)
library(rvest)
#scraping website
url <- "https://www.espncricinfo.com/story/anantha-narayanan-jayasuriya-stunner-in-singapore-and-all-the-other-outliers-in-odi-history-1348299"
#allowability  
  path = paths_allowed(url)
#HTML of the website
web = read_html(url)
view(web)
#segregate content
content <- web %>% html_nodes() %>% html_text()
view(content)
#low case conversion
lowc = tolower(content)
view(lowc)
#upper case conversion
highc = toupper(content)
view(highc)
#character replacement
chartr(old = "a",new = "A",lowc)
#splitting strings
spl = strsplit(highc, split = "")
view(spl)
#extract as list
spl[[1]]
#extract as words
spl2 = unlist(strsplit(highc,split = ""))
view(spl2)
#accessing single element
spl2
spl2[1]
spl2[1000]
#importing library
library(stringr)
#length of string
str_length(content)
str_length(spl)
str_length(spl2)
#Detecting string
str_detect(spl2, "B")
str_detect(spl2, "AT")
#Detecting string indexes
str_which(spl2, "AT")
spl2[2855]
#Counting matches in string
str_count(spl2, "A")
#Flattening string
a = srt_flatten(spl, "")
view(a)
#converting to tittle format
str_to_title(lowc[1])
#converting to sentence
srt_to_sentence(lowc[1])
