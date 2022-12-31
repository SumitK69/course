#Question 1

evennumbers <- c()
i=1
while (length(evennumbers)<16) {
  if(i%%2==0){
    append(evennumbers,i) -> evennumbers
  }
  i=i+1
}

matrix(data = evennumbers, nrow = 4, ncol = 4, byrow = T) ->mat1
mat1

#Question 2

oddnumbers <- c()
i=1
while (length(oddnumbers)<16) {
  if(i%%2!=0){
    append(oddnumbers,i) -> oddnumbers
  }
  i=i+1
}

matrix(data = oddnumbers, nrow = 4, ncol = 4, byrow = T) -> mat2
mat2

#Question 3

matrix(data = 1:64, nrow = 8, ncol = 8, byrow = T) -> mat3
mat3
