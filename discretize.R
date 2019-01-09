pec4_data <- read.csv('./data/pec4_data_breaches.csv', na.strings = "")

pec4_data <- pec4_data[complete.cases(pec4_data),]

require(arules)

pec4_data$'RECORDS_LOST_RANGE' <- discretize(pec4_data$RECORDS_LOST, breaks = 4, method = "frequency") 

write.csv(pec4_data, './data/pec4_data_breaches.csv', row.names = FALSE)
