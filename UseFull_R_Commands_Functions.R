
help() # Obtain documentation for a given R command
example() #  View some examples on the use of a command
c(), scan() # Enter data manually to a vector in R
seq() #  Make arithmetic progression vector
rep() # Make vector of repeated values
data() # Load (often into a data.frame) built-in dataset
View() # View dataset in a spreadsheet-type format
str() # Display internal structure of an R object
read.csv(), read.table() # Load into a data.frame an existing data file
library(), require() # Make available an R add-on package
dim() # See dimensions (# of rows/cols) of data.frame
length() # Give length of a vector
ls() #Lists memory contents
rm() #Removes an item from memory
names() #Lists names of variables in a data.frame
hist() #Command for producing a histogram
table() # List all values of a variable with frequencies
xtabs() # Cross-tabulation tables using formulas
cut() # Groups values of a variable into larger bins
mean(), median() # Identify “center” of distribution
by() # apply function to a column split by factors
summary() # Display 5-number summary and mean
var(), sd() # Find variance, sd of values in vector
sum() # Add up all values in a vector
quantile() # Find the position of a quantile in a dataset
barplot() #Produces a bar graph
boxplot() Produces a boxplot

# @Author: Anand Rathi 
# @Details: Transpose a data frame 
#           that is rows becomes columns and colnames get replaced by rownames 
# @Input:  Data Frame 
# @Output: Data Frame 
tDF <- function( x ) {
  x.T <- t(x[,2:ncol(x)])
  colnames(x.T) <- x[,1] 
  return(as.data.frame(x.T))
}

# @Author: Anand Rathi 
# @Details: from List of List to data frame 
# @Input:  List of List 
# @Output: Data Frame 
# 
listoflist2df <- function( x ) {
  return(do.call(rbind,lapply(x,data.frame)))
}
