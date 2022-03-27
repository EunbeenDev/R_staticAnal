url="https://vincentarelbundock.github.io/Rdatasets/csv/AER/CASchools.csv"
myCASchools=read.csv(url)
str(myCASchools);head(myCASchools)

myCASchools$mymean = (myCASchools$read+myCASchools$math)/2
(CA_mean = mean(myCASchools$mymean))
myCASchools %>% filter(mymean > CA_mean) %>% arrange(desc(mymean)) %>%
  head(10) %>% select(county, school, mymean)

myCASchools %>% filter(mymean > CA_mean) %>% arrange(mymean) %>%
  head(10) %>% select(county, school, mymean)
myCASchools
