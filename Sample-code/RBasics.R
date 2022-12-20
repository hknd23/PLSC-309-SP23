#: Use this to make comments and annotations. 
# This is a script, the file that contains the code input, which R will use to run through. 

#Basic math operations: 

1+1 
2*2 
3/4
6^9 

#A function is a piece of code that does a specific task 

#calculating a square root
sqrt(49) 

#Print out a sentence
print("Hello World")

#Data can take the following types: 

#Numeric: Real numbers

1.5
2
-4.9999
1/5

#Integers: Whole numbers

3
4
0

#String: Characters, letters, words, sentences. Must be wrapped in " " or ' ' 

"Hello!" 
"Political Science" 
"4"
"A number wrapped in quotations is considered a string" 

#Logical (Boolean): TRUE or FALSE

TRUE
FALSE

#Data are stored in object. You can name an object and then call it. R uses <- to create and assign values to objects

#Single value

Bread<-26
print(Bread)

#A vector is the most basic object that contains data

#Sequence of numbers from 1 to 10

Sequence <- 1:10

#Vector containing a bunch of numbers

Sales <- c(1, 3, 4, 6, 2, 9)

#Vector that contains both string and numbers will convert all to numbers

Books <- c(1,"two","ten", 1.3)

#R objects are indexed, meaning you can call an element by its position with brackets [ ]

print(Sales[2])

#A matrix is a datastructure of m rows and n columns. 

tictactoe<-matrix(1:9, nrow = 3, ncol = 3)
tictactoe[3,2]
tictactoe[1]
#A data frame is constructed from multiple vectors with the same number of elements. It looks like a matrix, but it can have different data types. 
#Data frames are like Excel spreadsheets.

Students<-data.frame(name= c("Bruce", "Clark", "Steve"),
                     height= c(6, 6.2, 5.9),
                     score= c(99, 10, 56))

print(Students)
print(Students$height)
                     


