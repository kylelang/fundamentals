# Q1: Create an object a with value 1
a <- 1

# Q2: Verify that 1 is stored in a
a

# Q3: Square a
a^2

# Q4: Assign a + a to the object b, and check if b is equal to a + a.
b <- a + a
b == a + a

# Q5:
# a. Square b
# b. Multiply the answer by a over b
# c. Assign the result to c 
# d. Take the square root of c to the power b 
# e. Multiply the answer by a over (b to the power 6)
c <- b^2 * (a / b)
sqrt(c^b) * (a / b^6)

# Q6: Round the answer from the previous question to 3 decimal places.
round(sqrt(c^b) * (a / b^6), 3)

# OR

d <- sqrt(c^b) * (a / b^6)
round(d, 3)

# Do you notice that the first solution is shorter, but the second is much more
# insightful? If you share your code, or plan to use it later on, clarity very
# important. A little effort now, saves you hours later.

# Now you know how to use R as a calculator.
