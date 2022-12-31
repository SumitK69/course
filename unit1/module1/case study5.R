#Question 1

if(customer$PaymentMethod[6] == "Electronic check"){
  print("yes,the payment method is electronic check")
}

#Question 2

if(customer$Contract[12]=="Month-to-month"){
  print("the contract is on month to month basis")
}else if(customer$Contract[12]=="One year"){
  print("the contract is on a yearly basis")
}else if(customer$Contract[12]=="Two year"){
  print("the contract is on two-year basis")
}

#Question 3

switch (customer$gender[6],
  "Male" = customer$MonthlyCharges[6] * 0.8,
  "Female" = customer$MonthlyCharges[6] * 0.5
)->customer$MonthlyCharges[6]

#Question 4

count=0
for(i in 1:nrow(customer)){
  if(customer$InternetService[i]=="DSL"){
    count = count + 1
  }
}
count

tenurecount = 0
i=1
while(i<nrow(customer)){
  if(customer$tenure[i]==2){
    tenurecount = tenurecount + 1
  }
  i=i+1
}
tenurecount
