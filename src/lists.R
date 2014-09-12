#***Lists***
#Gather a variety of objects under one name - list
my_vector = c(1:10)
my_matrix = matrix(1:9, ncol=3)
my_df = mtcars[1:10,] #first ten elements of built in data frame
my_list = list(my_vector, my_matrix, my_df)
my_list

#add names to list items
my_list = list(VECTOR = my_vector, MATRIX = my_matrix, DATAFRAME = my_df)
my_list

#select components
my_list[[2]]
my_list[["MATRIX"]]
my_list$MATRIX
