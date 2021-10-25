# indian_automobile_consumer_buying_behavior

SELECT
  Age,
  Profession,
  Wife_Working,
  Wife_Salary,
  Salary,
  Total_Salary,
  Price,
  House_Loan,
  Personal_loan,
  CASE
    WHEN Personal_loan = TRUE AND House_Loan = TRUE THEN 'both loans'
    WHEN Personal_loan = TRUE
  AND House_Loan = false THEN 'only persoal loan'
    WHEN Personal_loan =false AND House_Loan = TRUE THEN 'only house loan'
  ELSE 'no_loans_taken'
END
  AS loan_taken
FROM
  consumer.buying_behaviour
