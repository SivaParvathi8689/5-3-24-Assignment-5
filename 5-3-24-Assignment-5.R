# Read the data
data <- read.csv("C:\\Users\\yspar\\Downloads\\demographics.csv", stringsAsFactors = FALSE)

# Show the data of France
france_data <- subset(data, data$Country.Name == "France")
print(france_data)

# Show the countries with birthrate > 20 and High income
high_birthrate_high_income <- subset(data, data$Birth.rate > 20 & data$Income.Group == "High income")
print(high_birthrate_high_income)

# Show the data of the country with the highest internet users (Iceland)
highest_internet_users <- data[which.max(data$Internet.users), ]
print(highest_internet_users)

# Average Birthrate
average_birthrate <- mean(data$Birth.rate)
print(average_birthrate)

# Standard Deviation of birthrate
std_dev_birthrate <- sd(data$Birth.rate)
print(std_dev_birthrate)

# Countries whose birth rate is two SDs above the mean
two_sd_above_mean <- subset(data, data$Birth.rate > (average_birthrate + 2 * std_dev_birthrate))
print(two_sd_above_mean)

# IQR of the birthrate
iqr_birthrate <- IQR(data$Birth.rate)
print(iqr_birthrate)
