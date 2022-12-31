#Question 1
mutate(customer,
       Age = ifelse(SeniorCitizen==0,
                   sample(x=16:55),
                   sample(x=56:100)
                   )
       )->customer
View(customer)

#Question 2
mutate(customer,
       Customer_category=ifelse(
         MonthlyCharges<45,
         "low paying",
         ifelse(
           MonthlyCharges<90,
           "medium paying",
           "high paying"
         )
                                )
       )-> customer
View(customer)

#Question 3
mutate(customer,
       security=ifelse(
         OnlineSecurity == "Yes",
         "secure",
         "not secure"
       )
       )->customer
View(customer)
