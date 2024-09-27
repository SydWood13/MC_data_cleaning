ls()# list all objects in environment
rm()#remove your version in environment. eg. pi <- 0.3
                                              # rm(pi)
save()#eg. dave(x, y, file = "")
load()
setwd("../") ### set the path in quotation marks, the ".." goes to the upper folder
getwd()## display the current working directory
setwd(dir = "./lectures/") ## "." marks the current directory
class() #check the data type
str() # displays class abbreviation and value
integer()## integer is the wrap of as.integer
is.integer()## is.integer() returns TRUE if the argument is an integer
## to force a vaariable to be oof integer tyoe, we have to explicitly state
str()#structure?
?logical ?complex()
y&x #and
y|x #or
paste()# when using it, you can use sep"" to determine the space between the character, specificly for paste() not for paste0()
x <- 8
paste0()
NaN(not a number)
NA(not available)
rep()##repeat
rep(c(1, 2, 3), each = 2) ## repeat it two timws

na.rm = TRUE