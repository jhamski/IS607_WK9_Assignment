# IS607 Homework Week 9

library(XML)
library(RJSONIO)
library(RCurl)

#HTML
html <- readHTMLTable("books.html", header=TRUE, as.data.frame = TRUE)
str(html)

#XML
xml <- xmlParse("books.xml")
xml.DF <- xmlToDataFrame(xmlChildren(xml))
str(xml.DF)

#JSON
json <- fromJSON("books.json")
json.DF <- data.frame(json$Books)
str(json.DF)