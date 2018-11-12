# ***** QUESTION 1 ***** #


#Question 1a
seq(-10,10)

#Answer 1a
#[1] -10  -9  -8  -7  -6  -5  -4  -3  -2  -1   0   1   2   3   4   5   6   7   8   9  10

#Question 1b
seq(1,10)^2

#Answer 1b
# [1]   1   4   9  16  25  36  49  64  81 100

#Question 1c
sum(seq(10,10))

#Answer 1c
# [1] 10

#Question 1c
sum(seq(1,10)^2)

#Answer 1c
# [1] 385

#Question 1d
sum(sum(seq(10,10)), sum(seq(1,10)^2))

#Answer 1d
# [1] 395


# ***** QUESTION 2 ***** #


#Question 2 Method 1
vec1 <- length(c(1,2,3,4,5))
vec2 <- length(c(6,7,8,9,10))
sum(vec1,vec2)

#Question 2 Method 2
vec1 <- c(1,2,3,4,5)
vec2 <- c(6,7,8,9,10)
sum(length(vec1),length(vec2))

#Answer 2 Both Methods
#[1] 10


# ***** QUESTION 3 ***** #


#Answer 3a
Inf*0

#Answer 3b
# NA means not available, NaN means not a number. NA means empty where a vector of a certain length doesn't have a value populated for any element(s).

#Question 3c
x <- c(12:4)
y <- c(0,1,2,0,1,2,0,1,2)
which(!is.finite(x/y))

#Answer 3c
#[1] 1 4 7
#these are the position of the elements of the resulting divided vector that is NaN (in the cases where division by 0 occured)


# ***** QUESTION 4 ***** #


#Question 4a
length(colors())

#Answer 4a
# [1] 657

#Question 4b
length(which(nchar(colors()) > 8))

#Answer 4b
# [1] 290


# ***** QUESTION 5 ***** #


#Question 5
vec5 <- c(3,4,3,1,0,3,3,-3,0,8,9)
length(vec5)
i = 1
for (i in 1:length(vec5)) {
  if vec5[i]==3 {
  elements[i] <- c([i])
  i = i + 1
  }}
elements

#Answer 5
# [1]  TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE FALSE FALSE FALSE FALSE


# ***** QUESTION 6 ***** #


#Question 6a
install.packages("lubridate")
x_6a <- seq(as.Date("2016-01-01"), as.Date ("2016-12-31"), "days")
odd <- subset(x_6a, mday(x) %%2 != 0)
print(odd)
odd_saturday <- subset(odd, wday(odd)==7) #saturday is 7th day of week according to this function
odd_saturday

#Answer 6a
# [1] "2016-01-09" "2016-01-23" "2016-02-13" "2016-02-27" "2016-03-05" "2016-03-19"
# [7] "2016-04-09" "2016-04-23" "2016-05-07" "2016-05-21" "2016-06-11" "2016-06-25"
# [13] "2016-07-09" "2016-07-23" "2016-08-13" "2016-08-27" "2016-09-03" "2016-09-17"
# [19] "2016-10-01" "2016-10-15" "2016-10-29" "2016-11-05" "2016-11-19" "2016-12-03"
# [25] "2016-12-17" "2016-12-31"

#Question 6b 
x_6b <- seq(as.Date("1950-01-01"), as.Date ("2050-12-31"), "days")
nov <- subset(x_6b,month(x_6b) == 11) #filter for november
thurs <- subset(nov, wday(nov)==5) #thursday is 5th day of week
thanksgiving <- thurs[seq(length(thurs), 4)] #every 4th thursday in nov (aka thanksgiving)
thanksgiving_rossi <- subset(thanksgiving, mday(thanksgiving) == 25) #prof rossi's b-day date
substr(thanksgiving_rossi, 1, 4) #the list of years where 11/25 is thanksgiving

#Answer 6b
# [1] "2049" "2038" "2032" "2027" "2021" "2010" "2004" "1999" "1993" "1982" "1976" "1971"
# [13] "1965" "1954"

#Question 6c
x_6c <- seq(as.Date("2018-11-01"), by = "3 months", length.out = 13)
x_6c

#Answer 6c
# [1] "2018-11-01" "2019-02-01" "2019-05-01" "2019-08-01" "2019-11-01" "2020-02-01"
# [7] "2020-05-01" "2020-08-01" "2020-11-01" "2021-02-01" "2021-05-01" "2021-08-01"
# [13] "2021-11-01"
